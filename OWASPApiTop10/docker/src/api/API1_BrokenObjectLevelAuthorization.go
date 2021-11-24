package api

import (
	"github.com/gin-gonic/gin"
)

// infoResponse 定义返回用户信息结构体。
type infoResponse struct {
	ID       int    `json:"id"`       //用户id，唯一，自增
	Token    string `json:"token"`    //用户token，唯一
	Username string `json:"username"` //用户名，唯一
	Email    string `json:"email"`    //邮箱，唯一
	Admin    int    `json:"admin"`    //0：普通用户，1：管理员，默认为0
}

// GetInfoByUserID 获取指定ID用户的信息。
func GetInfoByUserID(c *gin.Context) {
	var info infoResponse
	db := SqliteConn()
	defer db.Close()

	id := c.Params.ByName("id")
	if id == "" {
		c.JSON(400, gin.H{"code": 400, "msg": "Need id!"})
		return
	}
	if !CheckID(id) {
		c.JSON(400, gin.H{"code": 400, "msg": "Format error!"})
		return
	}
	sql := "SELECT id,token,username,email,admin FROM user WHERE id = ? LIMIT 1;"
	row := db.QueryRow(sql, id)
	err := row.Scan(&info.ID, &info.Token, &info.Username, &info.Email, &info.Admin)
	if err != nil {
		c.JSON(400, gin.H{"code": 400, "msg": "ID error!"})
		return
	}
	c.JSON(200, gin.H{"code": 200, "data": info})
}
