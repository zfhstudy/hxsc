$(document).ready(function () {
    GetDirectory(); //左边导航栏 
    GetSaleAll();
    //GetLatestDevelopments(); //最新动态
    GetItem(1, 10, "itemlist");
    GetItem(1, 10, "itemlist");
    GetItem(1, 10, "itemlist");
    GetItem(1, 10, "itemlist");
    GetItem(1, 10, "SpecialOfferItem");
});

function GetItem(iItemType, iCount, divid) {
    $.ajax({
        url: "Ajax/Index.ashx",
        type: "POST",
        data: { MethodType: "GetItem", ItemType: iItemType, Count: iCount },
        error: function () { alert("itemtype" + iItemType + "iserror……"); },
        success: function (data) {
            var ahtml = "<ul class=\"icon_list_mod icon_list_mod_1 fl\">";
            for (var i = 0; i < data.length; i++) {
                ahtml += "<li><a href=\"#\" target=\"_blank\">";
                ahtml += "<img src=\"images/" + data[i].Coverurl + "\" data-original=\"\" width=\"186\" height=\"184\" alt=\"1\" /></a>";
                ahtml += "<a class=\"icon_tit\" target=\"_blank\" href=\"#\"><strong>" + data[i].Itemna + "</strong><br />";
                ahtml += "<strong class=\"deltxt\">￥" + data[i].Originalprice + "</strong><br />";
                ahtml += "<span>￥" + data[i].Price + "</span></a></li>";
            }
            ahtml += "</ul>";
            $("#" + divid).append(ahtml);
        }
    });
}

//最新动态
function GetLatestDevelopments() {
    $.ajax({
        url: "Ajax/Index.ashx",
        type: "POST",
        data: { MethodType: "GetLatestDevelopments" },
        error: function() {
             $("#LatestDevelopments").html("data is error……");
        },
        success: function (data) {
            var ahtml = "";
            for (var i = 0; i < data.length; i++) {
                ahtml += "<li><a href=\"#\">" + data[i].Title + "</a></li>";
            }
            $("#LatestDevelopments").html(ahtml);
        }
    });
}

function GetSaleAll() {
    $.ajax({
        url: "Ajax/Index.ashx",
        type: "POST",
        data: { MethodType: "GetSalesRank", SaleType: "GetSaleAll" },
        error: function () { $("#hover_list_saleAll").html("data is error……"); },
        success: function (data) {
            var ahtml = "";
            for (var i = 0; i < data.length; i++) {
                if (i == 0) {
                    ahtml += "<li class=\"on\"><a class='nodisplay' href=\"#\" target=\"_blank\"><span class=\"icon_orang fleft p m10 mh10\">";
                    ahtml += (i + 1) + "</span>" + data[i].Itemna + "</a>";
                    ahtml += "<dl class=\"art_mod_2 clearfix display\">";
                }
                else {
                    ahtml += "<li><a href=\"#\" target=\"_blank\"><span class=\"icon_orang fleft p m10 mh10\">";
                    ahtml += (i + 1) + "</span>" + data[i].Itemna + "</a>";
                    ahtml += "<dl class=\"art_mod_2 clearfix\">";
                }
                ahtml += "<span class=\"icon_orang fleft \">" + (i + 1) + "</span>";
                ahtml += "<dd class=\"pic_title_mod fleft \">";
                ahtml += "<a href=\"#\" target=\"_blank\">";
                if (i == 0)
                    ahtml += "<img src=\"" + data[i].Coverurl + "\" width=\"68\" height=\"68\" data-original=\"" + data[i].Coverurl + "\" /></a></dd>";
                else
                    ahtml += "<img src=\"" + data[i].Coverurl + "\" width=\"68\" height=\"68\"/></a></dd>";
                ahtml += "<dt class=\"p10\"><a href=\"#\" target=\"_blank\">" + data[i].Itemna + "</a></dt>";
                ahtml += "<dd class=\"normal_con\">评论(" + data[i].Commcount + ")</dd>";
                ahtml += "<dd class=\"link_block\">";
                ahtml += "￥" + data[i].Price + "</dd>";
                ahtml += "</dl>";
                ahtml += "</li>";
            }
            $("#hover_list_saleAll").html(ahtml);
        }
    });
}

//左边导航栏
function GetDirectory() {
    $.ajax({
        url: "Ajax/Index.ashx",
        type: "POST",
        data: { MethodType: "GetDirectory" },
        error: function () { $("#main_bar_nav_sub").html("data is error……"); },
        success: function (data) {
            alert(data);
            if (data) {
                var ahtml = "";
                for (var i = 0; i < data.length; i++) {
                    ahtml += "<dl>";
                    ahtml += "<dt>";
                    ahtml += "<img src=\"images/licon1.jpg\" width=\"20\" height=\"20\" class=\"icon-pad\" alt=\"\" />";
                    ahtml += "<a href=\"javascript:;\">" + data[i].Directoryna + "</a></dt>";
                    ahtml += "<ul class=\"text\">";
                    var dirlist = eval(data[i].DirList);
                    for (var j = 0; j < dirlist.length; j++) {
                        if (j < dirlist.length - 1) {
                            ahtml += "<li><a href=\"#\" target=\"erp_frame\" title=\"教材\">" + dirlist[j].Directoryna + "</a></li>";
                        } else {
                            ahtml += "<li class=\"line\"><a href=\"#\" target=\"erp_frame\" title=\"教材\">" + dirlist[j].Directoryna + "</a></li>";
                        }
                    }
                    ahtml += "</ul>";
                    ahtml += "</dl>";
                }
                $("#main_bar_nav_sub").html(ahtml);
            } else {
                $("#main_bar_nav_sub").html("data is empty……");
            }
            //折叠样式
            $(".main_bar_nav_sub dt").toggle(function () {
                $(this).next(".text").animate({ height: 'toggle', opacity: 'toggle' }, "slow");
            }, function () { $(this).next(".text").animate({ heigth: 'toggle', opacity: 'toggle' }, "slow"); })
        }
    });
}