using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FzCompany.HXSC.EfModel;
using System.Web.SessionState;

namespace FzCompany.HXSC.Ajax
{
    /// <summary>
    /// Login 的摘要说明
    /// </summary>
    public class Login : WebHttpHandler, IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            if (!SetHttpContext(context))
                return;
            switch (methodTpye)
            {
                case "CheckPhoneOrMail":
                    CheckPhoneOrMail();
                    break;
                case "Registraion":
                    Registraion();
                    break;
                case "UserLogin":
                    UserLogin();
                    break;
                default:
                    break;
            }
        }

        public void CheckPhoneOrMail()
        {
            string name = context.Request.Params["name"];
            if (hxsc.UserInfo.FirstOrDefault(u => u.Userna == name || u.Phone == name) != null)
                context.Response.Write(false);
            else
                context.Response.Write(true);
        }

        public void Registraion()
        {
            string name = context.Request.Params["Name"];
            string pwd = context.Request.Params["Pwd"];
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(pwd))
            {
                context.Response.Write(ToJson(new { result = "false", msg = "参数不正确!" }));
                return;
            }

            var user = new UserInfo { Userid = Guid.NewGuid().ToString(), Userna = name, Pwd = pwd };
            hxsc.UserInfo.AddObject(user);
            hxsc.SaveChanges();
            context.Session["user"] = user;
            context.Response.Write(ToJson(new { result = "true", msg = "成功!" }));
        }

        public void UserLogin()
        {
            string name = context.Request.Params["Name"];
            string pwd = context.Request.Params["Pwd"];
            string Autologin = context.Request.Params["autologin"];
            bool isatuo = false;
            if (!string.IsNullOrEmpty(Autologin) && Autologin == "true")
            {
                isatuo = true;
            }
            UserInfo userifno = hxsc.UserInfo.FirstOrDefault(o => o.Userna == name && o.Pwd == pwd);
            if (userifno == null)
            {
                context.Response.Write(ToJson(new { result = false, msg = "用户名密码不正确" }));
                return;
            }
            if (isatuo)
            {
                context.Response.Cookies["UserID"].Value = userifno.Userid;
                context.Response.Cookies["UserName"].Value = userifno.Userna;
                context.Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(7);
                context.Response.Cookies["UserID"].Expires = DateTime.Now.AddDays(7);
            }
            context.Session["user"] = userifno;
            context.Response.Write(ToJson(new { result = true, msg = "登录成功!" }));
        }
    }
}