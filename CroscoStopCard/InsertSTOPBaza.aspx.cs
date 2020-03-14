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
    public partial class InsertSTOPBaza : System.Web.UI.Page
    {
        private string constr = System.Configuration.ConfigurationManager.ConnectionStrings["CroscoStopCardConnectionString"].ConnectionString;
        string opr, opis, DateCreated, DatumOtvaranja, korekcija, AnalizaUzroka, OdgovornaOsoba, RokZaRijesavanja, Komentar, Status, DatumZatvaranja, STOPCheckBoxes, UaUc;
        int UserID;
        string STOPID;
        protected void Page_Load(object sender, EventArgs e)
        {
            opr = Request.QueryString["opr"];
            //EStopCard eStopCard = new EStopCard();
            //using (CroscoStopCardEntities SCDB = new CroscoStopCardEntities())
            //{
            //    eStopCard.UserID = (int)Session["userID"];
            //    SCDB.EStopCards.Add(eStopCard);
            //    SCDB.SaveChanges();

            //}
            //if (Session["STOPID"] != null)
            //{
            //    STOPID = (string)Session["STOPID"];
            //}
            //UserID = (int)Session["userID"];

            //String FName = (string)Session["FirstName"];
            //String LName = (string)Session["LastName"];
            //DateCreated = DateTime.Today.ToString("yyyy-MM-dd");
            //opr = Request.QueryString["opr"];
            //DatumOtvaranja = Request.QueryString["DatumOtvaranja"];
            //opis = Request.QueryString["opis"];
            //korekcija = Request.QueryString["korekcija"];
            //AnalizaUzroka = Request.QueryString["AnalizaUzroka"];
            //OdgovornaOsoba = Request.QueryString["OdgovornaOsoba"];
            //RokZaRijesavanja = Request.QueryString["RokZaRijesavanja"];
            //Komentar = Request.QueryString["Komentar"];
            //Status = Request.QueryString["Status"];
            //DatumZatvaranja = Request.QueryString["DatumZatvaranja"];
            ////if (DatumOtvaranja != null)
            ////{
            ////var d1 = DateTime.Parse(DatumOtvaranja).ToString("yyyy-MM-dd");
            ////var d2 = DateTime.Parse(RokZaRijesavanja).ToString("yyyy-MM-dd");
            ////var d3 = DateTime.Parse(DatumZatvaranja).ToString("yyyy-MM-dd");
            ////}

            ////DatumOtvaranjaFormat = DatumOtvaranja.ToString("dd/MM/yyyy");
            //UaUc = Request.QueryString["UaUc"];
            //STOPCheckBoxes = Request.QueryString["STOPCheckBoxes"];
            //if (opr == "Safe")
            //{
            //    var d1 = DateTime.Parse(DatumOtvaranja).ToString("yyyy-MM-dd");
            //    var d2 = DateTime.Parse(RokZaRijesavanja).ToString("yyyy-MM-dd");
            //    var d3 = DateTime.Parse(DatumZatvaranja).ToString("yyyy-MM-dd");
            //    SqlCommand command;
            //    string sql = null;
            //    // comstrin = "Insert into CROSCO_CBC values ('" & Ime.ToString() & "','" & Prezime.ToString() & "')"
            //    sql = ("Insert into EStopCards (UserID,FirstName,LastName,DateCreated,SigNesigPostupak,DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES (" + UserID + " ,'" + FName + "' ,'" + LName + "' ,'" + DateCreated + "', '" + 1 + "', '" +
            //        d1 + "', '" + opis.ToString() + "', '" + korekcija.ToString() + "', '" + AnalizaUzroka.ToString() +
            //        "', '" + OdgovornaOsoba.ToString() + "', '" + d2 + "', '" + Komentar.ToString() +
            //        "', '" + Status.ToString() + "', '" + d3 + "')");
            //    //sql = ("Insert into EStopCards (UserID,SigNesigPostupak,DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES ( 1, 1,'1/7/2019', 'das', 'kor', 'anal', 'OdgovornaOsoba', '7/7/2020', 'kome', 'closed','7/8/2020')");
            //    SqlConnection con = new SqlConnection(constr);
            //    SqlCommand cmd = new SqlCommand();
            //    con.Open();
            //    command = new SqlCommand(sql, con);
            //    command.ExecuteNonQuery();
            //    command.Dispose();
            //    con.Close();
            //    //MessageBox.Show(" ExecuteNonQuery in SqlCommand executed !!");

            //}
            if (opr == "display")
            {
                DataTable dt = new DataTable();
                // Populating a DataTable from database.
                dt = this.GetData();

                // Building an HTML string.
                StringBuilder html = new StringBuilder();

                // Table start.
                // html.Append("<table id='mytb1' border = '1' cellspacing='1' class='tablesorter'>")
                html.Append("<table id='mytb1' class='table table-striped table-bordered mydatatable' style='width: 100 %'>");
                // Building the Header row.
                html.Append("<thead>");
                html.Append("<tr>");
                int i = 0;
                foreach (DataColumn column in dt.Columns)
                {
                    string stri;
                    stri = "<th style='cursor:pointer'>";
                    // stri = "<th onclick='sortTable(" & i & ")'>"



                    // stri = "<th onclick="
                    // stri = stri & "w3.sortHTML("
                    // stri = stri & "'" & "#tb1" & "','.item'," & "'td:nth-child(" & i & ")')' " & "style='cursor:pointer'>"
                    html.Append(stri);
                    i = i + 1;
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("<th style='cursor:pointer'>");
                html.Append("PDF");
                html.Append("</th>");
                //html.Append("<th style='cursor:pointer'>");
                //html.Append("Edit");
                //html.Append("</th>");
                html.Append("</tr>");
                html.Append("</thead>");
                // html.Append("<tbody id='myTable'>")
                // Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr class='item'>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td Class='txtBox'>");
                        html.Append("<span>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</span>");
                        html.Append("</td>");
                    }
                    //html.Append("<td Class='btn'>");
                    //html.Append("<span>");
                    //html.Append("PDF");
                    //html.Append("</span>");
                    //html.Append("</td>");

                    html.Append("<td Class='STOPCardbtn btn'>");
                    //html.Append("<a href='DoneSTOPCard.aspx' target='_blank'>Done Stop Card</a>");
                    html.Append("<span>");
                    html.Append("Otvori");
                    html.Append("</span>");
                    html.Append("</td>");

                    html.Append("</tr>");
                }
                // html.Append("</tbody>")
                // Table end.
                html.Append("</table>");
                Response.Write(html);
                Response.End();
            }
            else if (opr == "delete")
            {
                String RowId = Request.QueryString["id"];
                SqlCommand command;
                string sql = null;
                sql = ("DELETE FROM EStopCards WHERE EStopCardID =" + RowId);
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                con.Open();
                command = new SqlCommand(sql, con);
                command.ExecuteNonQuery();
                //command.Dispose();
                con.Close(); 
            }
            else if (opr == "display")
            {
                DataTable dt = new DataTable();
                // Populating a DataTable from database.
                dt = this.GetData();

                // Building an HTML string.
                StringBuilder html = new StringBuilder();

                // Table start.
                // html.Append("<table id='mytb1' border = '1' cellspacing='1' class='tablesorter'>")
                html.Append("<table id='mytb1' class='display cell-border mydatatable' style='width: 100 %'>");
                // Building the Header row.
                html.Append("<thead>");
                html.Append("<tr>");
                int i = 0;
                foreach (DataColumn column in dt.Columns)
                {
                    string stri;
                    stri = "<th style='cursor:pointer'>";
                    // stri = "<th onclick='sortTable(" & i & ")'>"



                    // stri = "<th onclick="
                    // stri = stri & "w3.sortHTML("
                    // stri = stri & "'" & "#tb1" & "','.item'," & "'td:nth-child(" & i & ")')' " & "style='cursor:pointer'>"
                    html.Append(stri);
                    i = i + 1;
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("<th style='cursor:pointer'>");
                html.Append("PDF");
                html.Append("</th>");
                //html.Append("<th style='cursor:pointer'>");
                //html.Append("Edit");
                //html.Append("</th>");
                html.Append("</tr>");
                html.Append("</thead>");
                // html.Append("<tbody id='myTable'>")
                // Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr class='item'>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td Class='txtBox'>");
                        html.Append("<span>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</span>");
                        html.Append("</td>");
                    }
                    //html.Append("<td Class='btn'>");
                    //html.Append("<span>");
                    //html.Append("PDF");
                    //html.Append("</span>");
                    //html.Append("</td>");

                    html.Append("<td Class='STOPCardbtn btn'>");
                    //html.Append("<a href='DoneSTOPCard.aspx' target='_blank'>Done Stop Card</a>");
                    html.Append("<span>");
                    html.Append("Otvori");
                    html.Append("</span>");
                    html.Append("</td>");

                    html.Append("</tr>");
                }
                // html.Append("</tbody>")
                // Table end.
                html.Append("</table>");
                Response.Write(html);
                Response.End();
            }

            else if (opr == "update")
            {

                //Session["STOPID"] = Request.QueryString["STOPID"];
                String RowId = Request.QueryString["id"];
                String newValu1 = Request.QueryString["newva"].ToString();
                String columhed = Request.QueryString["ched"].ToString();
                //var DateCreated1 = DateTime.Parse(DatumOtvaranja1).ToString("yyyy-MM-dd");
                SqlCommand command;
                string sql = null;
                
                sql = ("UPDATE EStopCards SET " + columhed + " = '" + newValu1 + "' WHERE EStopCardID = " + RowId);

                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                con.Open();
                command = new SqlCommand(sql, con);
                command.ExecuteNonQuery();
                command.Dispose();
                con.Close();
            }
            else
            {
            //    var d1 = DateTime.Parse(DatumOtvaranja).ToString("yyyy-MM-dd");
            //    var d2 = "";
            //    var d3 = "";
            //    if (CheckDate(RokZaRijesavanja) == true)
            //    {
            //        d2 = DateTime.Parse(RokZaRijesavanja).ToString("yyyy-MM-dd");
            //    }
            //    if (CheckDate(DatumZatvaranja) == true)
            //    {
            //        d3 = DateTime.Parse(DatumZatvaranja).ToString("yyyy-MM-dd");
            //    }
            //    string[] boxes = STOPCheckBoxes.Split(',');
            //    string xi = boxes[boxes.Length - 1];
            //    int y = Convert.ToInt32(xi);
            //    string checkHeaders = "";
            //    string checkValues = "";
            //    string checkbrojeve = "'1'";
            //    for (int j = 0; j < y; j++)
            //    {
            //        string neznam = boxes[j].ToString();
            //        checkHeaders += neznam + ',';
            //        checkValues += checkbrojeve.ToString() + ", ";
            //    }
            //    string checkHead = checkHeaders.Substring(0, checkHeaders.Length - 1);
            //    string checkValue = checkValues.Substring(0, checkValues.Length - 1);
            //    SqlCommand command;
            //    string sql = null;
            //    // comstrin = "Insert into CROSCO_CBC values ('" & Ime.ToString() & "','" & Prezime.ToString() & "')"
            //    //Insert into EStopCards (UserID,DateCreated,SigNesigPostupak,NesigRadnjaUvijet,DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES (1 ','2019-08-31', '0', 'Unsafe act', '2019-08-31', 'dsSFD', 'FDSAFDAS', '', 'Upištite ime, funkcija ili firma', '2019-08-31', 'Komentar', 'closed', '2019-08-31')
            //    sql = ("Insert into EStopCards (UserID,FirstName,LastName,DateCreated,SigNesigPostupak,NesigRadnjaUvijet," + checkHeaders + "DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES (" + UserID + " ,'" + FName + "' ,'" + LName + "' ,'" + DateCreated + "', '" + 0 + "', '" + UaUc + "', " + checkValues + "'" + d1 + "', '" + opis.ToString() + "', '" + korekcija.ToString() + "', '" + AnalizaUzroka.ToString() +
            //        "', '" + OdgovornaOsoba.ToString() + "', '" + d2 + "', '" + Komentar.ToString() +
            //        "', '" + Status.ToString() + "', '" + d3 + "')");
            //    //sql = ("Insert into EStopCards (UserID,SigNesigPostupak,DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES ( 1, 1,'1/7/2019', 'das', 'kor', 'anal', 'OdgovornaOsoba', '7/7/2020', 'kome', 'closed','7/8/2020')");
            //    SqlConnection con = new SqlConnection(constr);
            //    SqlCommand cmd = new SqlCommand();
            //    con.Open();
            //    command = new SqlCommand(sql, con);
            //    command.ExecuteNonQuery();
            //    command.Dispose();
            //    con.Close();
            }
        }
        private DataTable GetData()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus FROM EStopCards"))
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
        protected bool CheckDate(String date)

        {

            try

            {

                DateTime dt = DateTime.Parse(date);

                return true;

            }
            catch

            {

                return false;

            }

        }
    }
}