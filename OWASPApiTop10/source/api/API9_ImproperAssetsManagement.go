package api

import (
	"os"

	"github.com/gin-gonic/gin"
)

func GetEnv(c *gin.Context) {
	var env []string
	env = append(env, os.Environ()...)
	c.JSON(200, gin.H{"code": 200, "data": env})
}

func GetEnv2(c *gin.Context) {
	c.JSON(403, gin.H{"code": 403, "msg": "It's a Forbidden API in /v2 ."})
}
