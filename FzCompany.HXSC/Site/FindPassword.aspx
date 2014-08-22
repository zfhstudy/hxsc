<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FindPassword.aspx.cs" Inherits="FzCompany.HXSC.Site.FindPassword" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
            <img src="images/logo.jpg" width="199" height="72"></div>
        <div class="cbr padding-top-60"></div>
        <div class="line-margin-960">
            <div class="regline">
                <div class="regtitle p10">找回密码</div>
            </div>
            <div class="regcontent mh10">
                <div class="regline line35 ">
                    <div class="w80 m235 pull-right fleft mp10">手机号</div>
                    <div class="w320 fleft ">
                        <input type="text" id="txt_mobile" name="" value="" class="regbtn1"></div>
                    <div class="w320 fleft  pull-left p10 color-hui">
                        <input type="button" id="btn_send" name="" value="发送短信" class="regbtn3"></div>
                    <div class="cbr"></div>
                </div>
                <div class="regline line35">
                    <div class="w80 m235 pull-right fleft mp10">验证码</div>
                    <div class="w320  fleft">
                        <input type="text" id="txt_code" name="" value="" class="regbtn1"></div>
                    <div class="w320 fleft  pull-left p10 color-hui">是否正确</div>
                    <div class="cbr"></div>
                </div>


                <div class="regline line35">
                    <div class="w80 m235 pull-right fleft mp10">&nbsp;</div>
                    <div class="w320  fleft">
                        <input type="button" id="btn_next" name="" value="下一步" class="regbtn2" ></div>
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
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/jquery.md5.js"></script>
    <script type="text/javascript" src="js/util.js"></script>
    <script type="text/javascript">
        $(function () {
            var txt = {
                mobile: $("#txt_mobile"),
                code: $("#txt_code")
            };
            var btn = {
                send: $("#btn_send"),
                next:$("#btn_next")
            }
           
            btn.send.click(function () {
                if (checkmobile(txt.mobile.val())) {
                    alert("手机格式不对！");
                    return;
                }
                //todo:发送短信验证码
            });
            btn.next.click(function () {
                if (txt.mobile.val() == "") {
                    alert("手机号不能为空");
                    return;
                }
                if (checkmobile(txt.mobile.val())) {
                    alert("手机格式不对！");
                    return;
                }
               
                if (txt.code.val() == "") {
                    alert("请输入验证码！");
                    return;
                }
                var param={
                    phone:txt.mobile.val(),
                    verification:txt.code.val()
                };
                ajaxsend(1005, toQueryString(param), function (response) {
                    if (response.ErrorCode == 0) {
                        location.href = "SetPassword.aspx";
                    } else {
                        alert(response.ErrorMsg);
                    }
                });
            });
        });
    </script>
</body>
</html>
