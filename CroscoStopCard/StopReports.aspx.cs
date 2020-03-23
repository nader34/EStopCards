using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Globalization;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualBasic;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.Script.Services;

namespace CroscoStopCard
{
    public partial class StopReports : System.Web.UI.Page
    {
        private string constr = System.Configuration.ConfigurationManager.ConnectionStrings["CroscoStopCardConnectionString"].ConnectionString;
        //int KK1, KK2, KK3;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlCommand command;
            string sql = null;
            //SELECT COUNT(ProductID) AS NumberOfProducts FROM Products;
            //SELECT COUNT (FirstName) FROM EStopCards WHERE DateCreated BETWEEN '2020.3.1' AND '2020.3.31';
            sql = ("SELECT COUNT (EStopCardID) FROM EStopCards WHERE DateCreated BETWEEN '2019.1.1' AND '2019.1.31'");
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            con.Open();
            command = new SqlCommand(sql, con);
            SqlParameter param = new SqlParameter();

            Int32 KK1 = (Int32)cmd.ExecuteScalar();
            con.Close();
            K1.InnerText = KK1.ToString();
            
        }
        private DataTable GetReport()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT COUNT EStopCardID FROM EStopCards WHERE DateCreated > '1.1.2019' AND DateCreated <1.2.2019"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
    }
}