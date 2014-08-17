using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.BLL.Action
{
    /// <summary>
    /// 邮件类型删除
    /// </summary>
    public class Action1039 : BaseAction
    {
        public Action1039(HttpGet httpGet)
            : base(1039, httpGet)
        {
        }

        public override bool GetUrlElement()
        {
            return true;
        }


        public override bool TakeAction()
        {
            HXSCEntities hxsc = new HXSCEntities();
            DataPack = (from o in hxsc.Mail
                        select new
                        {
                            mailid = o.Mailid,
                            genre = o.Genre,
                            classify = o.Classify,
                            Contenttxt = o.Contenttxt,
                            levelx = o.Levelx,
                            parentsmailid = o.Parentsmailid
                        }).ToList();
            return true;
        }

        public override void BuildPacket()
        {
        }
    }
}
