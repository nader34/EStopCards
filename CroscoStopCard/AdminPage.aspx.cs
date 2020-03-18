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
                SqlDataSource2.SelectCommand = "SELECT * from StopCards JOIN Users ON StopCards.UserID = Users.UserID WHERE Users.OJ like '" + (string)Session["OJ"] + "'";
            }
            else if ((string)Session["UserRole"] == "LocalAdmin")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Users WHERE OJ LIKE '" + (string)Session["OJ"] + "'";
                SqlDataSource2.SelectCommand = "SELECT * from StopCards JOIN Users ON StopCards.UserID = Users.UserID WHERE Users.OJ like '" + (string)Session["OJ"] + "'";
            }
            else if ((string)Session["UserRole"] == "Manager")
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM Users WHERE OJ LIKE '" + (string)Session["OJ"] + "'";
                SqlDataSource2.SelectCommand = "SELECT * from StopCards JOIN Users ON StopCards.UserID = Users.UserID WHERE Users.OJ like '" + (string)Session["OJ"] + "'";
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
                // Populating a DataTable from database.
                dt = this.GetData();
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

        protected void btnExportCards_Click(object sender, EventArgs e)
        {
            var table = GenerateTableStopCards("");
            GenerateExcelFile(table, "StopCards");
        }

        private DataTable GenerateTableUsers(string role)
        {
            using (var SCDB = new CroscoStopCardEntities())
            {
                DataTable dt = new DataTable();
                for (int i = 0; i < 9; i++)
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

        private DataTable GenerateTableStopCards(string role)
        {
            using (var SCDB = new CroscoStopCardEntities())
            {
                DataTable dt = new DataTable();
                for (int i = 0; i < 15; i++)
                {
                    DataColumn column = null;
                    switch (i)
                    {
                        case 0:
                            column = new DataColumn("UserID");
                            break;
                        case 1:
                            column = new DataColumn("DateCreated");
                            break;
                        case 2:
                            column = new DataColumn("SigNesigPostupak");
                            break;
                        case 3:
                            column = new DataColumn("NesigRadnjaUvijet");
                            break;
                        case 4:
                            column = new DataColumn("ElementProm");
                            break;
                        case 5:
                            column = new DataColumn("PodelementProm");
                            break;
                        case 6:
                            column = new DataColumn("DatumOtvaranja");
                            break;
                        case 7:
                            column = new DataColumn("OpisSukNesuk");
                            break;
                        case 8:
                            column = new DataColumn("KorektivneRadnje");
                            break;
                        case 9:
                            column = new DataColumn("AnalizaUzorka");
                            break;
                        case 10:
                            column = new DataColumn("RokZaRjes");
                            break;
                        case 11:
                            column = new DataColumn("OdgovornaOsoba");
                            break;
                        case 12:
                            column = new DataColumn("CardStatus");
                            break;
                        case 13:
                            column = new DataColumn("Komentar");
                            break;
                        case 14:
                            column = new DataColumn("DatumZatvaranja");
                            break;
                        default:
                            break;
                    }
                    dt.Columns.Add(column);
                }

                (from rec in SCDB.StopCards.AsEnumerable()
                 select new
                 {
                     userID = rec.UserID,
                     dateCreated = rec.DateCreated,
                     sigNesigPostupak = rec.SigNesigPostupak,
                     nesigRadnjaUvijet = rec.NesigRadnjaUvijet,
                     elementProm = rec.ElementProm,
                     podelementProm = rec.PodelementProm,
                     datumOtvaranja = rec.DatumOtvaranja,
                     opisSukNesuk = rec.OpisSukNesuk,
                     korektivneRadnje = rec.KorektivneRadnje,
                     analizaUzorka = rec.AnalizaUzorka,
                     rokZaRjes = rec.RokZaRjes,
                     odgovornaOsoba = rec.OdgovornaOsoba,
                     cardStatus = rec.CardStatus,
                     komentar = rec.Komentar,
                     datumZatvaranja = rec.DatumZatvaranja
                 }).Aggregate(dt, (card, r) =>
                 {
                     dt.Rows.Add(r.userID, r.dateCreated, r.sigNesigPostupak, r.nesigRadnjaUvijet, r.elementProm, r.podelementProm, r.datumOtvaranja, r.opisSukNesuk,
                         r.korektivneRadnje, r.analizaUzorka, r.rokZaRjes, r.odgovornaOsoba, r.cardStatus, r.komentar, r.datumZatvaranja);
                     return card;
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
                        if (cellIndex == 9) cellIndex = 0;
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

        protected void GVStopCards_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowIndex == GetSCRowIndex)
                {
                    CroscoStopCardEntities stopCardEntities = new CroscoStopCardEntities();

                    var result = stopCardEntities.StopCards.Select(x => new { x.StopCardID, x.NesigRadnjaUvijet, x.ElementProm, x.PodelementProm, x.DatumOtvaranja, x.RokZaRjes, x.CardStatus, x.DatumZatvaranja }).Where(x => x.StopCardID == GetSCID);

                    DropDownList nesigRadnjaUvijet = e.Row.FindControl("ddlNesigRadnjaUvijet") as DropDownList;
                    if (nesigRadnjaUvijet != null) nesigRadnjaUvijet.SelectedValue = result.Select(x => x.NesigRadnjaUvijet).FirstOrDefault();

                    DropDownList elementProm = e.Row.FindControl("ddlElementProm") as DropDownList;
                    if (elementProm != null) elementProm.SelectedValue = result.Select(x => x.ElementProm).FirstOrDefault();

                    CheckBoxList podelementProm = e.Row.FindControl("cbxlPodelementProm") as CheckBoxList;
                    if (podelementProm != null)
                    {
                        CheckBox sigNesigPostupak = e.Row.FindControl("cbxSigNesigPostupak") as CheckBox;
                        if (sigNesigPostupak != null)
                        {
                            if (sigNesigPostupak.Checked)
                            {
                                nesigRadnjaUvijet.Enabled = false;
                                elementProm.Enabled = false;
                                podelementProm.Enabled = false;
                            }
                            else
                            {
                                nesigRadnjaUvijet.Enabled = true;
                                elementProm.Enabled = true;
                                podelementProm.Enabled = true;

                                foreach (var item in GetSubElements)
                                {
                                    if (item.Key == elementProm.SelectedValue)
                                    {
                                        podelementProm.Items.Clear();
                                        podelementProm.DataSource = item.Value;
                                        podelementProm.DataBind();

                                        if (result.Select(x => x.PodelementProm).FirstOrDefault() != null)
                                        {
                                            string[] checkedElements = result.Select(x => x.PodelementProm).FirstOrDefault().Split('_');
                                            foreach (string element in checkedElements) podelementProm.Items.FindByValue(element).Selected = true;
                                        }

                                        break;
                                    }
                                }
                            }
                        }
                    }

                    Calendar datumOtvaranja = e.Row.FindControl("clDatumOtvaranja") as Calendar;
                    if (datumOtvaranja != null) datumOtvaranja.SelectedDate = result.Select(x => x.DatumOtvaranja).FirstOrDefault().Value;

                    Calendar rokZaRjes = e.Row.FindControl("clRokZaRjes") as Calendar;
                    if (rokZaRjes != null) rokZaRjes.SelectedDate = result.Select(x => x.RokZaRjes).FirstOrDefault().Value;

                    DropDownList cardStatus = e.Row.FindControl("ddlCardStatus") as DropDownList;
                    if (cardStatus != null) cardStatus.SelectedValue = result.Select(x => x.CardStatus).FirstOrDefault();

                    Calendar datumZatvaranja = e.Row.FindControl("clDatumZatvaranja") as Calendar;
                    if (datumZatvaranja != null)
                    {
                        datumZatvaranja.Enabled = EnableDisableCloseDate(cardStatus.SelectedIndex);

                        DateTime date;
                        if (DateTime.TryParse(result.Select(x => x.DatumZatvaranja).FirstOrDefault().ToString(), out date))
                            if (datumZatvaranja != null) datumZatvaranja.SelectedDate = date;
                    }
                }
            }
        }

        protected void GVStopCards_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GetSCID = long.Parse(GVStopCards.Rows[e.NewEditIndex].Cells[1].Text);
            GetSCRowIndex = e.NewEditIndex;
        }

        protected void GVStopCards_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Dictionary<object, object> result = CreateStopCard((GridView)sender, e.RowIndex);
            if (result != null)
            {
                e.NewValues.Remove("OpisSukNesuk");
                e.NewValues.Remove("KorektivneRadnje");
                foreach (var item in result)
                    e.NewValues.Add(item.Key, item.Value);

                GetErrorText = "You have successfully updated stop card: (" + GetSCID + ")";
                lblError.Text = GetErrorText;
                lblError.Visible = true;
            }
            else
            {
                GetErrorText = "failed to update stop card: (" + GetSCID + ")";
                lblError.Text = GetErrorText;
                lblError.Visible = true;
                e.Cancel = true;
            }
        }

        protected void DetailsView2_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            TextBox tbxID = DetailsView2.FindControl("tbxUserID") as TextBox;
            using (var SCDB = new CroscoStopCardEntities())
            {
                var userIDs = SCDB.Users.Select(x => x.UserID).ToList();
                int ID;
                if (int.TryParse(tbxID.Text, out ID))
                {
                    if (userIDs.Contains(ID))
                    {
                        if ((string)Session["UserRole"] == "Admin")
                        {
                            var userOJ = SCDB.Users.Select(x => new { x.UserID, x.OJ }).Where(x => x.UserID == ID);
                            if (userOJ.Select(x => x.OJ).FirstOrDefault() == (string)Session["OJ"])
                            {
                                if (CreateStopCard((DetailsView)sender, ID))
                                {
                                    GetErrorText = "You have successfully created stop card for userID: (" + ID + ")";
                                    lblError.Text = GetErrorText;
                                    lblError.Visible = true;
                                }
                                else
                                {
                                    GetErrorText = "failed to create stop card for userID: (" + ID + ")";
                                    lblError.Text = GetErrorText;
                                    lblError.Visible = true;
                                    e.Cancel = true;
                                }
                            }
                            else
                            {
                                GetErrorText = "You don't have privileges to create stop card for (" + userOJ.Select(x => x.OJ).FirstOrDefault() + ")";
                                lblError.Text = GetErrorText;
                                lblError.Visible = true;
                                e.Cancel = true;
                            }
                        }
                        else
                        {
                            if (CreateStopCard((DetailsView)sender, ID))
                            {
                                GetErrorText = "You have successfully created stop card for userID: (" + ID + ")";
                                lblError.Text = GetErrorText;
                                lblError.Visible = true;
                            }
                            else
                            {
                                GetErrorText = "failed to create stop card for userID: (" + ID + ")";
                                lblError.Text = GetErrorText;
                                lblError.Visible = true;
                                e.Cancel = true;
                            }
                        }
                    }
                    else
                    {
                        GetErrorText = "This UserID: (" + ID + ") doesn't exist!";
                        lblError.Text = GetErrorText;
                        lblError.Visible = true;
                        e.Cancel = true;
                    }
                }
                else
                {
                    GetErrorText = "UserID: (" + ID + ") must be number!";
                    lblError.Text = GetErrorText;
                    lblError.Visible = true;
                    e.Cancel = true;
                }
            }
        }

        protected void DetailsView2_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            if (valid) Response.Redirect("AdminPage.aspx");
        }

        protected void DetailsView2_DataBound(object sender, EventArgs e)
        {
            DropDownList cardStatus = DetailsView2.FindControl("ddlCardStatus") as DropDownList;
            Calendar datumZatvaranja = DetailsView2.FindControl("clDatumZatvaranja") as Calendar;
            if (datumZatvaranja != null && cardStatus != null) datumZatvaranja.Enabled = EnableDisableCloseDate(cardStatus.SelectedIndex);

            DropDownList elementProm = DetailsView2.FindControl("ddlElementProm") as DropDownList;
            CheckBoxList podelementProm = DetailsView2.FindControl("cbxlPodelementProm") as CheckBoxList;
            if (podelementProm != null)
            {
                foreach (var item in GetSubElements)
                {
                    if (item.Key == elementProm.SelectedValue)
                    {
                        podelementProm.Items.Clear();
                        podelementProm.DataSource = item.Value;
                        podelementProm.DataBind();
                        break;
                    }
                }
            }
        }

        public List<string> GetReakcijeLjudi
        {
            get
            {
                return new List<string>()
                {
                    "Podešavanje osobne zaštitne opreme",
                    "Promjena položaja",
                    "Obavljanje posla na drugi način",
                    "Prekidanje s poslom",
                    "Uzemljivanje",
                    "Isključivanje strojeva"
                };
            }
        }

        public List<string> GetOsobnaZastitnaOprema
        {
            get
            {
                return new List<string>()
                {
                    "Glava",
                    "Oči i lice",
                    "Uši",
                    "Respiratorni sustav",
                    "Ruke i šake",
                    "Noge i stopala"
                };
            }
        }

        public List<string> GetPolozajLjudi
        {
            get
            {
                return new List<string>()
                {
                    "Udaranje u neki predmet",
                    "Udar nekog predmeta",
                    "Naći se u, na ili između predmeta",
                    "Pad na istoj/različitoj razini",
                    "Doticaj s ekstremnim temperaturama",
                    "Doticaj s električnom strujom",
                    "Doticaj s visokim tlakovima",
                    "Udisanje opasnih tvari",
                    "Apsorbiranje opasnih tvari",
                    "Pad na istoj/različitoj razini",
                    "Preveliko naprezanje",
                    "Ponavljanje pokreta",
                    "Nespretni položaj/Statično držanje"
                };
            }
        }

        public List<string> GetAlatiOprema
        {
            get
            {
                return new List<string>()
                {
                    "Pogrešni za dotični posao",
                    "Nepravilno korišteni",
                    "Neispravni alati i oprema"
                };
            }
        }

        public List<string> GetProcedureUrednost
        {
            get
            {
                return new List<string>()
                {
                    "Neodgovarajuće procedure",
                    "Neznanje/Nerazumijevanje procedura",
                    "Nepridržavanje procedura",
                    "Norme urednosti neodgovarajuće",
                    "Neznanje/Nerazumijevanje normi urednosti",
                    "Nepridržavanje normi urednosti"
                };
            }
        }

        public Dictionary<string, List<string>> GetSubElements
        {
            get
            {
                return new Dictionary<string, List<string>>()
                {
                    {"REAKCIJE LJUDI", GetReakcijeLjudi },
                    {"OSOBNA ZAŠTITNA OPREMA", GetOsobnaZastitnaOprema },
                    {"POLOŽAJ LJUDI (uzroci ozljeda)", GetPolozajLjudi },
                    {"ALATI I OPREMA", GetAlatiOprema },
                    {"PROCEDURE I UREDNOST", GetProcedureUrednost }
                };
            }
        }

        protected void ddlElementProm_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GetSCRowIndex != -1)
            {
                DropDownList element = GVStopCards.Rows[GetSCRowIndex].FindControl("ddlElementProm") as DropDownList;
                if (element != null)
                {
                    CheckBoxList subElement = GVStopCards.Rows[GetSCRowIndex].FindControl("cbxlPodelementProm") as CheckBoxList;
                    if (subElement != null)
                    {
                        foreach (var item in GetSubElements)
                        {
                            if (item.Key == element.SelectedValue)
                            {
                                subElement.Items.Clear();
                                subElement.DataSource = item.Value;
                                subElement.DataBind();
                                break;
                            }
                        }
                    }
                }
            }

            DropDownList element1 = DetailsView2.FindControl("ddlElementProm") as DropDownList;
            if (element1 != null)
            {
                CheckBoxList subElement1 = DetailsView2.FindControl("cbxlPodelementProm") as CheckBoxList;
                if (subElement1 != null)
                {
                    foreach (var item in GetSubElements)
                    {
                        if (item.Key == element1.SelectedValue)
                        {
                            subElement1.Items.Clear();
                            subElement1.DataSource = item.Value;
                            subElement1.DataBind();
                            break;
                        }
                    }
                }
            }
        }

        protected void clDatumOtvaranja_SelectionChanged(object sender, EventArgs e)
        {
            if (!IsValidDateOpen(((Calendar)sender).SelectedDate))
            {
                GetErrorText = "Please select valid date between last month and today's date";
                lblError.Text = GetErrorText;
                lblError.Visible = true;
                ((Calendar)sender).SelectedDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);
            }
        }

        protected void clRokZaRjes_SelectionChanged(object sender, EventArgs e)
        {
            if (!IsValidDateRange(((Calendar)sender).SelectedDate))
            {
                GetErrorText = "Please select valid date between today's date and the last day of the year";
                lblError.Text = GetErrorText;
                lblError.Visible = true;
                ((Calendar)sender).SelectedDate = new DateTime(DateTime.Now.Year, 12, DateTime.DaysInMonth(DateTime.Now.Year, 12));
            }
        }

        protected void ddlCardStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GetSCRowIndex != -1)
            {
                Calendar datumZatvaranja = GVStopCards.Rows[GetSCRowIndex].FindControl("clDatumZatvaranja") as Calendar;
                if (datumZatvaranja != null) datumZatvaranja.Enabled = EnableDisableCloseDate(((DropDownList)sender).SelectedIndex);
            }

            Calendar datumZatvaranja1 = DetailsView2.FindControl("clDatumZatvaranja") as Calendar;
            if (datumZatvaranja1 != null) datumZatvaranja1.Enabled = EnableDisableCloseDate(((DropDownList)sender).SelectedIndex);
        }

        protected void clDatumZatvaranja_SelectionChanged(object sender, EventArgs e)
        {
            if (!IsValidDateRange(((Calendar)sender).SelectedDate))
            {
                GetErrorText = "Please select valid date between today's date and the last day of the year";
                lblError.Text = GetErrorText;
                lblError.Visible = true;
            }
        }

        protected void cbxSigNesigPostupak_CheckedChanged(object sender, EventArgs e)
        {
            EnableDisable(GVStopCards, DetailsView2, GetSCRowIndex, GetSubElements, ((CheckBox)sender).Checked);
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

        private static bool IsValidDateOpen(DateTime selectedDate)
        {
            DateTime todaysDate = DateTime.Now.Date;
            DateTime minDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month - 1, 1);

            if (selectedDate > todaysDate || selectedDate < minDate)
            {
                selectedDate = DateTime.Now.Date;
                return false;
            }

            return true;
        }

        private static bool IsValidDateRange(DateTime selectedDate)
        {
            DateTime todaysDate = DateTime.Now.Date;
            DateTime maxDate = new DateTime(DateTime.Now.Year, 12, DateTime.DaysInMonth(DateTime.Now.Year, 12));

            if (selectedDate >= todaysDate && selectedDate <= maxDate) return true;

            selectedDate = maxDate;
            return false;
        }

        private static bool EnableDisableCloseDate(int selectedStatusIndex)
        {
            if (selectedStatusIndex == 0 || selectedStatusIndex == 2) return false;
            return true;
        }

        private static void EnableDisable(GridView targetedGridView, DetailsView targetedDetailsView, int rowIndex, Dictionary<string, List<string>> keyValuePairs, bool tf)
        {
            if (rowIndex != -1)
            {
                DropDownList radnje = targetedGridView.Rows[rowIndex].FindControl("ddlNesigRadnjaUvijet") as DropDownList;
                if (radnje != null) radnje.Enabled = !tf;

                DropDownList elementProm = targetedGridView.Rows[rowIndex].FindControl("ddlElementProm") as DropDownList;
                if (elementProm != null) elementProm.Enabled = !tf;

                CheckBoxList subElement = targetedGridView.Rows[rowIndex].FindControl("cbxlPodelementProm") as CheckBoxList;
                if (subElement != null)
                {
                    subElement.Enabled = !tf;

                    foreach (var item in keyValuePairs)
                    {
                        if (item.Key == elementProm.SelectedValue)
                        {
                            subElement.Items.Clear();
                            subElement.DataSource = item.Value;
                            subElement.DataBind();

                            break;
                        }
                    }
                }
            }

            DropDownList radnje1 = targetedDetailsView.FindControl("ddlNesigRadnjaUvijet") as DropDownList;
            if (radnje1 != null) radnje1.Enabled = !tf;

            DropDownList elementProm1 = targetedDetailsView.FindControl("ddlElementProm") as DropDownList;
            if (elementProm1 != null) elementProm1.Enabled = !tf;

            CheckBoxList subElement1 = targetedDetailsView.FindControl("cbxlPodelementProm") as CheckBoxList;
            if (subElement1 != null) subElement1.Enabled = !tf;
        }

        private static bool CreateStopCard(DetailsView targetedDetailsView, int userID)
        {
            TextBox tbxOpisSukNesuk = targetedDetailsView.FindControl("tbxOpisSukNesuk") as TextBox;
            TextBox tbxKorektivneRadnje = targetedDetailsView.FindControl("tbxKorektivneRadnje") as TextBox;

            if (string.IsNullOrWhiteSpace(tbxOpisSukNesuk.Text) || string.IsNullOrWhiteSpace(tbxKorektivneRadnje.Text))
                return false;

            StopCard stopCard = new StopCard();
            DateTime dateCreated = DateTime.Parse(DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString());

            CheckBox sigNesigPostupak = targetedDetailsView.FindControl("cbxSigNesigPostupak") as CheckBox;
            DropDownList nesigRadnjaUvijet = targetedDetailsView.FindControl("ddlNesigRadnjaUvijet") as DropDownList;
            DropDownList elementProm = targetedDetailsView.FindControl("ddlElementProm") as DropDownList;
            CheckBoxList podelementProm = targetedDetailsView.FindControl("cbxlPodelementProm") as CheckBoxList;
            Calendar datumOtvaranja = targetedDetailsView.FindControl("clDatumOtvaranja") as Calendar;
            Calendar rokZaRjes = targetedDetailsView.FindControl("clRokZaRjes") as Calendar;
            DropDownList cardStatus = targetedDetailsView.FindControl("ddlCardStatus") as DropDownList;
            Calendar datumZatvaranja = targetedDetailsView.FindControl("clDatumZatvaranja") as Calendar;
            TextBox analizaUzorka = targetedDetailsView.FindControl("tbxAnalizaUzorka") as TextBox;
            TextBox odgovornaOsoba = targetedDetailsView.FindControl("tbxOdgovornaOsoba") as TextBox;
            TextBox komentar = targetedDetailsView.FindControl("tbxKomentar") as TextBox;

            if (sigNesigPostupak.Checked)
            {
                using (CroscoStopCardEntities SCDB = new CroscoStopCardEntities())
                {
                    stopCard.UserID = userID;
                    stopCard.DateCreated = dateCreated;
                    stopCard.SigNesigPostupak = true;
                    stopCard.DatumOtvaranja = datumOtvaranja.SelectedDate;
                    stopCard.OpisSukNesuk = tbxOpisSukNesuk.Text;
                    if (!string.IsNullOrWhiteSpace(analizaUzorka.Text)) stopCard.AnalizaUzorka = analizaUzorka.Text;
                    stopCard.KorektivneRadnje = tbxKorektivneRadnje.Text;
                    stopCard.RokZaRjes = rokZaRjes.SelectedDate;
                    if (!string.IsNullOrWhiteSpace(odgovornaOsoba.Text)) stopCard.OdgovornaOsoba = odgovornaOsoba.Text;
                    stopCard.CardStatus = cardStatus.SelectedValue;
                    if (!string.IsNullOrWhiteSpace(komentar.Text)) stopCard.Komentar = komentar.Text;
                    if (datumZatvaranja.Enabled) stopCard.DatumZatvaranja = datumZatvaranja.SelectedDate;

                    SCDB.StopCards.Add(stopCard);
                    SCDB.SaveChanges();
                }
            }
            else
            {
                string podelementPromCheck = AllSelected(podelementProm);
                if (string.IsNullOrEmpty(podelementPromCheck)) return false;
                else
                {
                    using (CroscoStopCardEntities SCDB = new CroscoStopCardEntities())
                    {
                        stopCard.UserID = userID;
                        stopCard.DateCreated = dateCreated;
                        stopCard.SigNesigPostupak = false;
                        stopCard.NesigRadnjaUvijet = nesigRadnjaUvijet.SelectedValue;
                        stopCard.ElementProm = elementProm.SelectedValue;
                        stopCard.PodelementProm = podelementPromCheck;
                        stopCard.DatumOtvaranja = datumOtvaranja.SelectedDate;
                        stopCard.OpisSukNesuk = tbxOpisSukNesuk.Text;
                        if (!string.IsNullOrWhiteSpace(analizaUzorka.Text)) stopCard.AnalizaUzorka = analizaUzorka.Text;
                        stopCard.KorektivneRadnje = tbxKorektivneRadnje.Text;
                        stopCard.RokZaRjes = rokZaRjes.SelectedDate;
                        if (!string.IsNullOrWhiteSpace(odgovornaOsoba.Text)) stopCard.OdgovornaOsoba = odgovornaOsoba.Text;
                        stopCard.CardStatus = cardStatus.SelectedValue;
                        if (!string.IsNullOrWhiteSpace(komentar.Text)) stopCard.Komentar = komentar.Text;
                        if (datumZatvaranja.Enabled) stopCard.DatumZatvaranja = datumZatvaranja.SelectedDate;

                        SCDB.StopCards.Add(stopCard);
                        SCDB.SaveChanges();
                    }
                }
            }

            return true;
        }

        private static Dictionary<object, object> CreateStopCard(GridView targetedGridView, int rowIndex)
        {
            TextBox tbxOpisSukNesuk = targetedGridView.Rows[rowIndex].FindControl("tbxOpisSukNesuk") as TextBox;
            TextBox tbxKorektivneRadnje = targetedGridView.Rows[rowIndex].FindControl("tbxKorektivneRadnje") as TextBox;

            if (string.IsNullOrWhiteSpace(tbxOpisSukNesuk.Text) || string.IsNullOrWhiteSpace(tbxKorektivneRadnje.Text))
                return null;

            StopCard stopCard = new StopCard();
            CheckBox sigNesigPostupak = targetedGridView.Rows[rowIndex].FindControl("cbxSigNesigPostupak") as CheckBox;
            DropDownList nesigRadnjaUvijet = targetedGridView.Rows[rowIndex].FindControl("ddlNesigRadnjaUvijet") as DropDownList;
            DropDownList elementProm = targetedGridView.Rows[rowIndex].FindControl("ddlElementProm") as DropDownList;
            CheckBoxList podelementProm = targetedGridView.Rows[rowIndex].FindControl("cbxlPodelementProm") as CheckBoxList;
            Calendar datumOtvaranja = targetedGridView.Rows[rowIndex].FindControl("clDatumOtvaranja") as Calendar;
            Calendar rokZaRjes = targetedGridView.Rows[rowIndex].FindControl("clRokZaRjes") as Calendar;
            DropDownList cardStatus = targetedGridView.Rows[rowIndex].FindControl("ddlCardStatus") as DropDownList;
            Calendar datumZatvaranja = targetedGridView.Rows[rowIndex].FindControl("clDatumZatvaranja") as Calendar;

            Dictionary<object, object> result = new Dictionary<object, object>();
            if (sigNesigPostupak.Checked)
            {
                result.Add("DatumOtvaranja", datumOtvaranja.SelectedDate);
                result.Add("OpisSukNesuk", tbxOpisSukNesuk.Text);
                result.Add("KorektivneRadnje", tbxKorektivneRadnje.Text);
                result.Add("RokZaRjes", rokZaRjes.SelectedDate);
                result.Add("CardStatus", cardStatus.SelectedValue);
                if (datumZatvaranja.Enabled)
                    result.Add("DatumZatvaranja", datumZatvaranja.SelectedDate);
            }
            else
            {
                string podelementPromCheck = AllSelected(podelementProm);
                if (string.IsNullOrEmpty(podelementPromCheck)) return null;
                else
                {
                    result.Add("NesigRadnjaUvijet", nesigRadnjaUvijet.SelectedValue);
                    result.Add("ElementProm", elementProm.SelectedValue);
                    result.Add("PodelementProm", podelementPromCheck);
                    result.Add("DatumOtvaranja", datumOtvaranja.SelectedDate);
                    result.Add("OpisSukNesuk", tbxOpisSukNesuk.Text);
                    result.Add("KorektivneRadnje", tbxKorektivneRadnje.Text);
                    result.Add("RokZaRjes", rokZaRjes.SelectedDate);
                    result.Add("CardStatus", cardStatus.SelectedValue);
                    if (datumZatvaranja.Enabled)
                        result.Add("DatumZatvaranja", datumZatvaranja.SelectedDate);
                }
            }

            return result;
        }

        private static string AllSelected(CheckBoxList checkBoxList)
        {
            return string.Join("_", from item in checkBoxList.Items.Cast<ListItem>()
                                    where item.Selected
                                    select item.Value);
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
    }

}