package api

import (
	"crypto/md5"
	"crypto/rand"
	"database/sql"
	"fmt"
	"io"
	"regexp"
	"unicode/utf8"

	"github.com/gin-gonic/gin"
)

func SqliteConn() *sql.DB {
	db, err := sql.Open("sqlite3", "sql.db")
	if err != nil {
		fmt.Println(err)
	}
	return db
}

func MD5(str string) string {
	data := []byte(str)
	has := md5.Sum(data)
	md5_str := fmt.Sprintf("%x", has)
	return md5_str
}

// Random 生成随机数。
func Random() []byte {
	b := make([]byte, 32)
	//ReadFull从rand.Reader精确地读取len(b)字节数据填充进b
	//rand.Reader是一个全局、共享的密码用强随机数生成器
	if _, err := io.ReadFull(rand.Reader, b); err != nil {
		fmt.Printf("random number generation error: %v", err)
	}
	return b
}

// Token 生成随机token。
func Token() string {
	b := Random()[:16]
	return fmt.Sprintf("%x", b)
}

// func bMD5(str []byte) string {
// 	has := md5.Sum(str)
// 	md5_str := fmt.Sprintf("%x", has)
// 	return md5_str
// }

// checkUsername 验证用户名是否符合中文数字字母下划线横杠，长度1到20位，返回true或false
func checkUsername(username string) bool {
	if !(utf8.RuneCountInString(username) > 0) || !(utf8.RuneCountInString(username) < 21) {
		return false
	}
	pattern := `^[-\w\p{Han}]+$`
	reg := regexp.MustCompile(pattern)
	return reg.MatchString(username)
}

// checkPassword 验证密码是否符合长度1到20位，返回true或false
func checkPassword(password string) bool {
	if !(utf8.RuneCountInString(password) > 0) || !(utf8.RuneCountInString(password) < 21) {
		return false
	}
	return true
}

// checkEmail 验证是否符合邮箱格式，返回true或false
func checkEmail(email string) bool {
	pattern := `^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$`
	reg := regexp.MustCompile(pattern)
	return reg.MatchString(email)
}

// isNameExisted 判断用户名是否已经被占用，被占用返回true，未被占用则返回false
func isNameExisted(user User, username string) bool {
	db := SqliteConn()
	defer db.Close()
	sql_str := "SELECT username FROM user WHERE username = ? LIMIT 1;"
	err := db.QueryRow(sql_str, username).Scan(&user.Username)
	if err != nil {
		//数据库没有该用户名时，返回sql.ErrNoRows错误，即没有占用
		if err != sql.ErrNoRows {
			//发生了一些真正的错误
			fmt.Println("an error occurred in the judgment process: ", err)
		}
		return false
	}
	//返回err为空时，则说明数据库存在该用户名，即用户名被占用
	return true
}

// isEmailExisted 判断邮箱是否已经被占用，被占用返回true，未被占用则返回false
func isEmailExisted(user User, email string) bool {
	db := SqliteConn()
	defer db.Close()
	sql_str := "SELECT email FROM user WHERE email = ? LIMIT 1;"
	err := db.QueryRow(sql_str, email).Scan(&user.Email)
	if err != nil {
		// 数据库没有该邮箱时，返回sql.ErrNoRows错误，即没有占用
		if err != sql.ErrNoRows {
			// 发生了一些真正的错误
			fmt.Println("an error occurred in the judgment process: ", err)
		}
		return false
	}
	// 返回err为空时，则说明数据库存在该邮箱，即邮箱被占用
	return true
}

// CheckID 验证id是否为非负正整数。
func CheckID(id string) bool {
	pattern := `^[1-9]\d*$`
	reg := regexp.MustCompile(pattern)
	return reg.MatchString(id)
}

// userAuthRequired 用于普通用户权限控制的中间件
func UserAuthRequired() gin.HandlerFunc {
	return func(c *gin.Context) {
		var user User

		session, err := Store.Get(c.Request, "GOSESSID")
		if err != nil {
			c.JSON(200, gin.H{"code": 400, "msg": "Get GOSESSID error"})
			c.Abort()
			return
		}

		user, ok := session.Values["user"].(User)
		if !ok {
			c.JSON(200, gin.H{"code": 400, "msg": "No session"})
			c.Abort()
			return
		}

		if user.Admin != 0 && user.Admin != 1 {
			c.JSON(200, gin.H{"code": 400, "msg": "Unauthorized access!"})
			c.Abort()
			return
		}

		c.Next()
	}
}

// adminAuthRequired 用于管理员用户权限控制的中间件
func AdminAuthRequired() gin.HandlerFunc {
	return func(c *gin.Context) {
		var user User

		session, err := Store.Get(c.Request, "GOSESSID")
		if err != nil {
			c.JSON(200, gin.H{"code": 400, "msg": "Get GOSESSID error"})
			c.Abort()
			return
		}

		user, ok := session.Values["user"].(User)
		if !ok {
			c.JSON(200, gin.H{"code": 400, "msg": "No session"})
			c.Abort()
			return
		}

		if user.Admin != 1 {
			c.JSON(200, gin.H{"code": 400, "msg": "Unauthorized access!"})
			c.Abort()
			return
		}

		c.Next()
	}
}
