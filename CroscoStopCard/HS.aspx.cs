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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["UserRole"] == null) Response.Redirect("Home.aspx");
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

        private DataTable GetData()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select  * FROM HS"))
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