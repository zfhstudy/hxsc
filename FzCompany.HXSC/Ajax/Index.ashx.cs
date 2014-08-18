using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FzCompany.HXSC.EfModel;

namespace FzCompany.HXSC.Ajax
{
    /// <summary>
    /// Index 的摘要说明
    /// </summary>
    public class Index : WebHttpHandler, IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            if (!SetHttpContext(context))
                return;

            switch (methodTpye)
            {
                case "GetDirectory":
                    GetDirectory();
                    break;
                case "GetSalesRank":
                    GetSalesRank();
                    break;
                case "GetLatestDevelopments":
                    GetLatestDevelopments();
                    break;
                case "GetItem":
                    GetItem();
                    break;
                default:
                    break;
            }
        }

        /// <summary>
        /// 图书列表
        /// </summary>
        private void GetItem()
        {
            int ItemType = 1;
            int Count = 1;
            if (context.Request.Params["ItemType"] != null)
                ItemType = Convert.ToInt32(context.Request.Params["ItemType"]);
            if (context.Request.Params["Count"] != null)
                Count = Convert.ToInt32(context.Request.Params["Count"]);
            var a = (from o in hxsc.Item
                     where o.Directoryid == ItemType
                     select new
                     {
                         Itemid = o.Itemid,
                         Coverurl = o.Coverurl,
                         Price = o.Price,
                         Itemna = o.Itemna,
                         Originalprice = o.Originalprice
                     }).Take(Count).ToList();
            context.Response.Write(ToJson(a));
        }

        /// <summary>
        /// 最新动态
        /// </summary>
        private void GetLatestDevelopments()
        {
            var a = (from o in hxsc.LatestDevelopments
                     orderby o.CreateTime descending
                     select new
                     {
                         Title = o.Title,
                         ID = o.ID
                     }).Take(5).ToList();
            context.Response.Write(ToJson(a));
        }

        /// <summary>
        /// 销售排行
        /// </summary>
        private void GetSalesRank()
        {
            if (context.Request.Params["SaleType"] == null)
            {
                context.Response.Write("");
                return;
            }
            string SaleType = context.Request.Params["SaleType"];
            switch (SaleType)
            {
                case "GetSaleAll":
                    GetSaleAll();
                    break;
                default:
                    break;
            }
        }



        /// <summary>
        /// 畅销榜
        /// </summary>
        private void GetSaleAll()
        {
            var a = (from d in hxsc.Item
                     join o in
                         (
                             from order in hxsc.OrderD
                             group order by order.Itemid into g
                             select new { Itemid = g.Key, buycount = g.Count(order => order.Start == 2) }
                             )
                     on d.Itemid equals o.Itemid
                     join c in
                         (from com in hxsc.Comments
                          group com by com.Itemid into g
                          select new
                          {
                              Itemid = g.Key,
                              commcount = g.Count()
                          })
                     on d.Itemid equals c.Itemid
                     orderby o.buycount descending
                     select new
                     {
                         Itemid = d.Itemid,
                         Itemna = d.Itemna,
                         Coverurl = d.Coverurl,
                         Price = d.Price,
                         Commcount = c.commcount,
                         Buycount = o.buycount
                     }
                         ).Take(13).ToList();
            context.Response.Write(ToJson(a));
        }

        /// <summary>
        /// 图书目录
        /// </summary>
        private void GetDirectory()
        {
            List<Directory> list = (from o in hxsc.Directory
                                    select o).ToList();
            var a = (from o in list
                     where o.Levelx == 0 && o.Parentsid == 0
                     select new
                     {
                         Directoryid = o.Directoryid,
                         Directoryna = o.Directoryna,
                         DirList = (from d in list
                                    where d.Parentsid == o.Directoryid
                                    select new
                                    {
                                        Directoryid = o.Directoryid,
                                        Directoryna = o.Directoryna
                                    }).ToArray()
                     }).ToList();
            context.Response.Write(ToJson(a));
        }


    }
}