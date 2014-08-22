<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetPassword.aspx.cs" Inherits="FzCompany.HXSC.Site.SetPassword" %>

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
	<div class="fleft p708 "><img src="images/logo.jpg" width="199" height="72"></div>
    <div class="cbr padding-top-60"></div>
    <div class="line-margin-960 ">
    	<div class="regline">
        	<div class="regtitle p10">重新设置密码</div>
        </div>
        <div class="regcontent mh10">
        	<div class="regline line35 ">
            	<div class="w80 m235 pull-right fleft mp10">输入新密码</div>
                <div class="w320 fleft "><input type="text" id="txt_newpwd" name="" value="" class="regbtn1"></div>
                <div class="w320 fleft  pull-left p10 color-hui">是否符合要求</div>
                <div class="cbr"></div>
            </div>
            <div class="regline line35">
            	<div class="w80 m235 pull-right fleft mp10">再次输入新密码</div>
                <div class="w320  fleft"><input type="text" id="txt_newpwdconfirm" name="" value="" class="regbtn1"></div>
                <div class="w320 fleft  pull-left p10 color-hui">与上一次输入的密码是否一样</div>
                <div class="cbr"></div>
            </div>
            
            
            <div class="regline line35">
            	<div class="w80 m235 pull-right fleft mp10">&nbsp;</div>
                <div class="w320  fleft"><input type="button" name="" value="确 认" class="regbtn2"></div>
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
    <script>
        $(function() {
            var txt= {
                newpwd: $("#txt_newpwd"),
                newpwdconfirm: $("#txt_newpwdconfirm")
            }
        });
    </script>
</body>
</html>

