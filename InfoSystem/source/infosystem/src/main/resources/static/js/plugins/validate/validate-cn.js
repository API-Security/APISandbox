/**
 * Created by zifan on 2015/10/16.
 */
$.validator.setDefaults({
    ignore: ":hidden",
    success: function (span) {
      if(span.prev().length!=0){
        if (span.prev().is(":radio") || span.prev().is(":checkbox") || $(span).prev().prop("tagName").toLowerCase() == "select") {
            $(span).addClass("hide")
        }
        else {
            $(span).addClass("success fa fa-check");
        }
      }
    },
    highlight: function (element, errorClass) {
        $(element).addClass("error");
        $(element).parent().find("." + errorClass).removeClass("hide success fa fa-check");
    }
});

jQuery.extend(jQuery.validator.messages, {
    required: "此字段不能为空，请按要求输入内容！",
    remote: "格式错误，请重新输入",
    email: "请输入正确格式的电子邮件",
    url: "请输入合法的网址",
    date: "请输入合法的日期",
    dateISO: "请输入合法的日期 (ISO).",
    number: "请输入合法的数字",
    digits: "只能输入整数",
    creditcard: "请输入合法的信用卡号",
    equalTo: "请再次输入相同的值",
    accept: "请输入拥有合法后缀名的字符串",
    maxlength: jQuery.validator.format("大侠饶命！我要被撑爆了，输入的内容不能大于 {0} ！"),
    minlength: jQuery.validator.format("小懒懒！要多动动手哦，最少要输入 {0} 位！"),
    rangelength: jQuery.validator.format("请输入 一个长度介于 {0} 和 {1} 之间的内容"),
    range: jQuery.validator.format("请输入一个介于 {0} 和 {1} 之间的值"),
    max: jQuery.validator.format("请输入一个最大为{0} 的值"),
    min: jQuery.validator.format("请输入一个最小为{0} 的值")
});

// 只能输入[0-9]数字 
jQuery.validator.addMethod("isDigits", function (value, element) {
    return this.optional(element) || /^\d+$/.test(value);
}, "只能输入0-9数字");
// 判断中文字符  
jQuery.validator.addMethod("isChinese", function (value, element) {
    return this.optional(element) || /^[\u0391-\uFFE5]+$/.test(value);
}, "只能包含中文字符。");
// 判断英文字符  
jQuery.validator.addMethod("isEnglish", function (value, element) {
    return this.optional(element) || /^[A-Za-z]+$/.test(value);
}, "只能包含英文字符。");
// 手机号码验证     
jQuery.validator.addMethod("isMobile", function (value, element) {
    var length = value.length;
    return this.optional(element) || (length == 11 && /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(value));
}, "请正确填写您的手机号码。");
// 电话号码验证     
jQuery.validator.addMethod("isPhone", function (value, element) {
    var tel = /^(\d{3,4}-?)?\d{7,9}$/g;
    return this.optional(element) || (tel.test(value));
}, "请正确填写您的电话号码。");
// 联系电话(手机/电话皆可)验证    
jQuery.validator.addMethod("isTel", function (value, element) {
    var length = value.length;
    var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
    var tel = /^(\d{3,4}-?)?\d{7,9}$/g;
    return this.optional(element) || tel.test(value) || (length == 11 && mobile.test(value));
}, "请正确填写您的联系方式");

//公共方法  表单项的  选择对应的  隐藏区域
$("form").find('*[data-toggle-name]').on('change', function () {
    var val = $(this).find(":selected").attr("data-box-name");
    var $target = $(this).attr('data-toggle-name');
    $($target + " #" + val).removeClass().addClass("show").siblings().removeClass().addClass("hide");
    //$target.find("[data-box]").toggle();
});



