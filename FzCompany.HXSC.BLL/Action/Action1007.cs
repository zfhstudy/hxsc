using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 修改资料
    /// </summary>
    public class Action1007 : BaseAction
    {
        private string User_id;//用户编码
        private string username;
        private DateTime birthday;
        private int start;
        private string imageurl;
        private float balance;
        private string sex;
        private int countryid;
        private int provinceid;
        private int cityid;
        private int regionid;
        private string street;
        private int workid;
        private string workdetail;
        private string phone;


        public Action1007(HttpGet httpGet)
            : base(1007, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();

            var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Userid == User_id);
            if (userinfo == null)
            {
                return SetError("用户不存在！");
            }
            userinfo.Sex = sex;
            userinfo.Balance = balance;
            userinfo.Birthday = birthday;
            userinfo.CityId = cityid;
            userinfo.CountryId = countryid;
            userinfo.ImageUrl = imageurl;
            userinfo.Phone = phone;
            userinfo.RegionId = regionid;
            userinfo.Start = start;
            userinfo.Street = street;
            userinfo.UserName = username;
            userinfo.WorkDetail = workdetail;
            userinfo.WorkId = workid;
            userinfo.ProvinceId = provinceid;
            hxsc.SaveChanges();
            return true;
        }

        public override void BuildPacket()
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("User_id", ref User_id)
                && httpGet.GetString("username", ref username)
                && httpGet.GetDateTime("birthday", ref birthday)
                && httpGet.GetInt("start", ref start)
                && httpGet.GetString("imageurl", ref imageurl)
                && httpGet.GetFloat("balance", ref balance)
                && httpGet.GetString("sex", ref sex)
                && httpGet.GetInt("countryid", ref countryid)
                && httpGet.GetInt("provinceid", ref provinceid)
                && httpGet.GetInt("cityid", ref cityid)
                && httpGet.GetInt("regionid", ref regionid)
                && httpGet.GetString("street", ref street)
                && httpGet.GetInt("workid", ref workid)
                && httpGet.GetString("workdetail", ref workdetail)
                && httpGet.GetString("phone", ref phone))
                return true;
            return false;
        }
    }
}
