using System;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;
using System.IO;
using NPOI.XSSF.UserModel;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Text;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace CroscoStopCard
{
    public partial class MasterAdminPage : System.Web.UI.Page
    {
        private string constr = System.Configuration.ConfigurationManager.ConnectionStrings["CroscoStopCardConnectionString"].ConnectionString;
        public long EditUserID
        {
            get { return (long)ViewState["EditUserID"]; }
            set { ViewState["EditUserID"] = value; }
        }


        private static string GetFilesPath;
        bool valid = true;
        StringBuilder error = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] == null) Response.Redirect("Home.aspx");
                        
            if ((string)Session["UserRole"] == "Admin")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Users WHERE OJ LIKE '" + (string)Session["OJ"] + "'";
               
            }
            else if ((string)Session["UserRole"] == "LocalAdmin")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Users WHERE OJ LIKE '" + (string)Session["OJ"] + "'";
                
            }
            else if ((string)Session["UserRole"] == "Manager")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Users WHERE OJ LIKE '" + (string)Session["OJ"] + "'";
                //SqlDataSource2.SelectCommand = "SELECT * from StopCards JOIN Users ON StopCards.UserID = Users.UserID WHERE Users.OJ like '" + (string)Session["OJ"] + "'";
            }
            lblError.Visible = false;

            GetFilesPath = Server.MapPath("~/MyFiles/");

            if (Session["user"] == null && Session["UserRole"] == null) Response.Redirect("Home.aspx");
            if (!this.IsPostBack)
            {
                //opr = Request.QueryString["opr"];
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

                    //html.Append("<td Class='btn'>");
                    //html.Append("<span>");
                    //html.Append("PDF");
                    //html.Append("</span>");
                    //html.Append("</td>");

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


                // Append the HTML string to Placeholder.
                tablicaSTOP1.Controls.Add(new Literal()
                {
                    Text = html.ToString()
                });

            }
            Nomination_table();
            

        }

        void Page_LoadComplete(object sender, EventArgs e)
        {

        }

        protected void Nomination_table()
        {
            DataTable dt = new DataTable();
            if ((string)Session["UserRole"] == "LocalAdmin")
            {
                // Populating a DataTable from database.
                dt = this.GetDataLocal();
            }
            else if ((string)Session["UserRole"] == "Admin")
            {
                // Populating a DataTable from database.
                dt = this.GetDataAdmin();
            }
            else if ((string)Session["UserRole"] == "Manager")
            {
                // Populating a DataTable from database.
                dt = this.GetDataManager();
            }
            else if ((string)Session["UserRole"] == "MasterAdmin")
            {
                // Populating a DataTable from database. za komisiju zapravo
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
            html.Append("<th style='cursor:pointer'>");
            html.Append("Nominacije");
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


            // Append the HTML string to Placeholder.
            NominationTable.Controls.Add(new Literal()
            {
                Text = html.ToString()
            });

        
        }

        protected void btnImportUsers_Click(object sender, EventArgs e)
        {
            if (fuExcel.FileName != string.Empty)
            {
                if (fuExcel.FileName.ToLower().EndsWith(".xls") || fuExcel.FileName.ToLower().EndsWith(".xlsx"))
                {
                    fuExcel.SaveAs(Server.MapPath("~/TempFiles/") + fuExcel.FileName);

                    string filePath = Server.MapPath("~/TempFiles/") + fuExcel.FileName;

                    IWorkbook workbook;
                    if (fuExcel.FileName.ToLower().EndsWith(".xls"))
                        using (FileStream stream = new FileStream(filePath, FileMode.Open, FileAccess.Read))
                            workbook = new HSSFWorkbook(stream);
                    else using (FileStream stream = new FileStream(filePath, FileMode.Open, FileAccess.Read))
                            workbook = new XSSFWorkbook(stream);

                    ISheet sheet = workbook.GetSheetAt(0);
                    DataTable dt = new DataTable(sheet.SheetName);

                    IRow headerRow = sheet.GetRow(0);
                    foreach (ICell headerCell in headerRow)
                    {
                        dt.Columns.Add(headerCell.ToString());
                    }

                    int rowIndex = 0;
                    foreach (IRow row in sheet)
                    {
                        if (rowIndex++ == 0) continue;
                        DataRow dataRow = dt.NewRow();
                        dataRow.ItemArray = row.Cells.Select(c => c.ToString()).ToArray();
                        dt.Rows.Add(dataRow);
                    }

                    using (var SCDB = new CroscoStopCardEntities())
                    {
                        //int lastID = SCDB.Users.OrderByDescending(u => u.UserID).FirstOrDefault().UserID;
                        var listUsers = SCDB.Users.Select(x => x.UserName).ToArray();

                        for (int i = 0; i < dt.Rows.Count - 1; i++)
                        {
                            DataRow dr = dt.Rows[i];

                            if (listUsers.Contains(dr["UserName"].ToString())) continue;

                            try
                            {
                                if ((string)Session["UserRole"] == "Admin")
                                {
                                    SCDB.Users.Add(new User()
                                    {
                                        FirstName = dr["FirstName"].ToString(),
                                        LastName = dr["LastName"].ToString(),
                                        UserName = dr["UserName"].ToString(),
                                        Lozinka = PasswordHash.CreateHash(dr["Lozinka"].ToString()),
                                        MaticniBroj = Convert.ToInt32(dr["MaticniBroj"]),
                                        OJ = (string)Session["OJ"],
                                        SubOJ = dr["SubOJ"].ToString(),
                                        SubOJDva = dr["SubOJDva"].ToString(),
                                        Email = dr["Email"].ToString(),
                                        UserRole = "User"
                                    });
                                }
                                else
                                {
                                    SCDB.Users.Add(new User()
                                    {
                                        //UserID = ++lastID,
                                        FirstName = dr["FirstName"].ToString(),
                                        LastName = dr["LastName"].ToString(),
                                        UserName = dr["UserName"].ToString(),
                                        Lozinka = PasswordHash.CreateHash(dr["Lozinka"].ToString()),
                                        MaticniBroj = Convert.ToInt32(dr["MaticniBroj"]),
                                        OJ = dr["OJ"].ToString(),
                                        SubOJ = dr["SubOJ"].ToString(),
                                        SubOJDva = dr["SubOJDva"].ToString(),
                                        Email = dr["Email"].ToString(),
                                        UserRole = dr["UserRole"].ToString()
                                    });
                                }
                            }
                            catch (Exception ex)
                            {
                                GetErrorText = ex.Message;
                                lblError.Text = GetErrorText;
                                lblError.Visible = true;
                            }
                        }
                        try
                        {
                            SCDB.SaveChanges();
                        }
                        catch (Exception ex)
                        {
                            GetErrorText = ex.Message;
                            lblError.Text = GetErrorText;
                            lblError.Visible = true;
                        }
                    }
                    File.Delete(filePath);

                    Response.Redirect("AdminPage.aspx");
                }
                else
                {
                    GetErrorText = "Please choose an .xls or .xlsx file!";
                    lblError.Text = GetErrorText;
                    lblError.Visible = true;
                }
            }
            else
            {
                GetErrorText = "Please upload .xls or .xlsx file first!";
                lblError.Text = GetErrorText;
                lblError.Visible = true;
            }
        }

        protected void btnExportUsers_Click(object sender, EventArgs e)
        {
            var table = GenerateTableUsers("");
            GenerateExcelFile(table, "Users");
        }

        

        private DataTable GenerateTableUsers(string role)
        {
            using (var SCDB = new CroscoStopCardEntities())
            {
                DataTable dt = new DataTable();
                for (int i = 0; i < 10; i++)
                {
                    DataColumn column = null;
                    switch (i)
                    {
                        case 0:
                            column = new DataColumn("FirstName");
                            break;
                        case 1:
                            column = new DataColumn("LastName");
                            break;
                        case 2:
                            column = new DataColumn("UserName");
                            break;
                        case 3:
                            column = new DataColumn("Lozinka");
                            break;
                        case 4:
                            column = new DataColumn("MaticniBroj");
                            break;
                        case 5:
                            column = new DataColumn("OJ");
                            break;
                        case 6:
                            column = new DataColumn("SubOJ");
                            break;
                        case 7:
                            column = new DataColumn("SubOJDva");
                            break;
                        case 8:
                            column = new DataColumn("Email");
                            break;
                        case 9:
                            column = new DataColumn("UserRole");
                            break;
                        default:
                            break;
                    }
                    dt.Columns.Add(column);
                }

                (from rec in SCDB.Users.AsEnumerable()
                 select new
                 {
                     firstName = rec.FirstName,
                     lastName = rec.LastName,
                     userName = rec.UserName,
                     password = rec.Lozinka,
                     maticniBr = rec.MaticniBroj,
                     oj = rec.OJ,
                     subOJ = rec.SubOJ,
                     subOJDva = rec.SubOJDva,
                     email = rec.Email,
                     userRole = rec.UserRole
                 }).Aggregate(dt, (user, r) =>
                 {
                     dt.Rows.Add(r.firstName, r.lastName, r.userName, r.password, r.maticniBr, r.oj, r.subOJ, r.subOJDva, r.email, r.userRole);
                     return user;
                 });
                return dt;
            }
        }

        private void GenerateExcelFile(DataTable table, string sheetName)
        {
            var workbook = new XSSFWorkbook();
            var sheet = workbook.CreateSheet(sheetName);

            int cellIndex = 0;
            IRow headerRow = sheet.CreateRow(0);

            IFont font = workbook.CreateFont();
            font.Color = IndexedColors.White.Index;
            ICellStyle cellStyle = workbook.CreateCellStyle();
            cellStyle.FillBackgroundColor = IndexedColors.Black.Index;
            cellStyle.SetFont(font);
            cellStyle.FillPattern = FillPattern.SolidForeground;

            foreach (var headerCell in table.Columns)
            {
                headerRow.CreateCell(cellIndex);
                headerRow.Cells[cellIndex].CellStyle = cellStyle;
                headerRow.Cells[cellIndex].SetCellValue(headerCell.ToString());
                ++cellIndex;
            }

            cellIndex = 0;
            int rowIndex = 1;
            foreach (DataRow row in table.Rows)
            {
                IRow sheetRow = sheet.CreateRow(rowIndex);
                if (sheetName == "StopCards")
                {
                    foreach (var cell in row.ItemArray)
                    {
                        if (cellIndex == 0)
                        {
                            sheetRow.CreateCell(cellIndex, CellType.Numeric);
                            sheetRow.Cells[cellIndex].SetCellValue(int.Parse(cell.ToString()));
                        }
                        else if (cellIndex == 2)
                        {
                            sheetRow.CreateCell(cellIndex, CellType.Numeric);
                            sheetRow.Cells[cellIndex].SetCellValue(cell.ToString());
                        }
                        else
                        {
                            sheetRow.CreateCell(cellIndex);
                            sheetRow.Cells[cellIndex].SetCellValue(cell.ToString());
                        }

                        ++cellIndex;
                        if (cellIndex == 15) cellIndex = 0;
                    }
                    ++rowIndex;
                }
                else
                {
                    foreach (var cell in row.ItemArray)
                    {
                        if (cellIndex == 4)
                        {
                            sheetRow.CreateCell(cellIndex, CellType.Numeric);
                            sheetRow.Cells[cellIndex].SetCellValue(int.Parse(cell.ToString()));
                        }
                        else
                        {
                            sheetRow.CreateCell(cellIndex);
                            sheetRow.Cells[cellIndex].SetCellValue(cell.ToString());
                        }

                        ++cellIndex;
                        if (cellIndex == 10) cellIndex = 0;
                    }
                    ++rowIndex;
                }
            }

            var stream = new MemoryStream();
            workbook.Write(stream, true);

            string path = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Desktop), sheetName + "_" + DateTime.Now.ToString("dd.MM.yyyy_HHmm") + ".xlsx");

            FileStream file = new FileStream(path, FileMode.CreateNew, FileAccess.Write);
            stream.WriteTo(file);
            file.Close();
            stream.Close();
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            TextBox tbxLN = DetailsView1.FindControl("tbxLN") as TextBox;
            TextBox tbxMB = DetailsView1.FindControl("tbxMB") as TextBox;
            TextBox tbxPassInsert = DetailsView1.FindControl("tbxPassInsert") as TextBox;
            int checkMB = 0;

            Regex regPass = new Regex(@"^.*(?=.{8,50})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!.@#$%^&+=]).*$");
            Regex regEmail = new Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");

            string Username = tbxLN.Text.ToLower() + "." + tbxMB.Text;

            using (var SCDB = new CroscoStopCardEntities())
            {
                var listUsers = SCDB.Users.Select(x => x.UserName.ToLower()).ToArray();

                if (listUsers.Contains(Username))
                {
                    GetErrorText = "This Username: (" + Username + ") already exist!";
                    lblError.Text = GetErrorText;
                    lblError.Visible = true;
                    e.Cancel = true;
                }
            }

            if (string.IsNullOrWhiteSpace(((TextBox)DetailsView1.FindControl("tbxFN")).Text))
            {
                error.AppendLine("First Name is Required");
                valid = false;
            }
            if (string.IsNullOrWhiteSpace(tbxLN.Text))
            {
                error.AppendLine("Last Name is Required");
                valid = false;
            }
            if (string.IsNullOrWhiteSpace(tbxPassInsert.Text))
            {
                error.AppendLine("Password is Required");
                valid = false;
            }
            if (string.IsNullOrWhiteSpace(tbxMB.Text))
            {
                error.AppendLine("Matični Broj is Required");
                valid = false;
            }

            if (!int.TryParse(tbxMB.Text, out checkMB))
            {
                error.AppendLine("Matični Broj must be a number!");
                valid = false;
            }
            else
            {
                using (var SCDB = new CroscoStopCardEntities())
                {
                    var listMB = SCDB.Users.Select(x => x.MaticniBroj).ToArray();

                    if (listMB.Contains(checkMB))
                    {
                        GetErrorText = "There are already user with this Matični Broj: (" + checkMB + ")!";
                        lblError.Text = GetErrorText;
                        lblError.Visible = true;
                        e.Cancel = true;
                    }
                }
            }

            if (!regPass.IsMatch(tbxPassInsert.Text))
            {
                error.AppendLine("Password must satisfy this conditions: minimum 8 characters long A-Z, 1 uppercase, 1 lowercase character, 1 number and 1 special character (!.@#$%^&+=)");
                valid = false;
            }

            TextBox tbxEmail = DetailsView1.FindControl("tbxMail") as TextBox;
            if (!string.IsNullOrEmpty(tbxEmail.Text))
            {
                if (!regEmail.IsMatch(tbxEmail.Text))
                {
                    error.AppendLine("Entered Email address is not valid!");
                    valid = false;
                }
            }

            if (!valid)
            {
                GetErrorText = error.ToString();
                lblError.Text = GetErrorText;
                lblError.Visible = true;
                e.Cancel = true;
            }

            e.Values.Remove("Lozinka");
            e.Values.Remove("UserName");
            e.Values.Add("Lozinka", PasswordHash.CreateHash(tbxPassInsert.Text));
            e.Values.Add("UserName", Username);
            e.Values.Add("UserRole", ((DropDownList)DetailsView1.FindControl("ddlUserRole")).SelectedValue);
            e.Values.Add("OJ", ((DropDownList)DetailsView1.FindControl("ddlOJ")).SelectedValue);
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            if (valid) Response.Redirect("AdminPage.aspx");
        }

        protected void GVUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            CroscoStopCardEntities stopCardEntities = new CroscoStopCardEntities();

            var result = stopCardEntities.Users.Select(x => new { x.UserID, x.Lozinka }).Where(x => x.UserID == EditUserID);

            TextBox tbxPassEdit = GVUsers.Rows[e.RowIndex].FindControl("tbxPassEdit") as TextBox;
            if (tbxPassEdit.Text != result.Select(x => x.Lozinka).FirstOrDefault())
            {
                e.NewValues.Remove("Lozinka");
                e.NewValues.Add("Lozinka", PasswordHash.CreateHash(tbxPassEdit.Text));
            }
            e.NewValues.Add("UserRole", ((DropDownList)GVUsers.Rows[e.RowIndex].FindControl("ddlUserRole")).SelectedValue);
            e.NewValues.Add("OJ", ((DropDownList)GVUsers.Rows[e.RowIndex].FindControl("ddlOJ")).SelectedValue);
        }

        int editRowIndex = -1;
        protected void GVUsers_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowIndex == editRowIndex)
                {
                    CroscoStopCardEntities stopCardEntities = new CroscoStopCardEntities();

                    var result = stopCardEntities.Users.Select(x => new { x.UserID, x.UserRole, x.OJ }).Where(x => x.UserID == EditUserID);

                    DropDownList oj = e.Row.FindControl("ddlOJ") as DropDownList;
                    if (oj != null)
                    {
                        oj.SelectedValue = result.Select(x => x.OJ).FirstOrDefault();
                        if (((string)Session["UserRole"] == "Admin") || ((string)Session["UserRole"] == "LocalAdmin") || ((string)Session["UserRole"] == "Manager")) oj.Enabled = false;
                    }

                    DropDownList role = e.Row.FindControl("ddlUserRole") as DropDownList;
                    if (role != null)
                    {
                        role.SelectedValue = result.Select(x => x.UserRole).FirstOrDefault();
                        if (((string)Session["UserRole"] == "Admin") || ((string)Session["UserRole"] == "LocalAdmin") || ((string)Session["UserRole"] == "Manager")) role.Enabled = false;
                    }
                }
            }
        }

        protected void DetailsView1_DataBound(object sender, EventArgs e)
        {
            if (((string)Session["UserRole"] == "Admin") || ((string)Session["UserRole"] == "LocalAdmin") || ((string)Session["UserRole"] == "Manager"))
            {
                DropDownList oj = DetailsView1.FindControl("ddlOJ") as DropDownList;
                if (oj != null)
                {
                    oj.SelectedValue = (string)Session["OJ"];
                    oj.Enabled = false;
                }

                DropDownList role = DetailsView1.FindControl("ddlUserRole") as DropDownList;
                if (role != null) role.Items.Remove("MasterAdmin");
            }
        }

        protected void GVUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            EditUserID = long.Parse(GVUsers.Rows[e.NewEditIndex].Cells[1].Text);
            editRowIndex = e.NewEditIndex;
        }
       

        public long GetSCID
        {
            get
            {
                return (long?)ViewState["editSCID"] ?? -1;
            }
            set
            {
                ViewState["editSCID"] = value;
            }
        }

        public int GetSCRowIndex
        {
            get
            {
                return (int?)ViewState["editSCRowIndex"] ?? -1;
            }
            set
            {
                ViewState["editSCRowIndex"] = value;
            }
        }

        public string GetErrorText
        {
            get
            {
                return (string)ViewState["errorText"] ?? string.Empty;
            }
            set
            {
                ViewState["errorText"] = value;
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
        private DataTable GetDataLocal()
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                //using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus, NominacijeLocal FROM EStopCards"))
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
        private DataTable GetDataAdmin()
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
                using (SqlCommand cmd = new SqlCommand("Select  EStopCardID, OpisSukNesuk, KorektivneRadnje, CardStatus, UziIzbor FROM EStopCards WHERE UziIzbor = 'True'"))
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