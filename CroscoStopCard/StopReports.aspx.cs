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

            //SqlCommand command;
            //string sql = null;
            //sql = ("SELECT COUNT (EStopCardID) FROM EStopCards WHERE DateCreated BETWEEN '2019.1.1' AND '2019.1.31'");
            //SqlConnection con = new SqlConnection(constr);
            //SqlCommand cmd = new SqlCommand();
            //con.Open();
            //command = new SqlCommand(sql, con);
            //SqlParameter param = new SqlParameter();

            //Int32 KK1 = (Int32)cmd.ExecuteScalar();
            //con.Close();
            //K1.InnerText = KK1.ToString();

            DataTable dt = new DataTable();
            // Populating a DataTable from database.
            dt = this.GetReportPrvi();

            // Building an HTML string.
            StringBuilder html = new StringBuilder();


            DataTable dt1 = new DataTable();
            //DataRow ro1 = new DataRow();
            //DataColumn col = new DataColumn();
            dt1 = this.GetReportPrvi();
            K1.InnerText = (dt1.Rows.Count).ToString();

            int sigurne = 0, nesigurne = 0, UA=0, UC=0, closed=0, open=0, ongoing=0, negativClosed=0, UAclosed=0, UCclosed=0;
            for (int x = 0; x < dt1.Rows.Count; x++)
            {
                for (int y = 0; y < dt1.Columns.Count; y++)
                {
                    DataColumn Useres = dt1.Columns[y];
                    string header = Useres.ToString();
                    object cell = dt.Rows[x].ItemArray[y];
                    //object Negative

                    if (header == "SigNesigPostupak")
                    {
                        if (cell.ToString() == "True")
                        {
                            sigurne++;
                        }
                        else
                        {
                            nesigurne++;
                        }
                    }
                    else if (header == "NesigRadnjaUvijet")
                    {
                        if (cell.ToString() == "True")
                        {
                            UA++;
                        }
                        else
                        {
                            UC++;
                        }
                    }
                    else if (header == "CardStatus")
                    {
                        if (cell.ToString() == "closed")
                        {
                            closed++;
                            //object ProvjeraNegativne =
                            //DataColumn NewUseres = dt1.Columns[y-2];
                            //string Newheader = NewUseres.ToString();
                            if ((dt.Rows[x].ItemArray[y-2]).ToString()=="Flase")
                            {
                                negativClosed++;
                            }
                            if (((dt.Rows[x].ItemArray[y - 2]).ToString() == "Flase") && ((dt.Rows[x].ItemArray[y - 1]).ToString() == "Flase"))
                            {
                                UCclosed++;
                            }
                            else
                            {
                                UAclosed++;
                            }
                            
                        }
                        else if (cell.ToString() == "open")
                        {
                            open++;
                        }
                        else if (cell.ToString() == "ongoing")
                        {
                            ongoing++;
                        }
                    }

                }

            }
            positive1.InnerText = sigurne.ToString();
            negative1.InnerText = nesigurne.ToString();
            UA1.InnerText = UA.ToString();
            UC1.InnerText = UC.ToString();
            open1.InnerText = open.ToString();
            ongoing1.InnerText = ongoing.ToString();
            close1.InnerText = closed.ToString();
            NegativeClosed1.InnerText = negativClosed.ToString();
            UAClosed1.InnerText = UAclosed.ToString();
            UCClosed1.InnerText = UCclosed.ToString();
        }
    
        private DataTable GetReportPrvi()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus FROM EStopCards WHERE DateCreated BETWEEN '2019.1.1' AND '2019.1.31'"))
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