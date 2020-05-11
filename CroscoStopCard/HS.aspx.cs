using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CroscoStopCard
{
    public partial class HS : System.Web.UI.Page
    {
        private string constr = System.Configuration.ConfigurationManager.ConnectionStrings["CroscoStopCardConnectionString"].ConnectionString;
        private string SqlString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] == null) Response.Redirect("Home.aspx");
            else
            {
                if (!this.IsPostBack)
                {
                    //opr = Request.QueryString["opr"];
                    DataTable dt = new DataTable();
                    // Populating a DataTable from database.
                    dt = this.GetData();

                    // Building an HTML string.
                    StringBuilder html = new StringBuilder();

                    html.Append("<tbody id='myHSTable'>");
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

                    }
                    html.Append("</tbody>");
                    // Table end.
                    //html.Append("</table>");


                    // Append the HTML string to Placeholder.
                    HStbody.Controls.Add(new Literal()
                    {
                        Text = html.ToString()
                    });

                }
            }
                
        }

        private DataTable GetData()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                if ((string)Session["UserRole"] == "MasterAdmin")
                {
                    SqlString = "Select * FROM HS";
                }
                else if ((string)Session["UserRole"] == "Manager")
                {
                    SqlString = "Select * FROM HS WHERE Oj1 = '" + (string)Session["OJ"] + "'";
                }
                else if ((string)Session["UserRole"] == "Admin")
                {
                    SqlString = "Select* FROM HS WHERE SubOj = '" + (string)Session["SubOJ"] + "'";
                }
                else if ((string)Session["UserRole"] == "LocalAdmin")
                {
                    SqlString = "Select  * FROM HS WHERE SubOjDva = '" + (string)Session["SubOJDva"] + "'";
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