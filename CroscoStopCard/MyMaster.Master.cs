using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CroscoStopCard
{
    public partial class MyMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["UserRole"] != null) && ((string)Session["UserRole"] != "MasterAdmin"))
            {
                modal_trigger.Visible = false;
                adminLink.Visible = true;
                btnLogout.Visible = true;
                usr.InnerText = "Welcome: " + (string)Session["UserName"];
                usr.Visible = true;
                MasterEditSTOP.Visible = false;
            }
            else if (Session["user"] != null)
            {
                modal_trigger.Visible = false;
                adminLink.Visible = false;
                btnLogout.Visible = true;
                usr.InnerText = "Welcome: " + (string)Session["user"];
                usr.Visible = true;
                MasterEditSTOP.Visible = false;
            }
            else if ((string)Session["UserRole"] == "MasterAdmin")
            {
                modal_trigger.Visible = false;
                adminLink.Visible = true;
                btnLogout.Visible = true;
                usr.InnerText = "Welcome: " + (string)Session["UserName"];
                usr.Visible = true;
                MasterEditSTOP.Visible = true;
            }
            else if ((string)Session["UserRole"] == "Manager")
            {
                modal_trigger.Visible = false;
                adminLink.Visible = true;
                btnLogout.Visible = true;
                usr.InnerText = "Welcome: " + (string)Session["UserName"];
                usr.Visible = true;
                MasterEditSTOP.Visible = false;
            }
            else if ((string)Session["UserRole"] == "LocalAdmin")
            {
                modal_trigger.Visible = false;
                adminLink.Visible = true;
                btnLogout.Visible = true;
                usr.InnerText = "Welcome: " + (string)Session["UserName"];
                usr.Visible = true;
                MasterEditSTOP.Visible = false;
            }
            else
            {
                adminLink.Visible = false;
                modal_trigger.Visible = true;
                btnLogout.Visible = false;
                usr.Visible = false;
                MasterEditSTOP.Visible = false;
            }
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            CroscoStopCardEntities stopCardEntities = new CroscoStopCardEntities();

            var loginResult = stopCardEntities.Users.Select(x => new { x.UserID, x.UserName, x.Lozinka, x.UserRole, x.OJ , x.SubOJ, x.SubOJDva, x.FirstName, x.LastName }).Where(x => x.UserName == tbxUsername.Value.Trim());

            if (loginResult.Count() > 0)
            {
                if (loginResult.Select(x => x.UserRole).FirstOrDefault() == "MasterAdmin")
                {
                    
                    if (PasswordHash.ValidatePassword(tbxPassword.Value, loginResult.Select(x => x.Lozinka).FirstOrDefault()))
                    {
                        
                        Session["UserRole"] = loginResult.Select(x => x.UserRole).FirstOrDefault();
                        Session["userID"] = loginResult.Select(x => x.UserID).FirstOrDefault();
                        Session["UserName"] = loginResult.Select(x => x.UserName).FirstOrDefault();
                        Session["OJ"] = loginResult.Select(x => x.OJ).FirstOrDefault();
                        Session["SubOJ"] = loginResult.Select(x => x.SubOJ).FirstOrDefault();
                        Session["SubOJDva"] = loginResult.Select(x => x.SubOJDva).FirstOrDefault();
                        Session["FirstName"] = loginResult.Select(x => x.FirstName).FirstOrDefault();
                        Session["LastName"] = loginResult.Select(x => x.LastName).FirstOrDefault();
                        Response.Redirect("AdminPage.aspx");
                    }
                    else lblError.Visible = true;
                }
                else if (loginResult.Select(x => x.UserRole).FirstOrDefault() == "Admin")
                {
                    if (tbxPassword.Value == "User.123" && PasswordHash.ValidatePassword(tbxPassword.Value, loginResult.Select(x => x.Lozinka).FirstOrDefault()))
                    {
                        Session["UserName"] = loginResult.Select(x => x.UserName).FirstOrDefault();
                        Session["NewPassword"] = true;
                       
                    }
                    else if (PasswordHash.ValidatePassword(tbxPassword.Value, loginResult.Select(x => x.Lozinka).FirstOrDefault()))
                    {
                       
                        Session["UserRole"] = loginResult.Select(x => x.UserRole).FirstOrDefault();
                        //Session["OJ"] = loginResult.Select(x => x.OJ).FirstOrDefault();
                        Session["userID"] = loginResult.Select(x => x.UserID).FirstOrDefault();
                        Session["UserName"] = loginResult.Select(x => x.UserName).FirstOrDefault();
                        Session["OJ"] = loginResult.Select(x => x.OJ).FirstOrDefault();
                        Session["SubOJ"] = loginResult.Select(x => x.SubOJ).FirstOrDefault();
                        Session["SubOJDva"] = loginResult.Select(x => x.SubOJDva).FirstOrDefault();
                        Session["FirstName"] = loginResult.Select(x => x.FirstName).FirstOrDefault();
                        Session["LastName"] = loginResult.Select(x => x.LastName).FirstOrDefault();
                        Response.Redirect("AdminPage.aspx");
                    }
                    else lblError.Visible = true;
                    
                }
                else if (loginResult.Select(x => x.UserRole).FirstOrDefault() == "LocalAdmin")
                {
                    if (tbxPassword.Value == "User.123" && PasswordHash.ValidatePassword(tbxPassword.Value, loginResult.Select(x => x.Lozinka).FirstOrDefault()))
                    {
                        Session["UserName"] = loginResult.Select(x => x.UserName).FirstOrDefault();
                        Session["NewPassword"] = true;

                    }
                    else if (PasswordHash.ValidatePassword(tbxPassword.Value, loginResult.Select(x => x.Lozinka).FirstOrDefault()))
                    {

                        Session["UserRole"] = loginResult.Select(x => x.UserRole).FirstOrDefault();
                        //Session["OJ"] = loginResult.Select(x => x.OJ).FirstOrDefault();
                        Session["userID"] = loginResult.Select(x => x.UserID).FirstOrDefault();
                        Session["UserName"] = loginResult.Select(x => x.UserName).FirstOrDefault();
                        Session["OJ"] = loginResult.Select(x => x.OJ).FirstOrDefault();
                        Session["SubOJ"] = loginResult.Select(x => x.SubOJ).FirstOrDefault();
                        Session["SubOJDva"] = loginResult.Select(x => x.SubOJDva).FirstOrDefault();
                        Session["FirstName"] = loginResult.Select(x => x.FirstName).FirstOrDefault();
                        Session["LastName"] = loginResult.Select(x => x.LastName).FirstOrDefault();
                        Response.Redirect("AdminPage.aspx");
                    }
                    else lblError.Visible = true;

                }
                else if (loginResult.Select(x => x.UserRole).FirstOrDefault() == "Manager")
                {
                    if (tbxPassword.Value == "User.123" && PasswordHash.ValidatePassword(tbxPassword.Value, loginResult.Select(x => x.Lozinka).FirstOrDefault()))
                    {
                        Session["UserName"] = loginResult.Select(x => x.UserName).FirstOrDefault();
                        Session["NewPassword"] = true;

                    }
                    else if (PasswordHash.ValidatePassword(tbxPassword.Value, loginResult.Select(x => x.Lozinka).FirstOrDefault()))
                    {

                        Session["UserRole"] = loginResult.Select(x => x.UserRole).FirstOrDefault();
                        //Session["OJ"] = loginResult.Select(x => x.OJ).FirstOrDefault();
                        Session["userID"] = loginResult.Select(x => x.UserID).FirstOrDefault();
                        Session["UserName"] = loginResult.Select(x => x.UserName).FirstOrDefault();
                        Session["OJ"] = loginResult.Select(x => x.OJ).FirstOrDefault();
                        Session["SubOJ"] = loginResult.Select(x => x.SubOJ).FirstOrDefault();
                        Session["SubOJDva"] = loginResult.Select(x => x.SubOJDva).FirstOrDefault();
                        Session["FirstName"] = loginResult.Select(x => x.FirstName).FirstOrDefault();
                        Session["LastName"] = loginResult.Select(x => x.LastName).FirstOrDefault();
                        Response.Redirect("AdminPage.aspx");
                    }
                    else lblError.Visible = true;

                }
                else if (tbxPassword.Value == "User.123" && PasswordHash.ValidatePassword(tbxPassword.Value, loginResult.Select(x => x.Lozinka).FirstOrDefault()))
                {
                    Session["UserName"] = loginResult.Select(x => x.UserName).FirstOrDefault();
                    Session["NewPassword"] = true;
                }
                else if (PasswordHash.ValidatePassword(tbxPassword.Value, loginResult.Select(x => x.Lozinka).FirstOrDefault()))
                {
                    Session["user"] = loginResult.Select(x => x.UserName).FirstOrDefault();
                    Session["userID"] = loginResult.Select(x => x.UserID).FirstOrDefault();
                    Session["OJ"] = loginResult.Select(x => x.OJ).FirstOrDefault();
                    Session["SubOJ"] = loginResult.Select(x => x.SubOJ).FirstOrDefault();
                    Session["SubOJDva"] = loginResult.Select(x => x.SubOJDva).FirstOrDefault();
                    Session["FirstName"] = loginResult.Select(x => x.FirstName).FirstOrDefault();
                    Session["LastName"] = loginResult.Select(x => x.LastName).FirstOrDefault();
                    Session["NewPassword"] = null;
                    Response.Redirect("StopQueryPage.aspx");
                    
                }
                else lblError.Visible = true;
                    
            }
            else lblError.Visible = true;
                
        }
    }
}