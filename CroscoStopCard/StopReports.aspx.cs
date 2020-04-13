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
        private string SqlString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["UserRole"] == null) Response.Redirect("Home.aspx");
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
            LoadPrvi();
            Kvartalno();



        }
        public static string prvi;

        protected void LoadPrvi()
        {
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

            int sigurne = 0, nesigurne = 0, UA = 0, UC = 0, closed = 0, open = 0, ongoing = 0, negativClosed = 0, UAclosed = 0, UCclosed = 0;

            int PodReak1 = 0, PodReak2 = 0, PodReak3 = 0, PodReak4 = 0, PodReak5 = 0, PodReak6 = 0, PodOzo1 = 0, PodOzo2 = 0, PodOzo3 = 0, PodOzo4 = 0, PodOzo5 = 0, PodOzo6 = 0, PodOzo7 = 0, PodPolo1 = 0, PodPolo2 = 0, PodPolo3 = 0, PodPolo4 = 0, PodPolo5 = 0, PodPolo6 = 0, PodPolo7 = 0, PodPolo8 = 0, PodPolo9 = 0, PodPolo10 = 0, PodPolo11 =0, PodPolo12=0,   PodAlati1=0, PodAlati2 = 0, PodAlati3 =0, PodProce1=0,   PodProce2=0, PodProce3=0,   PodProce4=0, PodProce5=0, PodProce6 = 0;
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
                            if ((dt.Rows[x].ItemArray[y + 1]).ToString() == "Flase")
                            {
                                UC++;
                            }
                            else
                            {
                                UA++;
                            }

                        }
                    }
                    else if (header == "CardStatus")
                    {
                        if (cell.ToString() == "closed")
                        {
                            closed++;
                            // Zatvorene Negativne
                            if ((dt.Rows[x].ItemArray[y - 2]).ToString() == "False")
                            {
                                negativClosed++;
                                //Zatvorene negativne UAUC
                                if ((dt.Rows[x].ItemArray[y - 1]).ToString() == "True")
                                {
                                    UCclosed++;
                                }
                                else
                                {
                                    UAclosed++;
                                }
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
                    else if (header== "PodReak1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak1++;
                        }
                    }
                    else if (header == "PodReak2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak2++;
                        }
                    }
                    else if (header == "PodReak3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak3++;
                        }
                    }
                    else if (header == "PodReak4")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak4++;
                        }
                    }
                    else if (header == "PodReak5")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak5++;
                        }
                    }
                    else if (header == "PodReak6")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak6++;
                        }
                    }
                    else if (header == "PodOzo1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo1++;
                        }
                    }
                    else if (header == "PodOzo2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo2++;
                        }
                    }
                    else if (header == "PodOzo3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo3++;
                        }
                    }
                    else if (header == "PodOzo4")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo4++;
                        }
                    }
                    else if (header == "PodOzo5")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo5++;
                        }
                    }
                    else if (header == "PodOzo6")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo6++;
                        }
                    }
                    else if (header == "PodOzo7")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo7++;
                        }
                    }
                    else if (header == "PodPolo1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo1++;
                        }
                    }
                    else if (header == "PodPolo2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo2++;
                        }
                    }
                    else if (header == "PodPolo3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo3++;
                        }
                    }
                    else if (header == "PodPolo4")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo4++;
                        }
                    }
                    else if (header == "PodPolo5")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo5++;
                        }
                    }
                    else if (header == "PodPolo6")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo6++;
                        }
                    }
                    else if (header == "PodPolo7")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo7++;
                        }
                    }
                    else if (header == "PodPolo8")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo8++;
                        }
                    }
                    else if (header == "PodPolo9")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo9++;
                        }
                    }
                    else if (header == "PodPolo10")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo10++;
                        }
                    }
                    else if (header == "PodPolo11")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo11++;
                        }
                    }
                    else if (header == "PodPolo12")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo12++;
                        }
                    }
                    else if (header == "PodAlati1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodAlati1++;
                        }
                    }
                    else if (header == "PodAlati2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodAlati2++;
                        }
                    }
                    else if (header == "PodAlati3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodAlati3++;
                        }
                    }
                    else if (header == "PodProce1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce1++;
                        }
                    }
                    else if (header == "PodProce2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce2++;
                        }
                    }
                    else if (header == "PodProce3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce3++;
                        }
                    }
                    else if (header == "PodProce4")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce4++;
                        }
                    }
                    else if (header == "PodProce5")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce5++;
                        }
                    }
                    else if (header == "PodProce6")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce6++;
                        }
                    }
                }

            }

            DataTable dtHS = new DataTable();
            //DataRow ro1 = new DataRow();
            //DataColumn col = new DataColumn();
            dtHS = this.GetHSReportPrvi();
            int WorkersCro = 0, WorkersSub = 0, WorkersRd = 0, SumWorker=0;
            for (int x = 0; x < dtHS.Rows.Count; x++)
            {
                for (int y = 0; y < dtHS.Columns.Count; y++)
                {
                    DataColumn KolHead = dtHS.Columns[y];
                    string header = KolHead.ToString();
                    object cell = dtHS.Rows[x].ItemArray[y];
                    int broj;
                    //var isNumeric = int.TryParse(cell, out broj);
                    //int borj = Convert.ToInt32(cell);
                    //object Negative

                    if (header == "ManNoCrosco")
                    {
                        broj = Convert.ToInt32(cell);
                        WorkersCro +=broj;
                        
                    }
                    else if (header == "ManNoContracori")
                    {
                        broj = Convert.ToInt32(cell);
                        WorkersSub += broj;
                    }
                    else if (header == "ManNoThirdParty")
                    {
                        broj = Convert.ToInt32(cell);
                        WorkersRd += broj;
                    }
                    else if (header == "SumNo" )
                    {
                        broj = Convert.ToInt32(cell);
                        SumWorker += broj;
                    }
                    
                }

            }
            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDaniPrvi();
            Dani1.InnerText = (HSDani.Rows.Count).ToString();

            NoWorkers1.InnerText = (WorkersCro + WorkersSub).ToString();
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

            P1Reak1.InnerText = PodReak1.ToString();
            P1Reak2.InnerText = PodReak2.ToString();
            P1Reak3.InnerText = PodReak3.ToString();
            P1Reak4.InnerText = PodReak4.ToString();
            P1Reak5.InnerText = PodReak5.ToString();
            P1Reak6.InnerText = PodReak6.ToString();
            string E1Reak= (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P1Reak.InnerText = E1Reak;

            P1ozo1.InnerText = PodOzo1.ToString();
            P1ozo2.InnerText = PodOzo2.ToString();
            P1ozo3.InnerText = PodOzo3.ToString();
            P1ozo4.InnerText = PodOzo4.ToString();
            P1ozo5.InnerText = PodOzo5.ToString();
            P1ozo6.InnerText = PodOzo6.ToString();
            P1ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo= (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P1ozo.InnerText = E1Ozo;

            P1polo1.InnerText = PodPolo1.ToString();
            P1polo2.InnerText = PodPolo2.ToString();
            P1polo3.InnerText = PodPolo3.ToString();
            P1polo4.InnerText = PodPolo4.ToString();
            P1polo5.InnerText = PodPolo5.ToString();
            P1polo6.InnerText = PodPolo6.ToString();
            P1polo7.InnerText = PodPolo7.ToString();
            P1polo8.InnerText = PodPolo8.ToString();
            P1polo9.InnerText = PodPolo9.ToString();
            P1polo10.InnerText = PodPolo10.ToString();
            P1polo11.InnerText = PodPolo11.ToString();
            P1polo12.InnerText = PodPolo12.ToString();
            string E1Polo= (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P1polo.InnerText = E1Polo;

            P1alat1.InnerText = PodAlati1.ToString();
            P1alat2.InnerText = PodAlati2.ToString();
            P1alat3.InnerText = PodAlati3.ToString();
            string E1Alati= (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P1alat.InnerText = E1Alati;

            P1proce1.InnerText = PodProce1.ToString();
            P1proce2.InnerText = PodProce2.ToString();
            P1proce3.InnerText = PodProce3.ToString();
            P1proce4.InnerText = PodProce4.ToString();
            P1proce5.InnerText = PodProce5.ToString();
            P1proce6.InnerText = PodProce6.ToString();
            string E1Proce= (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P1proce.InnerText = E1Proce;
            string str1= sigurne +", " + nesigurne + ", " + UA+", "+UC + ", "+ closed + ", "+open + ", "+ongoing + ", "+negativClosed + ", " + UAclosed + ", " + UCclosed;

            string str2 =PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Reak + ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " +
                PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Ozo + ", " +  PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " +
                PodPolo7 + ", " + PodPolo8 + ", " + PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Polo + ", " + PodAlati1 + ", " +
                PodAlati2 + ", " + PodAlati3 + ", "  + E1Alati + ", "+ PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " + E1Proce;

            prvi = str1 + ", " + str2;

        }
        protected void Kvartalno()
        {
            poruka.InnerText = prvi;
        }

        private DataTable GetReportPrvi()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                if ((string)Session["UserRole"] == "MasterAdmin")
                {
                    SqlString = "SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, PodReak1, PodReak2, PodReak3, PodReak4, " +
                        "PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, " +
                        "PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, " +
                        "PodProce6 FROM EStopCards WHERE DateCreated BETWEEN '2019.1.1' AND '2019.1.31'";
                }
                else if ((string)Session["UserRole"] == "Manager")
                {
                    SqlString = "SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, PodReak1, PodReak2, PodReak3, PodReak4, " +
                        "PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, " +
                        "PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, " +
                        "PodProce6 FROM EStopCards WHERE OJ = '" + (string)Session["OJ"] + "' AND DateCreated BETWEEN '2019.1.1' AND '2019.1.31'";
                }
                else if ((string)Session["UserRole"] == "Admin")
                {
                    SqlString = "SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, PodReak1, PodReak2, PodReak3, PodReak4, " +
                        "PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, " +
                        "PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, " +
                        "PodProce6 FROM EStopCards WHERE SubOJ = '" + (string)Session["SubOJ"] + "' AND DateCreated BETWEEN '2019.1.1' AND '2019.1.31'";
                }
                else if ((string)Session["UserRole"] == "LocalAdmin")
                {
                    SqlString = "SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, PodReak1, PodReak2, PodReak3, PodReak4, " +
                        "PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, " +
                        "PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, " +
                        "PodProce6 FROM EStopCards WHERE SubOJDva = '" + (string)Session["SubOJDva"] + "' AND DateCreated BETWEEN '2019.1.1' AND '2019.1.31'";
                }
                using (SqlCommand cmd = new SqlCommand(SqlString))
                //using (SqlCommand cmd = new SqlCommand("SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, PodReak1, PodReak2, PodReak3, PodReak4, " +
                //    "PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, " +
                //    "PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, " +
                //    "PodProce6 FROM EStopCards WHERE DateCreated BETWEEN '2019.1.1' AND '2019.1.31'"))
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
        private DataTable GetHSReportPrvi()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                if ((string)Session["UserRole"] == "MasterAdmin")
                {
                    SqlString = "SELECT * FROM HS WHERE DateCreated BETWEEN '2020.1.1' AND '2020.1.31'";
                }
                else if ((string)Session["UserRole"] == "Manager")
                {
                    SqlString = "SELECT * FROM HS WHERE OJ = '" + (string)Session["OJ"] + "' AND DateCreated BETWEEN '2020.1.1' AND '2020.1.31'";
                }
                else if ((string)Session["UserRole"] == "Admin")
                {
                    SqlString = "SELECT * FROM HS WHERE SubOJ = '" + (string)Session["SubOJ"] + "' AND DateCreated BETWEEN '2020.1.1' AND '2020.1.31'";
                }
                else if ((string)Session["UserRole"] == "LocalAdmin")
                {
                    SqlString = "SELECT * FROM HS WHERE SubOJDva = '" + (string)Session["SubOJDva"] + "' AND DateCreated BETWEEN '2020.1.1' AND '2020.1.31'";
                }
                using (SqlCommand cmd = new SqlCommand(SqlString))
                //using (SqlCommand cmd = new SqlCommand("SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, PodReak1, PodReak2, PodReak3, PodReak4, " +
                //    "PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, " +
                //    "PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, " +
                //    "PodProce6 FROM EStopCards WHERE DateCreated BETWEEN '2019.1.1' AND '2019.1.31'"))
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

        private DataTable GetHSDaniPrvi()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                if ((string)Session["UserRole"] == "MasterAdmin")
                {
                    SqlString = "SELECT DISTINCT DateCreated FROM HS WHERE DateCreated BETWEEN '2020.1.1' AND '2020.1.31'";
                }
                else if ((string)Session["UserRole"] == "Manager")
                {
                    SqlString = "SELECT DISTINCT DateCreated FROM HS WHERE OJ = '" + (string)Session["OJ"] + "' AND DateCreated BETWEEN '2020.1.1' AND '2020.1.31'";
                }
                else if ((string)Session["UserRole"] == "Admin")
                {
                    SqlString = "SELECT DISTINCT DateCreated FROM HS WHERE SubOJ = '" + (string)Session["SubOJ"] + "' AND DateCreated BETWEEN '2020.1.1' AND '2020.1.31'";
                }
                else if ((string)Session["UserRole"] == "LocalAdmin")
                {
                    SqlString = "SELECT DISTINCT DateCreated FROM HS WHERE SubOJDva = '" + (string)Session["SubOJDva"] + "' AND DateCreated BETWEEN '2020.1.1' AND '2020.1.31'";
                }
                using (SqlCommand cmd = new SqlCommand(SqlString))
                
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