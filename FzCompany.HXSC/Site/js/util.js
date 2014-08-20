var ajaxsend = function (actionid, otherparam, callback) {
    var key = "3321pc";
    var parstr = "actionid=" + actionid + "&" + otherparam + "&key=" + key;
    var mac = $.md5(parstr + key);
    $.ajax(
       {
           url: "../Service.aspx",
           type: "post",
           dataType: "text",
           contentType: "application/json",
           data: parstr + '&mac=' + mac,
           success: callback,
           error: function (e) {
               alert("err");
           }
       });
}
var checkemail = function (email) {
    var reg = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
    return reg.test(email);
};
var checkmobile = function (mobile) {
    var reg = /^[1][3,5,7,8]\d{9}$/;
    return reg.test(mobile);
};

//*******************************
function toQueryPair(key, value) {
    if (typeof value == 'undefined') {
        return key;
    }
    //return key + '=' + encodeURIComponent(value === null ? '' : String(value));
    return key + '=' + (value === null ? '' : String(value));
}
function toQueryString(obj) {
    var ret = [];
    for (var key in obj) {
       // key = encodeURIComponent(key);
        var values = obj[key];
        if (values && values.constructor == Array) {//数组 
            var queryValues = [];
            for (var i = 0, len = values.length, value; i < len; i++) {
                value = values[i];
                queryValues.push(toQueryPair(key, value));
            }
            ret = ret.concat(queryValues);
        } else { //字符串 
            ret.push(toQueryPair(key, values));
        }
    }
    return ret.join('&');
}
//console.log(toQueryString({
//    name: 'xesam',
//    age: 24
//})); //name=xesam&age=24 
//console.log(toQueryString({
//    name: 'xesam',
//    age: [24, 25, 26]
//})); //name=xesam&age=24&age=25&age=26 
//*******************************
