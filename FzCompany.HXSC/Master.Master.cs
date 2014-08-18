using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pageindex.Value = "0";
                if (Request.QueryString["pagetype"] != null)
                    pageindex.Value = Request.QueryString["pagetype"];

                if (Session["user"] != null)
                {
                    UserInfo user = Session["user"] as UserInfo;
                    uili.InnerHtml = "欢迎您" + user.Userna;
                }
            }
        }
    }
}