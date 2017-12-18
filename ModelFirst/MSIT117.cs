using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelFirst
{
   public static class MSIT117
    {
        public static int WordCount(this string str)//新增Class 擴充方法
                              //(this string str)擴充中間string 型態的功能方法
        {
            return str.Split(new char[] { ' ', '.', '?' },
                StringSplitOptions.RemoveEmptyEntries).Length;
        }
    }
}
