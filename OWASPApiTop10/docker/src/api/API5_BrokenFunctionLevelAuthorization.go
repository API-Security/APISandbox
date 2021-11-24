package api

import (
	"fmt"

	"github.com/gin-gonic/gin"
)

// profilesResponse 定义返回用户信息结构体。
type profilesResponse struct {
	ID       int    `json:"id"`       //用户id，唯一，自增
	Token    string `json:"token"`    //用户token，唯一
	Username string `json:"username"` //用户名，唯一
	Email    string `json:"email"`    //邮箱，唯一
	Admin    int    `json:"admin"`    //0：普通用户，1：管理员，默认为0
}

// GetUserProfile 获取当前用户信息。
func GetUserProfile(c *gin.Context) {
	db := SqliteConn()
	defer db.Close()
	var profile profilesResponse

	// 默认在此之前已经通过了中间件的session权限验证
	session, _ := Store.Get(c.Request, "GOSESSID")
	user := session.Values["user"].(User)

	sql := "SELECT id,token,username,email,admin FROM user WHERE id = ? LIMIT 1;"
	row := db.QueryRow(sql, user.ID)
	err := row.Scan(&profile.ID, &profile.Token, &profile.Username, &profile.Email, &profile.Admin)
	if err != nil {
		c.JSON(400, gin.H{"code": 400, "msg": "query error!"})
		return
	}
	c.JSON(200, gin.H{"code": 200, "data": profile})
}

// GetUserProfiles 获取所有用户信息。
func GetUserProfiles(c *gin.Context) {
	db := SqliteConn()
	defer db.Close()

	sql := "SELECT id,token,username,email,admin FROM user;"
	row, err := db.Query(sql)
	if err != nil {
		fmt.Println(err.Error())
		c.JSON(400, gin.H{"code": 400, "msg": "query error!"})
		return
	}
	var profilesResponseSlice []profilesResponse
	for row.Next() {
		var profile profilesResponse
		err := row.Scan(&profile.ID, &profile.Token, &profile.Username, &profile.Email, &profile.Admin)
		if err != nil {
			fmt.Println(err.Error())
			c.JSON(400, gin.H{"code": 400, "msg": "scan error!"})
			return
		}
		profilesResponseSlice = append(profilesResponseSlice, profile)
	}
	c.JSON(200, gin.H{"code": 200, "data": profilesResponseSlice})
}
