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
    public partial class MasterEdit : System.Web.UI.Page
    {
        private string constr = System.Configuration.ConfigurationManager.ConnectionStrings["CroscoStopCardConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["UserRole"] != "MasterAdmin") Response.Redirect("Home.aspx");
            if (!IsPostBack)
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
                    html.Append(stri);
                    i = i + 1;
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("<th style='cursor:pointer'>");
                html.Append("Delete kartica");
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
                    html.Append("Delete!");
                    html.Append("</span>");
                    html.Append("</td>");

                    html.Append("</tr>");
                }
                // html.Append("</tbody>")
                // Table end.
                html.Append("</table>");
                //Response.Write(html);
                //Response.End();
                // Append the HTML string to Placeholder.
                MasterTablicaSTOP.Controls.Add(new Literal()
                {
                    Text = html.ToString()
                });
              
            }
        }

        private DataTable GetData()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select * FROM EStopCards"))
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