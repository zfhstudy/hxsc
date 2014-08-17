using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 查看资料
    /// </summary>
    public class Action1006 : BaseAction
    {
        private string User_id;//用户编码

        public Action1006(HttpGet httpGet)
            : base(1006, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();

            var userinfolist = (from o in hxsc.UserInfo
                                where o.Userid == User_id
                                select new
                                {
                                    userid = o.Userid,
                                    userna = o.Userna,
                                    username = o.UserName,
                                    birthday = o.Birthday,
                                    createtime = o.CreateTime,
                                    start = o.Start,
                                    imageurl = o.ImageUrl,
                                    balance = o.Balance,
                                    sex = o.Sex,
                                    countryid = o.CountryId,
                                    provinceid = o.ProvinceId,
                                    cityid = o.CityId,
                                    regionid = o.RegionId,
                                    countryna = o.CountryId == null ? "" : hxsc.Country.FirstOrDefault(i => i.Countryid == o.CountryId).Countryna,
                                    provincena = o.ProvinceId == null ? "" : hxsc.Province.FirstOrDefault(i => i.Countryid == o.ProvinceId).Provincena,
                                    cityna = o.CityId == null ? "" : hxsc.City.FirstOrDefault(i => i.Cityid == o.CityId).Cityna,
                                    regionna = o.RegionId == null ? "" : hxsc.Region.FirstOrDefault(i => i.Regionid == o.RegionId).Regionna,
                                    street = o.Street,
                                    workid = o.WorkId,
                                    workna = o.WorkId == null ? "" : hxsc.Work.FirstOrDefault(i => i.Workid == o.WorkId).Workna,
                                    workdetail = o.WorkDetail,
                                    phone = o.Phone,
                                }).ToList();
            if (userinfolist.Count == 0)
            {
                return SetError("用户不存在！");
            }
            DataPack = userinfolist[0];
            return true;
        }

        public override void BuildPacket()
        {
        }

        public override bool GetUrlElement()
        {
            if (httpGet.GetString("User_id", ref User_id))
                return true;
            return false;
        }
    }
}
