package main

import (
	"crypto/md5"
	"database/sql"
	"fmt"
	"regexp"
	"unicode/utf8"

	"github.com/gin-gonic/gin"
	_ "github.com/mattn/go-sqlite3"
)

// user 定义用户结构体。
type User struct {
	Username string `json:"username"` //用户名
	Password string `json:"password"` //密码hash值
}

// authRequest 定义接收登录数据的结构体。
type authRequest struct {
	Application string `form:"application" json:"application" binding:"required"` //应用名
	Username    string `form:"username" json:"username" binding:"required"`       //用户名
	Password    string `form:"password" json:"password" binding:"required"`       //密码
}

// resetRequest 定义接收修改密码数据的结构体。
type resetRequest struct {
	Application string `form:"application" json:"application" binding:"required"` //应用名
	Username    string `form:"username" json:"username" binding:"required"`       //用户名
	NewPasswd   string `form:"newpasswd" json:"newpasswd" binding:"required"`     //新密码
}

func auth(c *gin.Context) {
	var request authRequest
	var user User
	db := sqlite_conn()
	defer db.Close()

	if err := c.ShouldBindJSON(&request); err != nil {
		fmt.Println("bindjson error: ", err)
		c.JSON(400, gin.H{"code": 400, "msg": "Bind json error!"})
		return
	}
	if request.Application != "web1" && request.Application != "web2" && request.Application != "web3" {
		c.JSON(400, gin.H{"code": 400, "msg": "Application error!"})
		return
	}

	if !checkUsername(request.Username) {
		c.JSON(400, gin.H{"code": 400, "msg": "Username format error!"})
		return
	}

	sql := "SELECT username,password FROM %s WHERE username = ? LIMIT 1;"
	row := db.QueryRow(fmt.Sprintf(sql, request.Application), request.Username)
	err := row.Scan(&user.Username, &user.Password)
	if err != nil {
		fmt.Println("scan error", err)
	}

	hashedPassword := MD5(request.Password)

	if hashedPassword != user.Password {
		fmt.Printf("[%s] [%s] login error!\n", request.Application, user.Username)
		c.JSON(200, gin.H{"code": 400, "msg": "Login error!"})
		return
	}

	session, _ := Store.Get(c.Request, "GOSESSID")
	user.Password = ""

	session.Values["user"] = user

	err = session.Save(c.Request, c.Writer)
	if err != nil {
		fmt.Println("can not save session:", err)
		c.JSON(400, gin.H{"code": 400, "msg": "Save GOSESSID error"})
		return
	}

	fmt.Printf("[%s] [%s] login success!\n", request.Application, user.Username)
	c.JSON(200, gin.H{"code": 200, "msg": "Login success!"})
}

func reset(c *gin.Context) {
	var request resetRequest
	var user User
	db := sqlite_conn()
	defer db.Close()

	if err := c.ShouldBindJSON(&request); err != nil {
		fmt.Println("bindjson error: ", err)
		c.JSON(400, gin.H{"code": 400, "msg": "Bind json error!"})
		return
	}

	session, _ := Store.Get(c.Request, "GOSESSID")
	user = session.Values["user"].(User)

	if request.NewPasswd != "" {
		//限制密码长度1到20位
		if !checkPassword(request.NewPasswd) {
			c.JSON(400, gin.H{"code": 400, "msg": "Password format error!"})
			return
		}
		//修改密码
		newPasswdHash := MD5(request.NewPasswd)
		sql := "UPDATE %s SET password = ? where username = ?;"
		_, err := db.Exec(fmt.Sprintf(sql, request.Application), newPasswdHash, user.Username)
		if err != nil {
			fmt.Println("update info error: ", err)
			c.JSON(400, gin.H{"code": 400, "msg": "Update info error!"})
			return
		}
		fmt.Printf("[%s] [%s] change password successfully\n", request.Application, user.Username)
	}

	session.Values["user"] = user
	err := session.Save(c.Request, c.Writer)
	if err != nil {
		fmt.Println("can not save session:", err)
		c.JSON(400, gin.H{"code": 400, "msg": "Save GOSESSID error"})
		return
	}

	if request.NewPasswd == "" {
		c.JSON(400, gin.H{"code": 400, "msg": "Nothing to be update!"})
		return
	}
	c.JSON(200, gin.H{"code": 200, "msg": "Update password success!"})
}

func sqlite_conn() *sql.DB {
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

func bMD5(str []byte) string {
	has := md5.Sum(str)
	md5_str := fmt.Sprintf("%x", has)
	return md5_str
}

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
