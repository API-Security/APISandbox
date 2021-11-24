package api

import (
	"fmt"

	"github.com/gin-gonic/gin"
)

// emailResponse 定义返回用户信息结构体。
type emailResponse struct {
	ID    int    `json:"id"`    //用户id，唯一，自增
	Email string `json:"email"` //邮箱，唯一
}

// GetUserEmail 获取邮箱信息。
func GetUserEmail(c *gin.Context) {
	db := SqliteConn()
	defer db.Close()

	sql := "SELECT id,email FROM user;"
	row, err := db.Query(sql)
	if err != nil {
		fmt.Println(err.Error())
		c.JSON(400, gin.H{"code": 400, "msg": "query error!"})
		return
	}
	var emailResponseSlice []emailResponse
	for row.Next() {
		var email emailResponse
		err := row.Scan(&email.ID, &email.Email)
		if err != nil {
			fmt.Println(err.Error())
			c.JSON(400, gin.H{"code": 400, "msg": "scan error!"})
			return
		}
		emailResponseSlice = append(emailResponseSlice, email)
	}

	c.JSON(200, gin.H{"code": 200, "data": emailResponseSlice})
}
