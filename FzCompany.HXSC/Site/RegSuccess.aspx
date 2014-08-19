<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegSuccess.aspx.cs" Inherits="FzCompany.HXSC.Site.RegSuccess" %>
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
	<div class="fleft p708 "><img src="images/logo.jpg" width="199" height="72" alt=""></div>
    <div class="cbr padding-top-60"></div>
    <div class="line-margin-960 ">
    	<div class="regline  margin-top-60 context-center">
        	<div class="regtitlenoline p10"><img src="images/success.jpg" width="45" height="36" alt=""> &nbsp;&nbsp;尊敬的<span id="span_username">xxxx</span> 会员，你已成为海峡图书城会员</div>
        </div> 
        <div class="margin-top-60 context-center margin-bottom-60"><a href="Archives.aspx" id="a_redirect">10秒后转到个人档案，如果没有跳转，请点击此处</a></div>
    </div>  
    <div class="cor-line-bottom cbr mt10 margin-top-60"></div>
</div>
<div class="cbr mh10 "></div>

<div class="footer">
        	<a href="#">关于我们</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">联系我们</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">商务合作</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">意见反馈</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#" class="noa">友情连接</a>
</div>
    <script type="text/javascript">
        $(function () {
            var count = 10;
            function countDown()
            {
                count--;
                if (count <= 0) {
                    location.href = "Archives.aspx";
                    return;
                }
                
                var str = count+"秒后转到个人档案，如果没有跳转，请点击此处";
                $("#a_redirect").html(str)
            }
            setInterval(countDown,1000);
        });
    </script>
</body>
</html>

