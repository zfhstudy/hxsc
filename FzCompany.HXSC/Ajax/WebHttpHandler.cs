using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FzCompany.HXSC.EfModel;
using Newtonsoft.Json;

namespace FzCompany.HXSC.Ajax
{
    public class WebHttpHandler
    {
        protected HXSCEntities hxsc;
        protected HttpContext context;
        protected string methodTpye = "";

        protected void Commit()
        {
            hxsc.SaveChanges();
        }

        protected string ToJson(object obj)
        {
            context.Response.ContentType = "text/json;charset=UTF-8";
            return JavaScriptConvert.SerializeObject(obj);
        }

        protected bool SetHttpContext(HttpContext Context)
        {
            hxsc = new HXSCEntities();
            context = Context;
            if (context.Request.Params["MethodType"] != null)
                methodTpye = context.Request.Params["MethodType"];
            if (methodTpye == "")
            {
                context.Response.Write("param is error……");
                return false;
            }
            return true;
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}