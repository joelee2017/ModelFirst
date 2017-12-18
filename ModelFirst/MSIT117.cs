using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelFirst
{
   public static class MSIT117
    {
        /// <summary>
        /// str.Split 根據陣列中的字元分割字串成子字串。 您可以指定子字串是否包含空的陣列元素。
        /// (this string str)擴充中間string 型態的功能方法
        /// StringSplitOptions.RemoveEmptyEntries).Length;
        /// 省略回傳值中的空子串(StringSplitOptions.RemoveEmptyEntries).Length取得長度
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static int WordCount(this string str)//新增Class 擴充方法
                              
        {
            return str.Split(new char[] { ' ', '.', '?' },                
                StringSplitOptions.RemoveEmptyEntries).Length;
        }
       
    }
}
