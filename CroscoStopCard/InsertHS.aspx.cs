using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace CroscoStopCard
{
    public class InsertHS : Page
    {
        private string constr = ConfigurationManager.ConnectionStrings["CroscoStopCardConnectionString"].ConnectionString;
        private string SqlString;
        protected HtmlForm form1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["user"] == null && this.Session["UserRole"] == null)
                this.Response.Redirect("Home.aspx");
            if (this.IsPostBack)
                return;
            string str1 = this.Request.QueryString["opr"];
            int num1 = (int)this.Session["userID"];
            string str2 = (string)this.Session["OJ"];
            string str3 = (string)this.Session["SubOJ"];
            string str4 = (string)this.Session["SubOJDva"];
            string str5 = (string)this.Session["FirstName"];
            string str6 = (string)this.Session["LastName"];
            if (str1 == "display")
            {
                DataTable dataTable = new DataTable();
                DataTable data = this.GetData();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.Append("<tbody id='myHSTable'>");
                int num2 = 0;
                foreach (DataRow row in (InternalDataCollectionBase)data.Rows)
                {
                    ++num2;
                    if (num2 % 2 == 0)
                    {
                        stringBuilder.Append("<tr class='item even' role='row'>");
                        foreach (DataColumn column in (InternalDataCollectionBase)data.Columns)
                        {
                            stringBuilder.Append("<td Class='txtBox'>");
                            stringBuilder.Append("<span>");
                            stringBuilder.Append(row[column.ColumnName]);
                            stringBuilder.Append("</span>");
                            stringBuilder.Append("</td>");
                        }
                    }
                    else
                    {
                        stringBuilder.Append("<tr class='item odd' role='row'>");
                        foreach (DataColumn column in (InternalDataCollectionBase)data.Columns)
                        {
                            stringBuilder.Append("<td Class='txtBox'>");
                            stringBuilder.Append("<span>");
                            stringBuilder.Append(row[column.ColumnName]);
                            stringBuilder.Append("</span>");
                            stringBuilder.Append("</td>");
                        }
                    }
                }
                stringBuilder.Append("</tbody>");
                this.Response.Write((object)stringBuilder);
                this.Response.End();
            }
            else if (str1 == nameof(InsertHS))
            {
                string str7 = this.Request.QueryString["HSLocacija"];
                string str8 = this.Request.QueryString["HSOperator"];
                string str9 = this.Request.QueryString["HSStatus"];
                string str10 = this.Request.QueryString["HsDatum"];
                string s1 = this.Request.QueryString["CroWorkers"];
                string s2 = this.Request.QueryString["CroManHours"];
                string s3 = this.Request.QueryString["CroKm"];
                string str11 = this.Request.QueryString["CroSWA"];
                string str12 = this.Request.QueryString["CroLSR"];
                string str13 = this.Request.QueryString["CroAlco"];
                string str14 = this.Request.QueryString["CroNII"];
                string str15 = this.Request.QueryString["CroRTI"];
                string str16 = this.Request.QueryString["CroRTA"];
                string str17 = this.Request.QueryString["CroLOPC"];
                string str18 = this.Request.QueryString["CroSpill"];
                string str19 = this.Request.QueryString["CroFire"];
                string str20 = this.Request.QueryString["CroNM"];
                string str21 = this.Request.QueryString["CroFAC"];
                string str22 = this.Request.QueryString["CroMTC"];
                string str23 = this.Request.QueryString["CroRWC"];
                string str24 = this.Request.QueryString["CroLTI"];
                string str25 = this.Request.QueryString["CroFTL"];
                string str26 = this.Request.QueryString["CroTRI"];
                string s4 = this.Request.QueryString["SubWorkers"];
                string s5 = this.Request.QueryString["SubManHours"];
                string s6 = this.Request.QueryString["SubKm"];
                string str27 = this.Request.QueryString["SubSWA"];
                string str28 = this.Request.QueryString["SubLSR"];
                string str29 = this.Request.QueryString["SubAlco"];
                string str30 = this.Request.QueryString["SubNII"];
                string str31 = this.Request.QueryString["SubRTI"];
                string str32 = this.Request.QueryString["SubRTA"];
                string str33 = this.Request.QueryString["SubLOPC"];
                string str34 = this.Request.QueryString["SubSpill"];
                string str35 = this.Request.QueryString["SubFire"];
                string str36 = this.Request.QueryString["SubNM"];
                string str37 = this.Request.QueryString["SubFAC"];
                string str38 = this.Request.QueryString["SubMTC"];
                string str39 = this.Request.QueryString["SubRWC"];
                string str40 = this.Request.QueryString["SubLTI"];
                string str41 = this.Request.QueryString["SubFTL"];
                string str42 = this.Request.QueryString["SubTRI"];
                string s7 = this.Request.QueryString["RdWorkers"];
                string s8 = this.Request.QueryString["RdManHours"];
                string s9 = this.Request.QueryString["RdKm"];
                string str43 = this.Request.QueryString["RdSWA"];
                string str44 = this.Request.QueryString["RdLSR"];
                string str45 = this.Request.QueryString["RdAlco"];
                string str46 = this.Request.QueryString["RdNII"];
                string str47 = this.Request.QueryString["RdRTI"];
                string str48 = this.Request.QueryString["RdRTA"];
                string str49 = this.Request.QueryString["RdLOPC"];
                string str50 = this.Request.QueryString["RdSpill"];
                string str51 = this.Request.QueryString["RdFire"];
                string str52 = this.Request.QueryString["RdNM"];
                string str53 = this.Request.QueryString["RdFAC"];
                string str54 = this.Request.QueryString["RdMTC"];
                string str55 = this.Request.QueryString["RdRWC"];
                string str56 = this.Request.QueryString["RdLTI"];
                string str57 = this.Request.QueryString["RdFTL"];
                string str58 = this.Request.QueryString["RdTRI"];
                string str59 = this.Request.QueryString["DrillH2S"];
                string str60 = this.Request.QueryString["DrillEvac"];
                string str61 = this.Request.QueryString["DrillBOP"];
                string str62 = this.Request.QueryString["DrillFire"];
                string str63 = this.Request.QueryString["DrillRescue"];
                string str64 = this.Request.QueryString["DrillSpill"];
                string str65 = this.Request.QueryString["DrillOther"];
                string str66 = this.Request.QueryString["DrillComent"];
                string str67 = (int.Parse(s1) + int.Parse(s4) + int.Parse(s7)).ToString();
                string str68 = (int.Parse(s2) + int.Parse(s5) + int.Parse(s8)).ToString();
                string str69 = (int.Parse(s3) + int.Parse(s6) + int.Parse(s9)).ToString();
                string cmdText = "Insert into HS (UserID,FirstName,LastName,DateCreated,OJ1,SubOj,SubOJDva,Lokacija,Operatori,Status,ManNoCrosco,ManNoContracori,ManNoThirdParty,SumNo,ManHoursCrosco,ManHoursContracori,ManHoursThirdParty,SumManHours,KMCrosco,KMContracori,KMThirdParty,SumKM,CRoSWA,CRoLSRV,CRoAlco,CRoNII,CRoRTI,CRoRTA,CRoLOPC,CRoSPILL,CRoFIRE,CRoNM,CRoFAC,CRoMTC,CRoRWC,CRoLTI,CRoFTL,CRoTRI,ConSWA,ConLSRV,ConAlco,ConNII,ConRTI,ConRTA,ConLOPC,ConSPILL,ConFIRE,ConNM,ConFAC,ConMTC,ConRWC,ConLTI,ConFTL,ConTRI,ThrdSWA,ThrdLSRV,ThrdAlco,ThrdNII,ThrdRTI,ThrdRTA,ThrdLOPC,ThrdSPILL,ThrdFIRE,ThrdNM,ThrdFAC,ThrdMTC,ThrdRWC,ThrdLTI,ThrdFTL,ThrdTRI,PlinDrill,EvacDrill,BOPDrill,FireDrill,RescueDrill,SpillDrill,OtherDrill,OtherDrillComment,DaysWoLTI) VALUES (" + (object)num1 + " ,'" + str5 + "' ,'" + str6 + "' ,'" + str10 + "' ,'" + str2 + "', '" + str3 + "', '" + str4 + "', '" + str7 + "','" + str8 + "','" + str9 + "','" + s1 + "','" + s4 + "','" + s7 + "','" + str67 + "','" + s2 + "','" + s5 + "','" + s8 + "','" + str68 + "','" + s3 + "','" + s6 + "','" + s9 + "','" + str69 + "','" + str11 + "','" + str12 + "','" + str13 + "','" + str14 + "','" + str15 + "','" + str16 + "','" + str17 + "','" + str18 + "','" + str19 + "','" + str20 + "','" + str21 + "','" + str22 + "','" + str23 + "','" + str24 + "','" + str25 + "','" + str26 + "','" + str27 + "','" + str28 + "','" + str29 + "','" + str30 + "','" + str31 + "','" + str32 + "','" + str33 + "','" + str34 + "','" + str35 + "','" + str36 + "','" + str37 + "','" + str38 + "','" + str39 + "','" + str40 + "','" + str41 + "','" + str42 + "','" + str43 + "','" + str44 + "','" + str45 + "','" + str46 + "','" + str47 + "','" + str48 + "','" + str49 + "','" + str50 + "','" + str51 + "','" + str52 + "','" + str53 + "','" + str54 + "','" + str55 + "','" + str56 + "','" + str57 + "','" + str58 + "','" + str59 + "','" + str60 + "','" + str61 + "','" + str62 + "','" + str63 + "','" + str64 + "','" + str65 + "','" + str66 + "',200)";
                SqlConnection connection = new SqlConnection(this.constr);
                SqlCommand sqlCommand1 = new SqlCommand();
                connection.Open();
                SqlCommand sqlCommand2 = new SqlCommand(cmdText, connection);
                sqlCommand2.ExecuteNonQuery();
                sqlCommand2.Dispose();
                connection.Close();
            }
            else
            {
                if (!(str1 == "update"))
                    return;
                string cmdText = "UPDATE HS SET " + this.Request.QueryString["CloumnName"].ToString() + " = '" + this.Request.QueryString["NewValue"].ToString() + "' WHERE HSID = " + this.Request.QueryString["hsid"];
                SqlConnection connection = new SqlConnection(this.constr);
                SqlCommand sqlCommand1 = new SqlCommand();
                connection.Open();
                SqlCommand sqlCommand2 = new SqlCommand(cmdText, connection);
                sqlCommand2.ExecuteNonQuery();
                sqlCommand2.Dispose();
                connection.Close();
            }
        }

        private DataTable GetData()
        {
            using (SqlConnection sqlConnection = new SqlConnection(this.constr))
            {
                if ((string)this.Session["UserRole"] == "MasterAdmin")
                    this.SqlString = "Select * FROM HS";
                else if ((string)this.Session["UserRole"] == "Manager")
                    this.SqlString = "Select * FROM HS WHERE Oj1 = '" + (string)this.Session["OJ"] + "'";
                else if ((string)this.Session["UserRole"] == "Admin")
                    this.SqlString = "Select* FROM HS WHERE SubOj = '" + (string)this.Session["SubOJ"] + "'";
                else if ((string)this.Session["UserRole"] == "LocalAdmin")
                    this.SqlString = "Select  * FROM HS WHERE SubOjDva = '" + (string)this.Session["SubOJDva"] + "'";
                using (SqlCommand sqlCommand = new SqlCommand(this.SqlString))
                {
                    using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter())
                    {
                        sqlCommand.Connection = sqlConnection;
                        sqlDataAdapter.SelectCommand = sqlCommand;
                        using (DataTable dataTable = new DataTable())
                        {
                            sqlDataAdapter.Fill(dataTable);
                            return dataTable;
                        }
                    }
                }
            }
        }
    }
}
