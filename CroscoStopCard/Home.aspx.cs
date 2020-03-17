using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CroscoStopCard
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserRole"] != null)
            {
                Session["NewPassword"] = null;
                Response.Redirect("AdminPage.aspx");
            }
            else if (Session["user"] != null)
            {
                Session["NewPassword"] = null;
                Response.Redirect("StopQueryPage.aspx");
            }

            Response.AppendHeader("Cache-Control", "no-store");
        }

        void Page_LoadComplete(object sender, EventArgs e)
        {
            if (Session["NewPassword"] != null && (bool)Session["NewPassword"] == true) pnlNewPassword.Visible = true;
        }

        protected void btnUpdatePass_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(tbxNewPass.Text) && !string.IsNullOrWhiteSpace(tbxConfirmNewPass.Text))
            {
                Regex regPass = new Regex(@"^.*(?=.{8,50})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!.@#$%^&+=]).*$");

                if (tbxNewPass.Text.ToLower().Contains("user") || tbxNewPass.Text == "User.123")
                    lblNewPassError.Text = "Password shouldn't contain 'user'. Please change your Password!!!";
                else if (!regPass.IsMatch(tbxNewPass.Text))
                    lblNewPassError.Text = "Password must satisfy this conditions: minimum 8 characters long A-Z, 1 uppercase, 1 lowercase character, 1 number and 1 special character (!.@#$%^&+=)";
                else if (tbxNewPass.Text != tbxConfirmNewPass.Text)
                    lblNewPassError.Text = "Your password and password confirmation do not match!";
                else
                {
                    using (var SCDB = new CroscoStopCardEntities())
                    {
                        string username = (string)Session["UserName"];
                        var result = SCDB.Users.SingleOrDefault(b => b.UserName == username);

                        if (result != null)
                        {
                            Session["UserName"] = null;
                            Session["NewPassword"] = null;

                            result.Lozinka = PasswordHash.CreateHash(tbxNewPass.Text);
                            SCDB.SaveChanges();

                            if (result.UserRole == "Admin" || result.UserRole == "LocalAdmin" || result.UserRole == "Manager" || result.UserRole == "MasterAdmin")
                                Session["UserRole"] = result.UserRole;
                            else Session["user"] = result.UserName;
                            
                            Session["userID"] = result.UserID;
                            Response.Redirect("StopQueryPage.aspx");
                        }
                    }
                }
            }
            else lblNewPassError.Text = "Password and password confirmation are required!";
        }
    }
}