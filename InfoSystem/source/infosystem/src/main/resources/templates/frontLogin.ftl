<!DOCTYPE html>
<html lang="zh" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>用户登录</title>
    <meta name="generator" content="Bootply"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="/static/css/bootstrap.css" rel="stylesheet">
    <script type='text/javascript' src="/static/js/jquery-2.1.1.js"></script>
    <script type='text/javascript' src="/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/js/md5.js"></script>
    <style type="text/css">
        .modal-footer {
            border-top: 0px;
        }

        .bpm-auth {
            display: none;
        }
    </style>


    <script>
        // login.loginSubmit = function(){
        //     $('#loginForm')[0].submit();
        // };

        function login() {

            let username = $('#username').val();
            let password = $('#password').val();
            password = hex_md5(password)

            let domain = document.domain;
            // let url = 'http://' + domain + ':8081/admin/externalLogin?username=' + username + '&password=' + password;
            let url = "./admin/externalLogin?username=" + username + "&password=" + password;
            $('#exAuth').append('<iframe id="auth_ifr" name="auth_ifr" src="' + url + '" ></iframe>');


            $('#password').val(hex_md5($('#password').val()))
            $.ajax({
                url: "/home.action",
                type: "POST",
                dataType: "json",
                data: $('#loginForm').serialize(),
                success: function (result) {
                    let responseJSON = JSON.stringify(result);
                    let response = eval("(" + responseJSON + ")");
                    let isLogin = response.login
                    console.log(isLogin)
                    if (!isLogin) {
                        $('#errorMsg').html('登陆失败，请重试')
                    } else {
                        self.location = "/home.page"
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
<!--getUser modal-->
<div id="exAuth" class="bpm-auth"></div>

<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h1 class="text-center">前台登录</h1>
            </div>
            <div class="modal-body">
                <form class="form col-md-12 center-block" method="post" action="##" id="loginForm">
                    <div class="form-group">
                        <input type="text" name="username" class="form-control input-lg" placeholder="用户名"
                               id="username">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control input-lg" placeholder="密码"
                               id="password", value="">
                    </div>
                    <div class="checkbox">
                    </div>
                    <p id="errorMsg" style="font-size: small; color: red"></p>
                    <div class="btn-group pull-right">
                        <button class="reset btn btn-default">重置</button>
                        <button class="submit btn btn-primary" type="button" onclick="login()">登录</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>

</body>


</html>