package main

import (
	"embed"
	"net/http"
	"owaspapitop10/api"

	"github.com/gin-gonic/gin"
)

//go:embed swagger
var swagger embed.FS

func SetupAPI() *gin.Engine {
	r := gin.New()
	r.Use(cors())

	// 静态资源 swagger 部署http服务
	r.Any("/swagger/*filepath", func(c *gin.Context) {
		staticServer := http.FileServer(http.FS(swagger))
		staticServer.ServeHTTP(c.Writer, c.Request)
	})
	// 重定向到 swagger-ui 页面
	r.GET("/", func(c *gin.Context) {
		c.Redirect(http.StatusMovedPermanently, "/swagger/")
	})

	/* API7_SecurityMisconfiguration */
	//配置静态目录
	r.StaticFS("/static", http.Dir("./"))

	routev1 := r.Group("/v1")
	// 公共api，无需登陆即可访问
	publicv1 := routev1.Group("")
	{
		/* API9_ImproperAssetsManagement */
		// 获取环境变量
		publicv1.GET("/getenv", api.GetEnv)

		/* API10_Insufficientloggingandmonitoring */
		// 应用没有记录日志
		publicv1.GET("/evil", api.WithoutLog)
	}

	route := r.Group("/v2")
	// 公共api:v2，无需登陆即可访问
	public := route.Group("")
	{
		/* API8_Injection */
		// 登录
		public.POST("/login", api.Login)
		// 注册
		public.POST("/register", api.Register)

		/* API9_ImproperAssetsManagement */
		// 获取环境变量，v2该接口禁止访问
		public.GET("/getenv", api.GetEnv2)

	}

	// 普通用户api，需要用户登陆且admin=0才能访问
	personal := route.Group("/user")
	personal.Use(api.UserAuthRequired())
	{
		// 注销
		personal.GET("/logout", api.Logout)

		/* API1_BrokenObjectLevelAuthorization */
		// 获取指定ID用户信息
		personal.GET("/getuserinfo/:id", api.GetInfoByUserID)

		/* API3_ExcessiveDataExposure */
		// 获取所有用户Email
		personal.GET("/getuseremail", api.GetUserEmail)

		/* API5_BrokenFunctionLevelAuthorization */
		// 获取当前用户信息
		personal.GET("/getuserprofile", api.GetUserProfile)
		// 获取所有用户信息
		personal.GET("/getuserprofiles", api.GetUserProfiles)
	}

	// 管理者api，需要用户登陆且admin=1才能访问
	manager := route.Group("/admin")
	manager.Use(api.AdminAuthRequired())
	{
		// 创建新题目
		// manager.POST("/challenge", admin.NewChallenge)
	}

	return r
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
