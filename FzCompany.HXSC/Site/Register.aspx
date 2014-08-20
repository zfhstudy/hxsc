<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FzCompany.HXSC.Site.Register" %>

<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>海峡书城</title>
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <link href="css/css.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div class="content margin-top-60">
        <div class="fleft p708 ">
            <img src="images/logo.jpg" width="199" height="72">
        </div>
        <div class="cbr padding-top-60"></div>
        <div class="line-margin-960 ">
            <div class="regline">
                <div class="regtitle p10">注册新用户</div>
            </div>
            <div class="regcontent mh10">
                <div class="regline line35 ">
                    <div class="w80 m235 pull-right fleft mp10">邮箱/手机</div>
                    <div class="w320 fleft ">
                        <input type="text" id="txt_username" name="" value="" class="regbtn1">
                    </div>
                    <div class="w320 fleft  pull-left p10 color-hui" style="color: red" id="tips_username"></div>
                    <div class="cbr"></div>
                </div>
                <div class="regline line35">
                    <div class="w80 m235 pull-right fleft mp10">登录密码</div>
                    <div class="w320  fleft">
                        <input type="password" id="txt_pwd" name="" value="" class="regbtn1">
                    </div>
                    <div class="w320 fleft  pull-left p10 color-hui" style="color: red" id="tips_pwd"></div>
                    <div class="cbr"></div>
                </div>
                <div class="regline line35">
                    <div class="w80 m235 pull-right fleft mp10">确认密码</div>
                    <div class="w320  fleft">
                        <input type="password" id="txt_pwdconfirm" name="" value="" class="regbtn1">
                    </div>
                    <div class="w320 fleft  pull-left p10 color-hui" style="color: red" id="tips_pwdconfirm"></div>
                    <div class="cbr"></div>
                </div>
                <div class="regline line">
                    <div class="w80 m235 pull-right fleft mp10">&nbsp;</div>
                    <div class="w320  fleft">
                        <input type="checkbox" id="chk_item" value="" name="" checked>
                        我已经阅读并同意《。。。。条款》
                    </div>
                    <div class="cbr"></div>
                </div>
                <div class="regline line35">
                    <div class="w80 m235 pull-right fleft mp10">&nbsp;</div>
                    <div class="w320  fleft">
                        <input type="button" id="btn_submit" name="" value="立即注册" class="regbtn2">
                    </div>
                    <div class="cbr"></div>
                </div>
            </div>
        </div>
        <div class="cor-line-bottom cbr mt10 margin-top-60"></div>
    </div>
    <div class="cbr mh10 "></div>

    <div class="footer">
        <a href="#">关于我们</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">联系我们</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">商务合作</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">意见反馈</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#" class="noa">友情连接</a>
    </div>
</body>
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/jquery.md5.js"></script>
<script src="js/util.js"></script>
<script>
    $(function () {
        var txt = {
            username: $("#txt_username"),
            pwd: $("#txt_pwd"),
            pwdconfirm: $("#txt_pwdconfirm")
        };
        var tips = {
            username: $("#tips_username"),
            pwd: $("#tips_pwd"),
            pwdconfirm: $("#tips_pwdconfirm")
        };
        var btn = { submit: $("#btn_submit") };



        //
        txt.pwdconfirm.blur(function () {
            if (txt.pwd.val() != txt.pwdconfirm.val()) {
                tips.pwdconfirm.html("密码不一致！");
                return;
            }
            tips.pwdconfirm.html("");
        });
        txt.pwd.blur(function () {
            if (txt.pwdconfirm.val() != "") {
                if (txt.pwd.val() != txt.pwdconfirm.val()) {
                    tips.pwdconfirm.html("密码不一致！");
                    return;
                }
            }
            tips.pwdconfirm.html("");
        });
        txt.username.blur(function () {
            if (txt.username.val() == "") {
                tips.username.html("用户名不能为空！");
                return;
            }
            if (!checkemail(txt.username.val()) && !checkmobile(txt.username.val())) {
                tips.username.html("用户名格式不对！");
                return;
            }
            tips.username.html("");
            var callback = function (response) {
                if (response.ErrorCode == 0) {
                    tips.username.html("可用");
                    return;
                }
                tips.username.html(response.ErrorMsg);
            };
            var param = "userna=" + txt.username.val();
            ajaxsend(1002, param, callback);

        });
        btn.submit.click(function () {
            if (txt.username.val() == "") {
                tips.username.html("用户名不能为空！");
                txt.username.focus();
                return;
            }
            if (txt.pwd.val() == "") {
                tips.pwd.html("密码不能为空！");
                txt.pwd.focus();
                return;
            }
            if (txt.pwd.val() != txt.pwdconfirm.val()) {
                tips.pwdconfirm.html("密码不一致！");
                return;
            }
            if (!$("#chk_item").prop("checked")) {
                alert("如要注册请同意条款！");
                return;
            }
            var callback = function (response) {
                if (response.ErrorCode == 0) {
                    location.href = "RegSuccess.aspx";
                } else {
                    alert(response.ErrorMsg);
                }
            };
            var pwd = $.md5(txt.pwd.val());
            var param = 'userna=' + txt.username.val() + '&pwd=' + pwd;
            //发送ajax
            ajaxsend(1001, param, callback);
        });


    });
</script>

</html>
