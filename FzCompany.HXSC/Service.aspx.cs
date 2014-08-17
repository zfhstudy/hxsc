using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FzCompany.Core;
using System.Reflection;
using FzCompany.HXSC.BLL.Action;

namespace FzCompany.HXSC
{
    public partial class Service : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpGet httpGet = new HttpGet();
            String ActionID = string.Empty;

            if (httpGet.GetString("ActionID", ref ActionID))
            {
                try
                {
                    string actionName = string.Concat("Action", ActionID);
                    string sname = string.Concat("FzCompany.HXSC.BLL.Action." + actionName);
                    Assembly a = Assembly.Load("FzCompany.HXSC.BLL");

                    BaseAction obj = (BaseAction)Assembly.Load("FzCompany.HXSC.BLL").CreateInstance(sname, true, BindingFlags.Default, null, new object[] { httpGet }, null, null);
                    if (obj.ReadUrlElement() && obj.DoAction())
                    {
                        obj.BuildPacket();
                        //obj.WriteAction();
                    }
                    else
                    {
                        //obj.WriteErrorAction();
                        //return;
                    }
                    obj.WritePacket();
                }
                catch (Exception ex)
                {
                    LogHelper.WriteException("接口请求出错", ex);
                }
            }
        }
    }
}