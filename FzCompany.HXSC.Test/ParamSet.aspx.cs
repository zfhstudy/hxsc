using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FzCompany.HXSC.BLL.Action;
using Newtonsoft.Json;

namespace FzCompany.HXSC.Test
{
    public partial class ParamSet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Action1024.Layer> list = new List<Action1024.Layer>();
            for (int i = 0; i < 3; i++)
            {
                Action1024.Layer layer = new Action1024.Layer()
                {
                    Amt = 100,
                    Itemid = 1
                };
                list.Add(layer);
            }
            this.TextBox1.Text = HttpUtility.UrlEncode(JavaScriptConvert.SerializeObject(list));
        }
    }

}