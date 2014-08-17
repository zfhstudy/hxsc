using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FzCompany.Core;
using System.Text;

namespace FzCompany.HXSC.Test
{
    public partial class Default : System.Web.UI.Page
    {
        private const string KEY = "3321iphone";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        private string Send(string param)
        {
            string url = ConfigHelper.GetSetting("sendurl");
            return HttpPostManager.GetStringData(url, param);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string param = "";
            param = string.Format("ActionID={0}&key={1}", DropDownList1.SelectedValue, KEY);
            if (!string.IsNullOrEmpty(tbParam.Text.Trim()))
            {
                param += "&" + tbParam.Text.Trim();
            }
            string mac = CryptoHelper.MD5_Encrypt(param, KEY, Encoding.UTF8);
            param += "&mac=" + mac;
            this.tbResult.Text = Send(param);
        }
    }
}