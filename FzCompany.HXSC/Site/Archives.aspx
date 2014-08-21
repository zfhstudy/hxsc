<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Archives.aspx.cs" Inherits="FzCompany.HXSC.Site.Archives" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>海峡书城</title>
    <link href="css/css.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/slider.css" />
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
</head>

<body>
    <!--注册登录-->
    <div class="content corl_lind ">
        <div class="fleft col-wi50">
            <ul class="list-inline pull-textlp5">
                <a href="javascript:void(0);">收藏本站</a>
            </ul>
        </div>
        <div class=" fright">
            <ul class="list-inline">
                <li><span>您好!请 &nbsp;&nbsp;</span><a href="javascript:void(0);">登录 / 注册</a></li>
                <li><a href="javascript:void(0);">购物车</a></li>
                <li><a href="javascript:void(0);">我的订单</a></li>
                <li><a href="javascript:void(0);">我的书城</a></li>
                <li><a href="javascript:void(0);">我的书架</a></li>
                <li><a href="javascript:void(0);">帮助中心</a></li>
            </ul>
        </div>
    </div>
    <div class="cbr mh10"></div>
    <!--搜索-->
    <div class="content">
        <div class="fleft p708">
            <img src="images/logo.jpg" width="199" height="72">
        </div>
        <div class="search fleft  p456">
            <input type="text" class="search-input" placeholder="搜索关键词" value="书名、作者、出版社、ISBN" />
            <input type="button" class="search-btn" />
        </div>
        <div class="pull-w-20 pull-textright fleft">高级搜索</div>
    </div>
    <div class="cbr mh10"></div>
    <!--导航开始-->
    <div class="nav">
        <div class="content navtext ">
            <ul class="m-pull-210">
                <li><a href="#" class="on"><span></span>首页</a></li>
                <li><a href="#">新书上架</a></li>
                <li><a href="#">重磅推荐</a></li>
                <li><a href="#">特价专区</a></li>
                <li><a href="#">书评广场</a></li>
                <li><a href="#" class="down">z</a></li>
            </ul>
        </div>
    </div>
    <!--左边导航栏开始-->

    <div class="cbr mh10"></div>
    <div class="content">
        <!--左导航开始-->
        <div class="m200 nav-left-tab fleft">
            <div class="leftnav_title">我的书城</div>
            <div class="main_bar_nav_sub">
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">个人信息</a></dt>
                    <ul class="text">
                        <li><a href="saveCenter.html" target="erp_frame" title="安全中心">安全中心</a></li>
                        <li><a href="deliveryAddress.html" target="erp_frame" title="收货地址">收货地址</a></li>
                        <li class="line"><a href="Archives.aspx" target="erp_frame" title="个人档案" class="on">个人档案</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">社区中心</a></dt>
                    <ul class="text">
                        <li class="line"><a href="myEvaluation.html" target="erp_frame" title="我的评价">我的评价</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">我的交易</a></dt>
                    <ul class="text">
                        <li><a href="myOrder.html" target="erp_frame" title="我的订单">我的订单</a></li>
                        <li><a href="myCollection.html" target="erp_frame" title="我的收藏">我的收藏</a></li>
                        <li><a href="myBill.html" target="erp_frame" title="我的账单">我的账单</a></li>
                        <li class="line"><a href="oneselfBuyBook.html" target="erp_frame" title="已购图书">已购图书</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">我的账号</a></dt>
                    <ul class="text">
                        <li><a href="myBalance.html" target="erp_frame" title="我的余额">我的余额</a></li>
                        <li class="line"><a href="recharge.html" target="erp_frame" title="充值">充值</a></li>
                    </ul>
                </dl>
                <dl>
                    <dt>
                        <img src="images/licon1.jpg" width="20" height="20" class="icon-pad"><a href="javascript:;">自动服务</a></dt>
                    <ul class="text">
                        <li><a href="invoice.html" target="erp_frame" title="补开发票">补开发票</a></li>
                        <li><a href="unsubscribeMessage.html" target="erp_frame" title="退订邮件">退订邮件</a></li>
                        <li><a href="returnGoods.html" target="erp_frame" title="退货">退货</a></li>
                    </ul>
                </dl>
            </div>
        </div>
        <!--左导航结束-->

        <div class="w970 fleft">
            <div class="savetitle-titile">
                <h3 class="col-wi50 fleft m10">个人档案</h3>
                <span class="fright mp10"></span>
            </div>
            <div class="cbr"></div>
            <div class="w200 fleft m8">
                <div class="arch context-center">
                    <img src="images/SR.jpg" width="120" height="120"><br />
                    (尺寸96*96像素，300k之内)
                </div>
                <div class="arch">
                    <form action="Upload.ashx" method="post" enctype="multipart/form-data">
                        <input type="file" name="fileUp" class="" style="float: left;" />
                    </form>
                </div>
            </div>

            <div class="w750 fleft m8 ">
                <div class="w700">
                    <div class="w80 pull-right fleft  p10">昵称：</div>
                    <div class="w300 fleft">
                        <input type="text" id="txt_nickname" name="" value="" class="regbtn1">
                    </div>
                    <div class="  fleft  p10 color-hui">您的昵称可以由英文、中文、数字组成</div>
                </div>
                <div class="cbr"></div>
            </div>

            <div class="w700">
                <div class="w80 pull-right fleft  p10 m8">居住地：</div>
                <div class="w300 fleft">
                    <select id="province" class="regbtn1 w150 m8">
                        <option>选择省份</option>
                    </select>
                    &nbsp;&nbsp;
        <select id="city" class="regbtn1 w150 m8">
            <option>选择城市</option>
        </select>
                </div>
                <div class="cbr"></div>
            </div>

            <!---->
            <div class="w700">
                <div class="w80 pull-right fleft  p10 m8">性别：</div>
                <div class="fleft heightarch">
                    <input type="radio" name="sex" value="男">
                    男
                    <input type="radio" name="sex" value="女">
                    女
                </div>

                <div class="cbr"></div>
            </div>
            <!---->


            <div class="w700">
                <div class="w80 pull-right fleft  p10 m8">身份：</div>
                <div class=" fleft heightarch">
                    <input type="radio" name="identity" value="0">
                    老师
                    <input type="radio" name="identity" value="1">
                    学生<input type="radio" name="identity" value="2">
                    上班族<input type="radio" name="identity" value="3">
                    自由职业者<input type="radio" name="identity" value="" id="4">其它
                </div>
                <div class="cbr"></div>
            </div>
            <div class="cbr"></div>
        </div>

        <div class="w700" id="div_other" style="display: none">
            <div class="wid320 pull-right fleft  p10">&nbsp;</div>
            <div class=" fleft">
                <input type="text" id="txt_other" name="" value="" class="regbtn1 w320">
            </div>
            <%--<div class="  fleft  p10 color-hui">其他</div>--%>
            <div class="cbr"></div>
        </div>

        <div class="w700">
            <div class="wid320 pull-right fleft  p10 m8">生日：</div>
            <div class="fleft">
                <input type="text" id="txt_birthday" class=" Wdate" readonly="readonly" />
            </div>
            <%--<div class="fleft">
                <select class="regbtn5  m8 ">
                    <option>2015</option>
                    <option>2014</option>
                </select>
                年
        &nbsp;&nbsp;
        <select class="regbtn5  m8 ">
            <option>1</option>
            <option>2</option>
        </select>月
         <select class="regbtn5  m8">
             <option>1</option>
             <option>2</option>
         </select>日 
            </div>--%>
            <div class="cbr"></div>
        </div>


        <div class="w700">
            <div class="wid320 pull-right fleft p10 m8"></div>
            <div class="w300 fleft m8">
                <input type="button" class=" regbtn4" id="btn_save" value="保 存">
            </div>
            <div class="cbr"></div>
        </div>

    </div>
    <div class="cor-line-bottom cbr mt10"></div>

    <div class="cbr mh10 "></div>

    <!--尾部-->
    <div class="footer"><a href="#">关于我们</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">联系我们</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">商务合作</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#">意见反馈</a>&nbsp;&nbsp;&nbsp;&nbsp;|<a href="#" class="noa">友情连接</a> </div>
   
    <script type="text/javascript" src="js/play.js"></script>
    <script type="text/javascript" src="js/citys.js"></script>
    <script type="text/javascript" src="js/jquery.md5.js"></script>
    <script type="text/javascript" src="js/jquery.cookie.js"></script>
    <script type="text/javascript" src="js/util.js"></script>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>
    
     <script type="text/javascript">
         ////左边导航栏
         //$(".main_bar_nav_sub dt").toggle(function () {
         //    $(this).next(".text").animate({ height: 'toggle', opacity: 'toggle' }, "slow");
         //}, function () { $(this).next(".text").animate({ heigth: 'toggle', opacity: 'toggle' }, "slow"); })
    </script>
    <script type="text/javascript">
        
        function province() {
            var e = document.getElementById('province');
            for (var i = 0; i < provinceName.length; i++) {
                e.options.add(new Option(provinceName[i], i + 1));

            }
        }
        function cityName(n) {
            var e = document.getElementById('city');
            for (var i = e.options.length; i > 0; i--) e.remove(i);
            if (n == "") return;

            var a = eval("city" + n); //得到城市的数组名 
            for ( i = 0; i < a.length; i++) e.options.add(new Option(a[i], i + 1));
        }

        $("#province").change(function () {
            cityName($("#province").val());
        });
        province(); //初始时给省名下拉菜单赋内容  
        $("input[name='identity']").click(function () {
            if ($("input[name='identity']:checked").val() == "") {
                $("#div_other").show();
            }
            else {
                $("#div_other").hide();
            }

        });
        $(function () {
            $("#txt_birthday").click(function () { WdatePicker(); });
        });
        var txt = {
            nickname: $("#txt_nickname"),
            province: $("#province"),
            city: $("#city"),
            birthday: $("#txt_birthday"),
            workdetail: $("#txt_other")
        }
        var btn = {
            save: $("#btn_save")
        }

        var callback = function (response) {
            if (response.ErrorCode == 0) {
                var data = response.PackData;
                //alert("成功");
                txt.nickname.val(data.username);
                txt.province.val(data.provinceid ? data.provinceid : 0);
                txt.city.val(data.cityid ? data.cityid : 0);
                $("input[name='sex']").eq(data.sex == "女" ? 1 : 0).attr("checked", true);
                $("input[name='identity']").eq(data.workid).attr("checked", true);
            }
        };
        var userinfo = getuserid;
        //var param = "User_Id=4c707c4687574be2b235813c78537128";
        var param = "User_Id=" + getuserid;
        //ajaxsend(1006, param, callback);

        btn.save.click(function () {
            var par =
            {
                User_Id: getuserid,
                username: txt.nickname.val(),
                birthday: txt.birthday.val(),
                start: 0,
                balance: 0,
                imageurl: "",
                sex: $("input[name='sex']:checked").val(),
                countryid: 0,
                provinceid: txt.province.val(),
                cityid: txt.city.val(),
                street: "",
                regionid: 0,
                workid: $("input[name='identity']:checked").val(),
                workdetail: txt.workdetail.val(),
                phone: ""
            }
            //var param = 'User_Id=4c707c4687574be2b235813c78537128' + '&username=' + txt.nickname.val() + '&birthday=' + txt.birthday.val() + '&imageurl';
            var param1 = toQueryString(par);
            //发送ajax
            ajaxsend(1007, param1, function (response) {
                if (response.ErrorCode == 0) {
                    alert("保存成功");
                } else {
                    alert(response.ErrorMsg);
                }
            });
        });

    </script>
</body>
</html>

