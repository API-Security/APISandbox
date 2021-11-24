package api

import (
	"encoding/gob"
	"fmt"
	"os"

	"github.com/gorilla/sessions"
)

//sessions存储于文件系统
var (
	Store     *sessions.FilesystemStore
	SecretKey = []byte("0waspApiTop10")
)

func init() {
	err := os.MkdirAll("sessions", 0755)
	if err != nil {
		fmt.Println("create sessions dir error:", err)
	}
	Store = sessions.NewFilesystemStore("sessions", SecretKey)

	Store.Options = &sessions.Options{
		MaxAge: 24 * 60 * 60, //1 day
	}
	gob.Register(User{})
}
