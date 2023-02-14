using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Security.Cryptography;

namespace PhanMemQLTV
{
    public partial class frmConfig : Form
    {
        public static string chuoiKetNoi()
        {
            string chuoiKetNoi = "server =" + @"NDA\SQLEXPRESS; database = MHHDL_DoAnQLTV; integrated security = true";
            return chuoiKetNoi;
        }
        public static string md5_Hash(string text)
        {
            MD5 md5 = MD5.Create();
            byte[] hash = md5.ComputeHash(Encoding.UTF8.GetBytes(text));
            StringBuilder hashSb = new StringBuilder();
            foreach (byte b in hash)
            {
                hashSb.Append(b.ToString("X2"));
            }
            return hashSb.ToString();
        }
        public frmConfig()
        {
            InitializeComponent();
        }
    }
}
