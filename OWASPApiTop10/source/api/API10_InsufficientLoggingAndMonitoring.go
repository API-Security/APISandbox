package api

import (
	"github.com/gin-gonic/gin"
)

func WithoutLog(c *gin.Context) {
	c.JSON(200, gin.H{"code": 200, "msg": "APIs are not configured for monitoring, logging and raising alerts When the attack occurs."})
}
