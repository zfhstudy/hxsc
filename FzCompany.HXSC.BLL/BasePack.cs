using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FzCompany.HXSC.BLL
{
    /// <summary>
    /// 下发数据基础包
    /// </summary>
    public class BasePack
    {
        /// <summary>
        /// 错误码 0：无错误； 其它有误错
        /// </summary>
        public int ErrorCode { get; set; }
        /// <summary>
        /// 错误信息
        /// </summary>
        public string ErrorMsg { get; set; }
        /// <summary>
        /// 数据包
        /// </summary>
        public object PackData { get; set; }

        public BasePack()
        {
            ErrorCode = 0;
            ErrorMsg = "";
            PackData = "";
        }
    }
}
