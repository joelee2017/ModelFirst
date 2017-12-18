using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ModelFirst
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        //--新增Table至DB 使用空模型產生資料庫，需要什麼創建什麼ORM 方式

        private void btnORMCreateDBTable_Click(object sender, EventArgs e)
        {
            MyAppModelContainer dc = new MyAppModelContainer();//建立方法物件
            Guest user1 = new Guest();
            user1.Name = "Joe";
            user1.Disable = false;
            dc.UserSet.Add(user1);
            dc.SaveChanges();
        }

        private void button2_Click(object sender, EventArgs e)//實作LINQ擴充
        {
            string str = "Hello MSIT 117!";
            int Count = str.WordCount();//擴充功能WordCount
            MessageBox.Show(Count.ToString());
        }
    }
}
