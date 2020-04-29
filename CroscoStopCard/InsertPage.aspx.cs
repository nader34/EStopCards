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
    public partial class InsertPage : System.Web.UI.Page
    {
        private string constr = System.Configuration.ConfigurationManager.ConnectionStrings["CroscoStopCardConnectionString"].ConnectionString;
        string opr, opis, DateCreated, DatumOtvaranja, korekcija, AnalizaUzroka, OdgovornaOsoba, RokZaRijesavanja, Komentar, Status, DatumZatvaranja, STOPCheckBoxes, UaUc;
        int UserID;
        string Stopid1, STOPID, OrgJed, SubOrgJed, SubOrgJedDva;
        protected void Page_Load(object sender, EventArgs e)
        {
            //EStopCard eStopCard = new EStopCard();
            //using (CroscoStopCardEntities SCDB = new CroscoStopCardEntities())
            //{
            //    eStopCard.UserID = (int)Session["userID"];
            //    SCDB.EStopCards.Add(eStopCard);
            //    SCDB.SaveChanges();

            //}
            if (Session["user"] == null && Session["UserRole"] == null) Response.Redirect("Home.aspx");

            if (Session["STOPID"] != null)
            {
                STOPID = (string)Session["STOPID"];
            }
            UserID = (int)Session["userID"];
            OrgJed = (string)Session["OJ"];
            SubOrgJed = (string)Session["SubOJ"];
            SubOrgJedDva = (string)Session["SubOJDva"];
            String FName = (string)Session["FirstName"];
            String LName = (string)Session["LastName"];
            DateCreated = DateTime.Today.ToString("yyyy-MM-dd");
            opr = Request.QueryString["opr"];
            DatumOtvaranja = Request.QueryString["DatumOtvaranja"]; 
            opis = Request.QueryString["opis"];
            korekcija = Request.QueryString["korekcija"];
            AnalizaUzroka = Request.QueryString["AnalizaUzroka"];
            OdgovornaOsoba = Request.QueryString["OdgovornaOsoba"];
            RokZaRijesavanja = Request.QueryString["RokZaRijesavanja"];
            Komentar = Request.QueryString["Komentar"];
            Status = Request.QueryString["Status"];
            DatumZatvaranja = Request.QueryString["DatumZatvaranja"];

            //if (DatumOtvaranja != null)
            //{
                //var d1 = DateTime.Parse(DatumOtvaranja).ToString("yyyy-MM-dd");
                //var d2 = DateTime.Parse(RokZaRijesavanja).ToString("yyyy-MM-dd");
                //var d3 = DateTime.Parse(DatumZatvaranja).ToString("yyyy-MM-dd");
            //}
            
            //DatumOtvaranjaFormat = DatumOtvaranja.ToString("dd/MM/yyyy");
            UaUc = Request.QueryString["UaUc"];
            STOPCheckBoxes = Request.QueryString["STOPCheckBoxes"];
            if (opr == "Safe")
            {
                var d1 = DateTime.Parse(DatumOtvaranja).ToString("yyyy-MM-dd");
                var d2 = DateTime.Parse(RokZaRijesavanja).ToString("yyyy-MM-dd");
                var d3 = DateTime.Parse(DatumZatvaranja).ToString("yyyy-MM-dd");
                SqlCommand command;
                string sql = null;
                // comstrin = "Insert into CROSCO_CBC values ('" & Ime.ToString() & "','" & Prezime.ToString() & "')"
                sql = ("Insert into EStopCards (UserID,FirstName,LastName,OJ,SubOJ,SubOJDva,DateCreated,SigNesigPostupak,DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES (" + UserID + " ,'" + FName + "' ,'" + LName + "' ,'" + OrgJed + "', '" + SubOrgJed + "', '" + SubOrgJedDva + "', '" + DateCreated + "', '" + 1 + "', '" +
                    d1 + "', '" + opis.ToString() + "', '" + korekcija.ToString() + "', '" + AnalizaUzroka.ToString() +
                    "', '" + OdgovornaOsoba.ToString() + "', '" + d2 + "', '" + Komentar.ToString() +
                    "', '" + Status.ToString() + "', '" + d3 + "')");
                //sql = ("Insert into EStopCards (UserID,SigNesigPostupak,DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES ( 1, 1,'1/7/2019', 'das', 'kor', 'anal', 'OdgovornaOsoba', '7/7/2020', 'kome', 'closed','7/8/2020')");
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                con.Open();
                command = new SqlCommand(sql, con);
                command.ExecuteNonQuery();
                command.Dispose();
                con.Close();
                //MessageBox.Show(" ExecuteNonQuery in SqlCommand executed !!");

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
                html.Append("Otvori karticu");
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
            else if (opr == "displayAdmin")
            {
                DataTable dt = new DataTable();
               
                
                // Populating a DataTable from database.
                dt = this.GetDataAdmin();

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
                html.Append("Otvori");
                html.Append("</th>");

                html.Append("<th style='cursor:pointer'>");
                html.Append("Edit");
                html.Append("</th>");

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

                    html.Append("<td Class='STOPCardbtn btn'>");
                    //html.Append("<a href='DoneSTOPCard.aspx' target='_blank'>Done Stop Card</a>");
                    html.Append("<span>");
                    html.Append("Pregled");
                    html.Append("</span>");
                    html.Append("</td>");



                    html.Append("<td Class='btnEdit EditSTOPCardbtn btn-primary'>");
                    //html.Append("<a href='DoneSTOPCard.aspx' target='_blank'>Done Stop Card</a>");
                    html.Append("<span>");
                    html.Append("Edit button");
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

                Session["STOPID"] = Request.QueryString["STOPID"];
                Stopid1 = Request.QueryString["STOPid1"];
                //var DateCreated1 = DateTime.Parse(DatumOtvaranja1).ToString("yyyy-MM-dd");
                SqlCommand command;
                string sql = null;
                sql = ("UPDATE EStopCards SET Komentar = '" + Komentar.ToString() + "', " + "CardStatus = '" + Status.ToString() + "', " + "lastModifiedID = '" + UserID + "', " + "lastModifiedName = '" + FName + "', " + 
                    "lastModifiedLastName = '" + LName + "' WHERE EStopCardID = " + Stopid1.ToString());

                //sql = ("UPDATE EStopCards SET Komentar = ,CardStatus,lastModifiedID,lastModifiedName,lastModifiedLastName= '" + Komentar.ToString() +
                //    "', '" + Status.ToString() + "', '" + UserID + "', '" + FName + "', '" + LName + "' WHERE EStopCardID = " + STOPID);

                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                con.Open();
                command = new SqlCommand(sql, con);
                command.ExecuteNonQuery();
                command.Dispose();
                con.Close();
            }
            else if (opr=="UpdateNominacije")
            {
                STOPID = Request.QueryString["STOPID"];

                //var DateCreated1 = DateTime.Parse(DatumOtvaranja1).ToString("yyyy-MM-dd");
                SqlCommand command;
                string sql = null;
                if ((string)Session["OJ"] == "Uprava")
                {
                    string rezultati= Request.QueryString["rezul"];
                    if (rezultati == "Odaberi")
                    {
                        sql = ("UPDATE EStopCards SET UziIzbor = 'True', Dobitne = NULL WHERE EStopCardID = " + STOPID);
                    }
                    else if (rezultati == "Prvo mjesto")
                    {
                        sql = ("UPDATE EStopCards SET UziIzbor = 'False', Dobitne = '1' WHERE EStopCardID = " + STOPID);
                    }
                    else if (rezultati == "Drugo mjesto")
                    {
                        sql = ("UPDATE EStopCards SET UziIzbor = 'False', Dobitne = '2' WHERE EStopCardID = " + STOPID);
                    }
                    else if (rezultati == "Treće mjesto")
                    {
                        sql = ("UPDATE EStopCards SET UziIzbor = 'False', Dobitne = '3' WHERE EStopCardID = " + STOPID);
                    }

                }
                else if ((string)Session["UserRole"] == "LocalAdmin") 
                {
                    sql = ("UPDATE EStopCards SET NominacijeLocal = 'True' WHERE EStopCardID = " + STOPID);
                }
                else if((string)Session["UserRole"] == "Admin")
                {
                    sql = ("UPDATE EStopCards SET NominacijeAdmin = 'True' WHERE EStopCardID = " + STOPID);
                }
                else if ((string)Session["UserRole"] == "Manager")
                {
                    sql = ("UPDATE EStopCards SET NominacijeManager = 'True', UziIzbor = 'True'  WHERE EStopCardID = " + STOPID);
                }
                //komisija
                else if ((string)Session["UserRole"] == "MasterAdmin")
                {
                    sql = ("UPDATE EStopCards SET UziIzbor = 'False', Dobitne = '1'  WHERE EStopCardID = " + STOPID);
                }

                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                con.Open();
                command = new SqlCommand(sql, con);
                command.ExecuteNonQuery();
                command.Dispose();
                con.Close();
            }
            else if (opr == "displayNomination")
            {
                DataTable dt = new DataTable();
                if ((string)Session["OJ"] == "Uprava")
                {
                    dt = this.GetDataKomisija();
                    StringBuilder html = new StringBuilder();
                    html.Append("<table id='tb1Nominacija' class='table table-striped table-bordered mydatatable' style='width: 100 %'>");
                    html.Append("<thead>");
                    html.Append("<tr>");
                    int i = 0;
                    foreach (DataColumn column in dt.Columns)
                    {
                        string stri;
                        stri = "<th style='cursor:pointer'>";
                        html.Append(stri);
                        i = i + 1;
                        html.Append(column.ColumnName);
                        html.Append("</th>");
                    }
                    html.Append("<th style='cursor:pointer'>Odabir</th></tr></thead>");                   
                    foreach (DataRow row in dt.Rows)
                    {
                        html.Append("<tr class='item'>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            html.Append("<td class='txtBoxDva'>");
                            html.Append("<span>");
                            html.Append(row[column.ColumnName]);
                            html.Append("</span>");
                            html.Append("</td>");
                        }
                        //html.Append("<td>");
                        //html.Append("<td><span><select class='mdb-select md-form colorful-select dropdown-success Dobitkol'><option selected>Odaberi</option><option>Prvo mjesto</option><option>Drugo mjesto</option><option>Treće mjesto</option></select></span></td></tr>");
                        html.Append("<td><select class='form-control Dobitkol'><option selected>Odaberi</option><option>Prvo mjesto</option><option>Drugo mjesto</option><option>Treće mjesto</option></select></td></tr>");
                        //html.Append("</tr>");
                    }
                    html.Append("</table>");
                    Response.Write(html);
                    Response.End();
                }
                else
                {
                    if ((string)Session["UserRole"] == "LocalAdmin")
                    {
                        // Populating a DataTable from database.
                        dt = this.GetDataLocal();
                    }
                    else if ((string)Session["UserRole"] == "Admin")
                    {
                        // Populating a DataTable from database.
                        dt = this.GetDataAdmin1();
                    }
                    else if ((string)Session["UserRole"] == "Manager")
                    {
                        // Populating a DataTable from database.
                        dt = this.GetDataManager();
                    }
                    else if ((string)Session["UserRole"] == "MasterAdmin")
                    {
                        // Populating a DataTable from database.
                        dt = this.GetDataMaster();
                    }


                    // Building an HTML string.
                    StringBuilder html = new StringBuilder();

                    // Table start.
                    // html.Append("<table id='mytb1' border = '1' cellspacing='1' class='tablesorter'>")
                    html.Append("<table id='tb1Nominacija' class='table table-striped table-bordered mydatatable' style='width: 100 %'>");
                    // Building the Header row.
                    html.Append("<thead>");
                    html.Append("<tr>");
                    int i = 0;
                    foreach (DataColumn column in dt.Columns)
                    {
                        string stri;
                        stri = "<th style='cursor:pointer'>";
                        html.Append(stri);
                        i = i + 1;
                        html.Append(column.ColumnName);
                        html.Append("</th>");
                    }
                    html.Append("<th style='cursor:pointer'>Nominacije</th>");
                    //html.Append("Nominacije");
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

                        html.Append("<td Class='btn-primary nominLocal'>");
                        //html.Append("<a href='DoneSTOPCard.aspx' target='_blank'>Done Stop Card</a>");
                        html.Append("<span>");
                        html.Append("Nominiraj");
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
            }
            else
            {
                var d1 = DateTime.Parse(DatumOtvaranja).ToString("yyyy-MM-dd");
                var d2 = "";
                var d3 = "";
                if (CheckDate(RokZaRijesavanja) == true)
                {
                    d2 = DateTime.Parse(RokZaRijesavanja).ToString("yyyy-MM-dd");
                }
                if (CheckDate(DatumZatvaranja) == true)
                {
                    d3 = DateTime.Parse(DatumZatvaranja).ToString("yyyy-MM-dd");
                }
                string[] boxes = STOPCheckBoxes.Split(',');
                string xi = boxes[boxes.Length - 1];
                int y = Convert.ToInt32(xi);
                string checkHeaders = "";
                string checkValues = "";
                string checkbrojeve = "'1'";
                for (int j = 0; j < y; j++)
                {
                    string neznam = boxes[j].ToString();
                    checkHeaders += neznam + ',';
                    checkValues += checkbrojeve.ToString() + ", ";
                }
                string checkHead = checkHeaders.Substring(0, checkHeaders.Length - 1);
                string checkValue = checkValues.Substring(0, checkValues.Length - 1);
                SqlCommand command;
                string sql = null;
                // comstrin = "Insert into CROSCO_CBC values ('" & Ime.ToString() & "','" & Prezime.ToString() & "')"
                //Insert into EStopCards (UserID,DateCreated,SigNesigPostupak,NesigRadnjaUvijet,DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES (1 ','2019-08-31', '0', 'Unsafe act', '2019-08-31', 'dsSFD', 'FDSAFDAS', '', 'Upištite ime, funkcija ili firma', '2019-08-31', 'Komentar', 'closed', '2019-08-31')
                sql = ("Insert into EStopCards (UserID,FirstName,LastName,OJ,SubOJ,SubOJDva,DateCreated,SigNesigPostupak,NesigRadnjaUvijet," + checkHeaders + "DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES (" + UserID + " ,'" + FName + "' ,'" + LName + "' ,'" + OrgJed + "', '" + SubOrgJed + "', '" + SubOrgJedDva + "', '" + DateCreated + "', '" + 0 + "', '" + UaUc + "', " + checkValues + "'" + d1 + "', '" + opis.ToString() + "', '" + korekcija.ToString() + "', '" + AnalizaUzroka.ToString() +
                    "', '" + OdgovornaOsoba.ToString() + "', '" + d2 + "', '" + Komentar.ToString() +
                    "', '" + Status.ToString() + "', '" + d3 + "')");
                //sql = ("Insert into EStopCards (UserID,SigNesigPostupak,DatumOtvaranja,OpisSukNesuk,KorektivneRadnje,AnalizaUzorka,OdgovornaOsoba,RokZaRjes,Komentar,CardStatus,DatumZatvaranja) VALUES ( 1, 1,'1/7/2019', 'das', 'kor', 'anal', 'OdgovornaOsoba', '7/7/2020', 'kome', 'closed','7/8/2020')");
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                con.Open();
                command = new SqlCommand(sql, con);
                command.ExecuteNonQuery();
                command.Dispose();
                con.Close();
            }
        }
        private DataTable GetData()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus, Komentar FROM EStopCards WHERE UserID = " + (int)Session["userID"]))
                //using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus FROM EStopCards"))
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
        private DataTable GetDataAdmin()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus FROM EStopCards"))
                //using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus FROM EStopCards"))
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
        private DataTable GetDataLocal()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus, NominacijeLocal FROM EStopCards WHERE SubOJDva = '" + (string)Session["SubOJDva"] + "'"))
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
        private DataTable GetDataAdmin1()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus, NominacijeAdmin FROM EStopCards WHERE SubOJ = '" + (string)Session["SubOJ"] + "' AND NominacijeLocal = 'True'"))
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
        private DataTable GetDataManager()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus, NominacijeManager FROM EStopCards WHERE OJ = '" + (string)Session["OJ"] + "' AND NominacijeAdmin = 'True'"))
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
        private DataTable GetDataMaster()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus, NominacijeManager, UziIzbor FROM EStopCards WHERE UziIzbor = 'True'"))
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
        private DataTable GetDataKomisija()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, DateCreated, OpisSukNesuk, KorektivneRadnje, CardStatus FROM EStopCards WHERE UziIzbor = 'True'"))
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