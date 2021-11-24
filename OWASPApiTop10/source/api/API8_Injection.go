package api

import (
	"fmt"

	"github.com/gin-gonic/gin"
	_ "github.com/mattn/go-sqlite3"
)

// user 定义用户结构体。
type User struct {
	ID       int    `json:"id"`       //用户id，唯一，自增
	Token    string `json:"token"`    //用户token，唯一
	Username string `json:"username"` //用户名，唯一
	Password string `json:"password"` //用户密码md5值，md5(原密码）
	Email    string `json:"email"`    //邮箱，唯一
	Admin    int    `json:"admin"`    //0：普通用户，1：管理员，默认为0
}

// loginRequest 定义接收登录数据的结构体。
type loginRequest struct {
	Username string `form:"username" json:"username" binding:"required"`
	Password string `form:"password" json:"password" binding:"required"`
}

// Login 用户名登录
func Login(c *gin.Context) {
	var request loginRequest
	var user User
	db := SqliteConn()
	defer db.Close()

	//用ShouldBindJSON解析绑定传入的Json数据。
	if err := c.ShouldBindJSON(&request); err != nil {
		fmt.Println("bindjson error: ", err)
		c.JSON(400, gin.H{"code": 400, "msg": "Bind json error!"})
		return
	}

	//查询数据
	sql_str := "SELECT * FROM user WHERE username = '%s' LIMIT 1;"
	// fmt.Printf(sql_str+"\n", request.Username)
	row := db.QueryRow(fmt.Sprintf(sql_str, request.Username))
	err := row.Scan(&user.ID, &user.Token, &user.Username, &user.Password, &user.Email, &user.Admin)
	if err != nil {
		fmt.Println("scan error", err)
	}
	// fmt.Println(user)

	//password进行md5加密
	hashedPassword := MD5(request.Password)
	//判断密码是否正确
	if hashedPassword != user.Password {
		fmt.Printf("[%s] login error!\n", user.Username)
		c.JSON(200, gin.H{"code": 400, "msg": "Login error!"})
		return
	}
	// 至此，身份认证完成

	// 设置session
	session, _ := Store.Get(c.Request, "GOSESSID")
	user.Password = ""

	session.Values["user"] = user

	err = session.Save(c.Request, c.Writer)
	if err != nil {
		fmt.Println("can not save session:", err)
		c.JSON(400, gin.H{"code": 400, "msg": "Save GOSESSID error"})
		return
	}

	fmt.Println("[" + request.Username + "]" + " login success!")
	c.JSON(200, gin.H{"code": 200, "username": user.Username, "msg": "Login success!"})
}

// Logout 实现用户注销登陆
func Logout(c *gin.Context) {
	var user User

	session, err := Store.Get(c.Request, "GOSESSID")
	if err != nil {
		c.JSON(400, gin.H{"code": 400, "msg": "Get GOSESSID error"})
		return
	}
	user, ok := session.Values["user"].(User)
	if !ok {
		c.JSON(400, gin.H{"code": 400, "msg": "No session"})
		return
	}

	session.Options.MaxAge = -1
	err = session.Save(c.Request, c.Writer)
	if err != nil {
		fmt.Println("can not save session:", err)
		c.JSON(400, gin.H{"code": 400, "msg": "Save GOSESSID error"})
		return
	}

	fmt.Printf("[%s] logout success!\n", user.Username)
	c.JSON(200, gin.H{"code": 200, "msg": "Logout success!"})
}
