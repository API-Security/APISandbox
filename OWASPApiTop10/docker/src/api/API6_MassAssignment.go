package api

import (
	"errors"
	"fmt"

	"github.com/gin-gonic/gin"
	_ "github.com/mattn/go-sqlite3"
)

// registerRequest 定义接收注册数据的结构体。
type registerRequest struct {
	Username string `form:"username" json:"username" binding:"required"`
	Password string `form:"password" json:"password" binding:"required"`
	Email    string `form:"email" json:"email" binding:"required"`
	Admin    string `form:"admin" json:"admin"`
}

// Register 实现用户注册
func Register(c *gin.Context) {
	var request registerRequest
	var user User
	db := SqliteConn()
	defer db.Close()

	//用ShouldBindJSON解析绑定传入的Json数据。
	if err := c.ShouldBindJSON(&request); err != nil {
		fmt.Println("bindjson error: ", err)
		c.JSON(400, gin.H{"code": 400, "msg": "Bind json error!"})
		return
	}

	//限制传入用户名为中文、数字、大小写字母下划线和横杠，1到10位
	if !checkUsername(request.Username) {
		c.JSON(400, gin.H{"code": 400, "msg": "Username format error!"})
		return
	}
	//限制密码长度6到20位
	if !checkPassword(request.Password) {
		c.JSON(400, gin.H{"code": 400, "msg": "Password format error!"})
		return
	}
	//限制传入邮箱符合格式
	if !checkEmail(request.Email) {
		c.JSON(400, gin.H{"code": 400, "msg": "Email format error!"})
		return
	}
	//判断用户名是否已被使用
	if isNameExisted(user, request.Username) {
		c.JSON(200, gin.H{"code": 1000, "msg": "Username has already been used!"})
		return
	}
	//判断邮箱是否已被使用
	if isEmailExisted(user, request.Email) {
		c.JSON(200, gin.H{"code": 1001, "msg": "Email has already been used!"})
		return
	}
	//向数据库插入用户
	sql1 := "INSERT INTO user (token,username,password,email,admin) VALUES (?,?,?,?,?);"
	res1, err1 := db.Exec(sql1, Token(), request.Username, MD5(request.Password), request.Email, func() int{if request.Admin=="true"{return 1}else{return 0}}())
	if err1 != nil {
		fmt.Println("register insert error: ", err1)
		c.JSON(400, gin.H{"code": 400, "msg": "Register error!"})
		return
	}
	affected1, _ := res1.RowsAffected()
	if affected1 == 0 {
		err := errors.New("0 rows affected")
		fmt.Println("register insert error: ", err)
		c.JSON(400, gin.H{"code": 400, "msg": "Register error!"})
		return
	}
	fmt.Println("[" + request.Username + "]" + " register success!")
	c.JSON(200, gin.H{"code": 200, "msg": "Register success!"})
}
