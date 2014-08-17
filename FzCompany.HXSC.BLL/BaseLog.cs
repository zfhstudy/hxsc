using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using FzCompany.Core;

namespace FzCompany.HXSC.BLL
{
    /// <summary>
    /// 日志操作
    /// </summary>
    public class BaseLog
    {
        private string _param;

        public BaseLog(string Param)
        {
            _param = string.Format("\n请求参数：{0}\n", Param);
        }

        public void WriteComplement(string info)
        {
            LogHelper.WriteComplement(_param + info);
        }

        public void WriteDebug(string info)
        {
            LogHelper.WriteDebug(_param + info);
        }

        public void WriteError(string info)
        {
            LogHelper.WriteError(_param + info);
        }

        public void WriteException(string info, Exception ex)
        {
            LogHelper.WriteException(_param + info, ex);
        }

        public void WriteFatal(string info)
        {
            LogHelper.WriteFatal(_param + info);
        }

        public void WriteInfo(string info)
        {
            LogHelper.WriteInfo(_param + info);
        }
    }
}
