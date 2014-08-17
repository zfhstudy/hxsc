<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FzCompany.HXSC.Register" %>

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
                        <input type="text" name="" value="" class="regbtn1">
                    </div>
                    <div class="w320 fleft  pull-left p10 color-hui">是否注册过</div>
                    <div class="cbr"></div>
                </div>
                <div class="regline line35">
                    <div class="w80 m235 pull-right fleft mp10">登录密码</div>
                    <div class="w320  fleft">
                        <input type="text" name="" value="" class="regbtn1">
                    </div>
                    <div class="w320 fleft  pull-left p10 color-hui">是否正确</div>
                    <div class="cbr"></div>
                </div>
                <div class="regline line35">
                    <div class="w80 m235 pull-right fleft mp10">确认密码</div>
                    <div class="w320  fleft">
                        <input type="text" name="" value="" class="regbtn1">
                    </div>
                    <div class="w320 fleft  pull-left p10 color-hui">是否正确</div>
                    <div class="cbr"></div>
                </div>
                <div class="regline line">
                    <div class="w80 m235 pull-right fleft mp10">&nbsp;</div>
                    <div class="w320  fleft">
                        <input type="checkbox" value="" name="" checked>
                        我已经阅读并同意《。。。。条款》
                    </div>
                    <div class="cbr"></div>
                </div>
                <div class="regline line35">
                    <div class="w80 m235 pull-right fleft mp10">&nbsp;</div>
                    <div class="w320  fleft">
                        <input type="button" name="" value="立即注册" class="regbtn2">
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
        var callback = function (response) {
            alert("成功")
        };
        var pwd = $.md5("123");
        var param = 'userna=sf1&pwd=' + pwd;
        ajaxsend(1001, param, callback);
        //var mac = $.md5('actionid=1001&userna=sf1&pwd=' + pwd + '&key=3321pc3321pc');
        
        //$.ajax(
        //{
        //    url: "Service.aspx",//调用GetData方法
        //    type: "post",
        //    dataType: "json",
        //    contentType: "application/json",
        //    data: 'actionid=1001&userna=sf1236&pwd=' + pwd + '&key=3321pc&mac=' + mac,//传递参数值（参数名叫value)
        //    success: function (data) {
        //        console.log(data);
        //    },
        //    error: function (request, message, e) {
        //        alert("err");
        //    }
        //});
       
    });
</script>

</html>
