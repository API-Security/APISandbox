/*
4A系统：认证Authentication、授权Authorization、账号Account、审计Audit
*/
package main

import (
	"encoding/gob"
	"fmt"
	"os"
	"os/signal"
	"syscall"

	"github.com/gin-gonic/gin"
	"github.com/gorilla/securecookie"
	"github.com/gorilla/sessions"
)

var Store *sessions.FilesystemStore

// 初始化
func init() {
	err := os.MkdirAll("sessions", 0755)
	if err != nil {
		fmt.Println("create sessions dir error:", err)
	}
	Store = sessions.NewFilesystemStore("sessions", securecookie.GenerateRandomKey(32))

	Store.Options = &sessions.Options{
		MaxAge: 24 * 60 * 60, //1 day
	}
	gob.Register(User{})

	if _, err := os.Stat("sql.db"); os.IsNotExist(err) {
		fmt.Println("sql.db does not exist!")
		db := sqlite_conn()
		defer db.Close()
		fmt.Println("create sql.db success!")
		init_sql := `
		-- ----------------------------
		-- Table structure for web1
		-- ----------------------------
		DROP TABLE IF EXISTS "web1";
		CREATE TABLE "web1" (
		  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
		  "username" TEXT NOT NULL,
		  "password" TEXT NOT NULL
		);
		
		-- ----------------------------
		-- Records of web1
		-- ----------------------------
		BEGIN;
		INSERT INTO "web1" VALUES (1, 'admin', '7fef6171469e80d32c0559f88b377245');
		-- Username: admin
		-- Password: admin888
		COMMIT;
		
		-- ----------------------------
		-- Table structure for web2
		-- ----------------------------
		DROP TABLE IF EXISTS "web2";
		CREATE TABLE "web2" (
		  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
		  "username" TEXT NOT NULL,
		  "password" TEXT NOT NULL
		);
		
		-- ----------------------------
		-- Records of web2
		-- ----------------------------
		BEGIN;
		INSERT INTO "web2" VALUES (1, 'admin', '%s');
		COMMIT;
		
		-- ----------------------------
		-- Table structure for web3
		-- ----------------------------
		DROP TABLE IF EXISTS "web3";
		CREATE TABLE "web3" (
		  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
		  "username" TEXT NOT NULL,
		  "password" TEXT NOT NULL
		);
		
		-- ----------------------------
		-- Records of web3
		-- ----------------------------
		BEGIN;
		INSERT INTO "web3" VALUES (1, 'admin', '%s');
		COMMIT;
		`
		passwd2 := bMD5(securecookie.GenerateRandomKey(32))
		passwd3 := bMD5(securecookie.GenerateRandomKey(32))
		msg := `
		####################################################
		##  web1: admin/admin888                          ##
		##  web2: admin/%s  ## 
		##  web3: admin/%s  ##
		####################################################
		`
		fmt.Printf(msg, passwd2, passwd3)
		_, err = db.Exec(fmt.Sprintf(init_sql, MD5(passwd2), MD5(passwd3)))
		if err != nil {
			fmt.Println("db init error:", err)
		}
	} else {
		fmt.Println("sql.db already exist!")
		return
	}
}

func main() {
	r := gin.New()
	r.Use(cors())
	api := r.Group("/api/v1")
	api.POST("/sys_authenticate", auth)

	authed := api.Group("")
	authed.POST("/sys_passwdreset", reset)
	authed.Use(authRequired())

	c := make(chan os.Signal)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGINT, syscall.SIGTERM, syscall.SIGQUIT)
	go func() {
		for s := range c {
			switch s {
			case syscall.SIGHUP, syscall.SIGINT, syscall.SIGTERM, syscall.SIGQUIT:
				fmt.Println("[EXIT] Exit by", s)
				os.Exit(0)
			default:
				fmt.Println("[EXIT] ", s)
				os.Exit(0)
			}
		}
	}()
	if err := r.Run(); err != nil {
		fmt.Printf("startup service failed, err:%v\n", err)
	}
	r.Run(":8080")
}

func authRequired() gin.HandlerFunc {
	return func(c *gin.Context) {
		session, err := Store.Get(c.Request, "GOSESSID")
		if err != nil {
			c.JSON(200, gin.H{"code": 400, "msg": "Get GOSESSID error"})
			c.Abort()
			return
		}
		_, ok := session.Values["user"].(User)
		if !ok {
			c.JSON(200, gin.H{"code": 400, "msg": "No Session"})
			c.Abort()
			return
		}
		c.Next()
	}
}

func cors() gin.HandlerFunc {
	return func(c *gin.Context) {
		method := c.Request.Method
		c.Header("Access-Control-Allow-Origin", "*")
		c.Header("Access-Control-Allow-Headers", "Content-Category, AccessToken, X-CSRF-Token, Authorization, Token, Content-Type")
		c.Header("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PATCH, DELETE")
		c.Header("Access-Control-Expose-Headers", "Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Content-Category")
		c.Header("Access-Control-Allow-Credentials", "true")
		//放行所有OPTIONS方法
		if method == "OPTIONS" {
			c.AbortWithStatus(204)
		}
		// 处理请求
		c.Next()
	}
}
