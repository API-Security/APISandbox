<?php
session_start();
if(!isset($_GET['action'])){
    die();
}
$action = $_GET['action'];

$loginapi = "http://4asystem:8080/api/v1/sys_authenticate";
$resetapi = "http://4asystem:8080/api/v1/sys_passwdreset";

if($action==='login' && $_POST['username'] && $_POST['password']){
    $username = $_POST['username'];
    $password = $_POST['password'];
    if(Login($loginapi,$username, $password)!==null){
        echo 'success';//
    }else{
        echo 'fail';
    }
}
elseif($action==='changepass' && isset($_SESSION['auth'])){
    if(isset($_POST['username'])  && isset($_POST['oldpassword']) && isset($_POST['newpassword'])){
        $username    = $_POST['username'];
        $oldpassword    = $_POST['oldpassword'];
        $newpassword = $_POST['newpassword'];
        echo ChangePass($loginapi,$resetapi, $username, $oldpassword, $newpassword);
    }
}else{
    header(500);
    die();
}

// echo Login('http://4asystem:8080/auth',"admin", "web1");
// //echo ChangePass('http://4asystem:8080/auth','http://172.16.0.63:8080/reset',"admin","web2","web1");
function Login($url, $username, $password){
    $data = array(
        'username'    => $username,
        'password'    => $password,
        'application' => 'web1'
    );
    $curl = curl_init(); // 启动一个CURL会话
    curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址
    curl_setopt($curl, CURLOPT_POST, 1);             // 发送一个常规的Post请求
    curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));   // Post提交的数据包x
    curl_setopt($curl, CURLOPT_TIMEOUT, 30);         // 设置超时限制 防止死循环
    curl_setopt($curl, CURLOPT_HEADER, 1);           // 显示返回的Header区域内容
    curl_setopt($curl, CURLOPT_HTTPHEADER, array("Content-Type: application/json"));//设置请求头
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);   // 获取的信息以文件流的形式返回

    $res = curl_exec($curl); // 执行操作
    if(curl_errno($curl)) {
        header(500);//捕捉异常
    }
    $header_size = curl_getinfo($curl, CURLINFO_HEADER_SIZE);
    curl_close($curl);

    $header = substr($res, 0, $header_size);
    $body = substr($res, $header_size);
    // var_dump($header);
    // var_dump($body);
    if(preg_match('/200/',$body)){
        preg_match('/GOSESSID=(.*?);/',$header, $cookies);
        $_SESSION['auth'] = $cookies[1];
        return $cookies[1];
    }elseif (preg_match('/400/',$body)){
        return null;
    }
}

function ChangePass($url1, $url, $username, $oldpassword, $newpassword){
    $cookie = Login($url1, $username, $oldpassword);
    //$cookie = "MTYyNzU1NTA5NHxOd3dBTkRaS1VWaFNVMGhZVjFFMFdFZFFTMFZCVWpkTlVrVllOa2hYTlZBM05qVkpTa2MzTWpOT1ZETkNOakpKUWxoU1JrRkRVa0U9fLekjnGbigV2zA4BL9IPyp7Q6lzJ53hzvmB2TnIyBsXp";
    //echo $cookie;
    $data = array(
        'username'    => $username,
        'newpasswd'   => $newpassword,
        'application' => 'web1'
    );
    $curl = curl_init(); // 启动一个CURL会话
    curl_setopt($curl, CURLOPT_URL, $url); // 要访问的地址
    curl_setopt($curl, CURLOPT_POST, 1);             // 发送一个常规的Post请求
    curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));   // Post提交的数据包x
    curl_setopt($curl, CURLOPT_TIMEOUT, 30);         // 设置超时限制 防止死循环
    curl_setopt($curl, CURLOPT_HEADER, 1);           // 显示返回的Header区域内容
    curl_setopt($curl, CURLOPT_HTTPHEADER, array("Content-Type: application/json","Cookie: GOSESSID=$cookie;"));//设置请求头
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);   // 获取的信息以文件流的形式返回

    $res = curl_exec($curl); // 执行操作
    if(curl_errno($curl)) {
        header(500);//捕捉异常
    }
    $header_size = curl_getinfo($curl, CURLINFO_HEADER_SIZE);
    curl_close($curl);

    $header = substr($res, 0, $header_size);
    $body = substr($res, $header_size);
    if(preg_match('/200/',$body)){
        return "success";
    }elseif (preg_match('/400/',$body)){
        return "reset Fail";
    }else{
        return null;
    }
}