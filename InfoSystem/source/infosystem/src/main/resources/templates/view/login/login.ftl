<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台管理系统登录</title>
    <meta name="keyword" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="Author" content="zifan">
    <meta name="copyright" content="All Rights Reserved">
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-top: 13%;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        }

        .form-signin input[type="text"], .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

        .login-error {
            color: #C7254E;
            font-size: 90%;
            display: block;
            white-space: nowrap;
        }
    </style>

    <#--    <script src="${ctx}/static/bootstrap/js/html5shiv.js"></script>-->
    <#--    <script src="${ctx}/static/bootstrap/js/respond.min.js"></script>-->
    <script type='text/javascript' src="/static/js/jquery-2.1.1.js"></script>
    <script type='text/javascript' src="/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/js/md5.js"></script>

    <script>
        function login() {
            let password = $('#password')
            password.val(hex_md5(password.val()))

            $.ajax({
                url: "/admin/externalLogin",
                type: "POST",
                dataType: "json",
                data: $('#userForm').serialize(),
                success: function (result) {
                    let responseJSON = JSON.stringify(result);
                    let response = eval("(" + responseJSON + ")");

                    let isLogin = response.login
                    console.log(isLogin)
                    if (!isLogin) {
                        $('#errorMsg').html('登陆失败，请重试')
                    } else {
                        // login success
                        self.location = "/admin/console/main"
                    }
                },
                error: function () {
                    alert("false")
                }
            });
        }
    </script>
</head>

<body>

<div class="container">
    <form action="##" class="form-signin" id="userForm" method="POST">
        <h3 class="form-signin-heading">请登录</h3>
        <input type="text" class="form-control input-block-level" id="username" name="username" placeholder="用户">
        <input type="password" class="form-control input-block-level" id="password" name="password" value="" placeholder="密码">

        <p id="errorMsg" style="font-size: small; color: red"></p>

        <button class="btn btn-large btn-primary" type="button" onclick="login()">登录</button>
        </br>
        </br>
    </form>
</div>
</body>
</html>
