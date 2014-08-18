var ajaxsend = function (actionid, otherparam, callback) {
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
           error: function () {
               alert("err");
           }
       });
}
