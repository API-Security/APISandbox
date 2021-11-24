package main

import (
	"fmt"
	"os"
	"os/signal"
	"owaspapitop10/api"
	"syscall"

	"github.com/gorilla/sessions"
)

var Store *sessions.FilesystemStore

// 初始化
func init() {
	if _, err := os.Stat("sql.db"); os.IsNotExist(err) {
		fmt.Println("sql.db does not exist!")
		db := api.SqliteConn()
		defer db.Close()
		fmt.Println("create sql.db success!")
		init_sql := `
		-- ----------------------------
		-- Table structure for user
		-- ----------------------------
		DROP TABLE IF EXISTS "user";
		CREATE TABLE "user" (
		"id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
		"token" TEXT NOT NULL,
		"username" TEXT NOT NULL,
		"password" TEXT NOT NULL,
		"email" TEXT NOT NULL,
		"admin" TEXT NOT NULL DEFAULT 0
		);

		-- ----------------------------
		-- Records of user
		-- ----------------------------
		BEGIN;
		INSERT INTO "user" VALUES (1, '786f498961b033e9e1100685f97411b9', 'admin', '57ba172a6be125cca2f449826f9980ca', 'admin@owaspapitop10.com', '1');
		INSERT INTO "user" VALUES (2, 'ec98f331b218fbc1ccd1e017e905e40f', 'test1', '5a105e8b9d40e1329780d62ea2265d8a', 'test1@test.com', '0');
		INSERT INTO "user" VALUES (3, '557fe6faaa723fcd05bfe167e1a6c6d5', 'test2', 'ad0234829205b9033196ba818f7a872b', 'test2@test.com', '0');
		INSERT INTO "user" VALUES (4, 'e46b34892b1f4d909e4672bedc8db4f3', 'test3', '8ad8757baa8564dc136c1e07507f4a98', 'test3@test.com', '0');
		COMMIT;

		PRAGMA foreign_keys = true;
		`
		_, err = db.Exec(init_sql)
		if err != nil {
			fmt.Println("db init error:", err)
		}
	} else {
		fmt.Println("sql.db already exist!")
		return
	}
}

func main() {
	// gin.SetMode(gin.ReleaseMode)
	r := SetupAPI()

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
