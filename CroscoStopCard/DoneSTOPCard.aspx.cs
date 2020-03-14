using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.Script.Services;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualBasic;
using System.Data;
using System.Configuration;

namespace CroscoStopCard
{
    public partial class DoneSTOPCard : System.Web.UI.Page
    {
        private string constr = System.Configuration.ConfigurationManager.ConnectionStrings["CroscoStopCardConnectionString"].ConnectionString;
        string opr, STOPID, ime, prezime;

        protected void PDFbtn_Click(object sender, EventArgs e)
        {
            StringWriter sw2 = new StringWriter();

            HtmlTextWriter hw2 = new HtmlTextWriter(sw2);

            CreatePDF.RenderControl(hw2);



            byte[] bytes = PDFUtility.RenderPDF(sw2.ToString(), Server.MapPath("~/fonts/Roboto-Regular.ttf"));

            FileStream fs = new FileStream(@"\TempFiles\asdfas.pdf", FileMode.Create);

            fs.Write(bytes, 0, bytes.Length);

            fs.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["UserRole"] == null) Response.Redirect("Home.aspx");
            //if (Session["STOPID"] != null)
            //{
            //    STOPID = (string)Session["STOPID"];
            //}
            if (Request.QueryString["opr"] != null)
            {
                Session["opr"] = Request.QueryString["opr"];
                Session["STOPID"] = Request.QueryString["STOPID"];
            }
            

            //opr = Request.QueryString["opr"];
            //STOPID = Request.QueryString["STOPID"];
            //result = int.Parse(STOPID);

            if ((string)Session["opr"] == "display")
            {


                if (!this.IsPostBack)
                {
                    DataTable dt = new DataTable();
                    // Populating a DataTable from database.
                    dt = this.GetData();

                    // Building an HTML string.
                    StringBuilder html = new StringBuilder();

                    // Table start.
                    // html.Append("<table id='mytb1' border = '1' cellspacing='1' class='tablesorter'>")
                    html.Append("<table id='mytb2' Class='table table-striped table-bordered' style='width:100%'>");
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
                    html.Append("Fun");
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
                        html.Append("<td Class='btn'>");
                        html.Append("<input type='button' value='Kartica' onclick='deleteRow();' />");
                        html.Append("</td>");
                        html.Append("<td Class='btn'>");
                        html.Append("<a href='DoneSTOPCard.aspx' onclick='ShowStop();' target='_blank'>Done Stop Card</a>");
                        html.Append("</td>");
                        html.Append("</tr>");
                    }
                    // html.Append("</tbody>")
                    // Table end.
                    html.Append("</table>");
                    // Append the HTML string to Placeholder.
                    tablicaSTOP1.Controls.Add(new Literal()
                    {
                        Text = html.ToString()
                    });
                    DataTable dt1 = new DataTable();
                    //DataRow ro1 = new DataRow();
                    //DataColumn col = new DataColumn();
                    dt1 = this.GetData();

                    for (int x = 0; x < dt1.Rows.Count; x++)
                    {
                        for (int y = 0; y < dt1.Columns.Count; y++)
                        {
                            DataColumn Useres = dt1.Columns[y];
                            string header = Useres.ToString();
                            object cell = dt.Rows[x].ItemArray[y];
                            if (header == "OpisSukNesuk")
                            {
                                opiskartice.InnerText = cell.ToString();
                            }
                            else if (header == "KorektivneRadnje")
                            {
                                korekcija.InnerText = cell.ToString();
                            }
                            else if (header == "AnalizaUzorka")
                            {
                                analizaUzroka.InnerText = cell.ToString();
                            }
                            else if (header == "OdgovornaOsoba")
                            {
                                odgovornaOsoba.InnerText = cell.ToString();
                            }
                            else if (header == "Komentar")
                            {
                                komentar.InnerText = cell.ToString();
                            }
                            else if (header == "DatumOtvaranja")
                            {
                                string datomOtva = cell.ToString();
                                DatumOt.Value = DateTime.Parse(datomOtva).ToString("yyyy-MM-dd");
                            }
                            else if (header == "DatumZatvaranja")
                            {
                                string datomZatva = cell.ToString();
                                datumZatvaranja.Value = DateTime.Parse(datomZatva).ToString("yyyy-MM-dd");
                            }
                            else if (header == "RokZaRjes")
                            {
                                string RokZa = cell.ToString();
                                rokZaRijesavanja.Value = DateTime.Parse(RokZa).ToString("yyyy-MM-dd");
                            }
                            else if (header == "CardStatus")
                            {
                                status.Value = cell.ToString();
                            }
                            else if (header == "SigNesigPostupak")
                            {
                                if (cell.ToString() == "True")
                                {
                                    Safe.Checked = true;
                                }
                                else
                                {
                                    UnSafe.Checked = true;
                                }
                            }
                            else if (header == "NesigRadnjaUvijet")
                            {
                                if (cell.ToString() == "1")
                                {
                                    UCUAIzbbornik.Value = "UnSafeAct";
                                }
                                else
                                {
                                    UCUAIzbbornik.Value = "UnSafeCondition";
                                }
                            }
                            else if (header == "ReakcijaLjudi")
                            {
                                if (cell.ToString() == "True")
                                {
                                    ReakcijaLjudiId.Checked = true;
                                }
                                else
                                {
                                    ReakcijaLjudiId.Checked = false;
                                }
                            }
                            else if (header == "Ozo")
                            {
                                if (cell.ToString() == "True")
                                {
                                    ozoElmnt.Checked = true;
                                }
                                else
                                {
                                    ozoElmnt.Checked = false;
                                }
                            }
                            else if (header == "polozajLjudi")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo.Checked = true;
                                }
                                else
                                {
                                    polo.Checked = false;
                                }
                            }
                            else if (header == "alatioOprema")
                            {
                                if (cell.ToString() == "True")
                                {
                                    alati.Checked = true;
                                }
                                else
                                {
                                    alati.Checked = false;
                                }
                            }
                            else if (header == "ProcedureiUrednosti")
                            {
                                if (cell.ToString() == "True")
                                {
                                    proc.Checked = true;
                                }
                                else
                                {
                                    proc.Checked = false;
                                }
                            }
                            else if (header == "PodReak1")
                            {
                                if (cell.ToString() == "True")
                                {
                                    RLj1.Checked = true;
                                }
                                else
                                {
                                    RLj1.Checked = false;
                                }
                            }
                            else if (header == "PodReak2")
                            {
                                if (cell.ToString() == "True")
                                {
                                    RLj2.Checked = true;
                                }
                                else
                                {
                                    RLj2.Checked = false;
                                }
                            }
                            else if (header == "PodReak3")
                            {
                                if (cell.ToString() == "True")
                                {
                                    RLj3.Checked = true;
                                }
                                else
                                {
                                    RLj3.Checked = false;
                                }
                            }
                            else if (header == "PodReak4")
                            {
                                if (cell.ToString() == "True")
                                {
                                    RLj4.Checked = true;
                                }
                                else
                                {
                                    RLj4.Checked = false;
                                }
                            }
                            else if (header == "PodReak5")
                            {
                                if (cell.ToString() == "True")
                                {
                                    RLj5.Checked = true;
                                }
                                else
                                {
                                    RLj5.Checked = false;
                                }
                            }
                            else if (header == "PodReak6")
                            {
                                if (cell.ToString() == "True")
                                {
                                    RLj6.Checked = true;
                                }
                                else
                                {
                                    RLj6.Checked = false;
                                }
                            }
                            else if (header == "PodOzo1")
                            {
                                if (cell.ToString() == "True")
                                {
                                    ozo1.Checked = true;
                                }
                                else
                                {
                                    ozo1.Checked = false;
                                }
                            }
                            else if (header == "PodOzo2")
                            {
                                if (cell.ToString() == "True")
                                {
                                    ozo2.Checked = true;
                                }
                                else
                                {
                                    ozo2.Checked = false;
                                }
                            }
                            else if (header == "PodOzo3")
                            {
                                if (cell.ToString() == "True")
                                {
                                    ozo3.Checked = true;
                                }
                                else
                                {
                                    ozo3.Checked = false;
                                }
                            }
                            else if (header == "PodOzo4")
                            {
                                if (cell.ToString() == "True")
                                {
                                    ozo4.Checked = true;
                                }
                                else
                                {
                                    ozo4.Checked = false;
                                }
                            }
                            else if (header == "PodOzo5")
                            {
                                if (cell.ToString() == "True")
                                {
                                    ozo5.Checked = true;
                                }
                                else
                                {
                                    ozo5.Checked = false;
                                }
                            }
                            else if (header == "PodOzo6")
                            {
                                if (cell.ToString() == "True")
                                {
                                    ozo6.Checked = true;
                                }
                                else
                                {
                                    ozo6.Checked = false;
                                }
                            }
                            else if (header == "PodOzo7")
                            {
                                if (cell.ToString() == "True")
                                {
                                    ozo7.Checked = true;
                                }
                                else
                                {
                                    ozo7.Checked = false;
                                }
                            }
                            else if (header == "PodPolo1")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo1.Checked = true;
                                }
                                else
                                {
                                    polo1.Checked = false;
                                }
                            }
                            else if (header == "PodPolo2")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo2.Checked = true;
                                }
                                else
                                {
                                    polo2.Checked = false;
                                }
                            }
                            else if (header == "PodPolo3")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo3.Checked = true;
                                }
                                else
                                {
                                    polo3.Checked = false;
                                }
                            }
                            else if (header == "PodPolo4")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo4.Checked = true;
                                }
                                else
                                {
                                    polo4.Checked = false;
                                }
                            }
                            else if (header == "PodPolo5")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo5.Checked = true;
                                }
                                else
                                {
                                    polo5.Checked = false;
                                }
                            }
                            else if (header == "PodPolo6")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo6.Checked = true;
                                }
                                else
                                {
                                    polo6.Checked = false;
                                }
                            }
                            else if (header == "PodPolo7")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo7.Checked = true;
                                }
                                else
                                {
                                    polo7.Checked = false;
                                }
                            }
                            else if (header == "PodPolo5")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo8.Checked = true;
                                }
                                else
                                {
                                    polo8.Checked = false;
                                }
                            }
                            else if (header == "PodPolo9")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo9.Checked = true;
                                }
                                else
                                {
                                    polo9.Checked = false;
                                }
                            }
                            else if (header == "PodPolo10")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo10.Checked = true;
                                }
                                else
                                {
                                    polo10.Checked = false;
                                }
                            }
                            else if (header == "PodPolo11")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo11.Checked = true;
                                }
                                else
                                {
                                    polo11.Checked = false;
                                }
                            }
                            else if (header == "PodPolo12")
                            {
                                if (cell.ToString() == "True")
                                {
                                    polo12.Checked = true;
                                }
                                else
                                {
                                    polo12.Checked = false;
                                }
                            }
                            else if (header == "PodAlati1")
                            {
                                if (cell.ToString() == "True")
                                {
                                    alati1.Checked = true;
                                }
                                else
                                {
                                    alati1.Checked = false;
                                }
                            }
                            else if (header == "PodAlati2")
                            {
                                if (cell.ToString() == "True")
                                {
                                    alati2.Checked = true;
                                }
                                else
                                {
                                    alati2.Checked = false;
                                }
                            }
                            else if (header == "PodAlati3")
                            {
                                if (cell.ToString() == "True")
                                {
                                    alati3.Checked = true;
                                }
                                else
                                {
                                    alati3.Checked = false;
                                }
                            }
                            else if (header == "PodProce1")
                            {
                                if (cell.ToString() == "True")
                                {
                                    proc1.Checked = true;
                                }
                                else
                                {
                                    proc1.Checked = false;
                                }
                            }
                            else if (header == "PodProce2")
                            {
                                if (cell.ToString() == "True")
                                {
                                    proc2.Checked = true;
                                }
                                else
                                {
                                    proc2.Checked = false;
                                }
                            }
                            else if (header == "PodProce3")
                            {
                                if (cell.ToString() == "True")
                                {
                                    proc3.Checked = true;
                                }
                                else
                                {
                                    proc3.Checked = false;
                                }
                            }
                            else if (header == "PodProce4")
                            {
                                if (cell.ToString() == "True")
                                {
                                    proc4.Checked = true;
                                }
                                else
                                {
                                    proc4.Checked = false;
                                }
                            }
                            else if (header == "PodProce5")
                            {
                                if (cell.ToString() == "True")
                                {
                                    proc5.Checked = true;
                                }
                                else
                                {
                                    proc5.Checked = false;
                                }
                            }
                            else if (header == "PodProce6")
                            {
                                if (cell.ToString() == "True")
                                {
                                    proc6.Checked = true;
                                }
                                else
                                {
                                    proc6.Checked = false;
                                }
                            }
                            else if ((header == "FirstName") || (header == "LastName"))
                            {
                                
                                if (header == "FirstName")
                                {
                                    ime = cell.ToString();
                                }
                                else
                                {
                                    prezime = cell.ToString();
                                }
                                if ((ime != null) & (prezime != null)){
                                    Kreiator.Value= ime.ToString() + " " + prezime.ToString();
                                    //string imeiprezime= ime.ToString() + " " + prezime.ToString();
                                }
                                
                            }
                            else if (header == "DateCreated")
                            {
                                string DateCreated = cell.ToString();
                                DatumKreiranje.Value = DateTime.Parse(DateCreated).ToString("yyyy-MM-dd");
                            }
                        }
                    }
                }
            }
        }
        private DataTable GetData()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM EStopCards WHERE EStopCardID = " + (string)Session["STOPID"]))
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