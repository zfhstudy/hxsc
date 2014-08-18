var ajaxsend = function(actionid, otherparam, callback) {
    var key = "3321pc";
    var parstr = "actionid=" + actionid + "&" + otherparam + "&key=" + key;
    var mac = $.md5(parstr + key);
    $.ajax(
    {
        url: "Service.aspx",
        type: "post",
        dataType: "json",
        contentType: "application/json",
        data: parstr + '&mac=' + mac,
        success: callback,
        error: function() {
            alert("err");
        }
    });
};
var checkemail = function (email) {
    var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
    return reg.test(email);
};
var checkmobile = function (mobile) {
    var reg = /^[1][3,5,7,8]\d{9}$/;
    return reg.test(mobile);
};

