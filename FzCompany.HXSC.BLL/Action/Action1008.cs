using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 查看订单列表
    /// </summary>
    public class Action1008 : BaseAction
    {
        private string User_id;//用户编码
        private DateTime createtime = DateTime.MinValue;


        public Action1008(HttpGet httpGet)
            : base(1008, httpGet)
        {
        }

        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            //var userinfo = hxsc.UserInfo.FirstOrDefault(o => o.Userid == User_id);
            //if (userinfo == null)
            //{
            //    return SetError("用户不存在！");
            //}
            var orderList = (from o in hxsc.OrderH
                             orderby o.CreateTime descending
                             select o).ToList().FindAll(GetMath);

            List<Layer> list = new List<Layer>();
            foreach (var item in orderList)
            {
                list.Add(BuldierLayer(item));
            }
            DataPack = list.ToArray();
            return true;
        }

        private bool GetMath(OrderH o)
        {
            if (!string.IsNullOrEmpty(User_id) && createtime == DateTime.MinValue)
            {
                return o.UserId == User_id;
            }
            else if (string.IsNullOrEmpty(User_id) && createtime != DateTime.MinValue)
            {
                return o.CreateTime > createtime;
            }
            else if (!string.IsNullOrEmpty(User_id) && createtime != DateTime.MinValue)
            {
                return o.CreateTime > createtime && o.UserId == User_id;
            }
            return true;
        }

        private Layer BuldierLayer(OrderH order)
        {
            Layer layer = new Layer()
            {
                amt = order.Amt.ToString(),
                createtime = order.CreateTime.ToString(),
                discount = order.Discount.ToString(),
                express = order.Express,
                expressno = order.ExpressNo,
                expresstime = order.ExpressTime.ToString(),
                orderhid = order.OrderhId,
                phone = order.Phone,
                realamt = order.Realamt.ToString(),
                Receiveaddress = order.ReceiveAddress,
                star = order.Start.ToString(),
                userid = order.UserId

            };
            return layer;
        }

        public override void BuildPacket()
        {
        }

        public override bool GetUrlElement()
        {
            httpGet.GetString("userid", ref User_id);
            httpGet.GetDateTime("createtime", ref createtime);
            return true;
        }

        private class Layer
        {
            public string orderhid { get; set; }
            public string userid { get; set; }
            public string createtime { get; set; }
            public string star { get; set; }
            public string amt { get; set; }
            public string discount { get; set; }
            public string realamt { get; set; }
            public string phone { get; set; }
            public string Receiveaddress { get; set; }
            public string express { get; set; }
            public string expressno { get; set; }
            public string expresstime { get; set; }
        }
    }
}
