using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CroscoStopCard
{
    public partial class StopCardPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["UserRole"] == null) Response.Redirect("Home.aspx");

            lblError.Visible = false;

            tbxSelectedOpen.Text = clnOpen.SelectedDate.ToShortDateString();
            tbxSelectedDeadline.Text = clnDeadline.SelectedDate.ToShortDateString();
            tbxSelectedClose.Text = clnClose.SelectedDate.ToShortDateString();
        }

        void Page_LoadComplete(object sender, EventArgs e)
        {
            tbxSelectedOpen.Text = clnOpen.SelectedDate.ToShortDateString();
            tbxSelectedDeadline.Text = clnDeadline.SelectedDate.ToShortDateString();
            tbxSelectedClose.Text = clnClose.SelectedDate.ToShortDateString();

            if(!IsValidDateOpen(clnOpen.SelectedDate)) tbxSelectedOpen.Text = "Please select valid date between last month and today's date";
            if (!IsValidDateRange(clnDeadline.SelectedDate)) tbxSelectedDeadline.Text = "Please select valid date between today's date and the last day of the year";
            if (!IsValidDateRange(clnClose.SelectedDate)) tbxSelectedClose.Text = "Please select valid date between today's date and the last day of the year";
        }

        protected void cbReakcijeLjudi_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                CheckUnceckAll(GetCheckBoxes, (CheckBox)sender, false);

                EnableDisableAll(GetCheckBoxLists, (CheckBox)sender, cblReakcijeLjudi, false);

                UncheckAllItems(GetCheckBoxLists);
            }
            else
            {
                EnableDisableAll(GetCheckBoxLists, true);
                UncheckAllItems(cblReakcijeLjudi);
            }
        }

        protected void cbOsobnaZastitnaOprema_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                CheckUnceckAll(GetCheckBoxes, (CheckBox)sender, false);

                EnableDisableAll(GetCheckBoxLists, (CheckBox)sender, cblOsobnaZastitnaOprema, false);

                UncheckAllItems(GetCheckBoxLists);
            }
            else
            {
                EnableDisableAll(GetCheckBoxLists, true);
                UncheckAllItems(cblOsobnaZastitnaOprema);
            }
        }

        protected void cbPolozajLjudi_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                CheckUnceckAll(GetCheckBoxes, (CheckBox)sender, false);

                EnableDisableAll(GetCheckBoxLists, (CheckBox)sender, cblPolozajLjudi, false);

                UncheckAllItems(GetCheckBoxLists);
            }
            else
            {
                EnableDisableAll(GetCheckBoxLists, true);
                UncheckAllItems(cblPolozajLjudi);
            }
        }

        protected void cbAlatiOprema_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                CheckUnceckAll(GetCheckBoxes, (CheckBox)sender, false);

                EnableDisableAll(GetCheckBoxLists, (CheckBox)sender, cblAlatiOprema, false);

                UncheckAllItems(GetCheckBoxLists);
            }
            else
            {
                EnableDisableAll(GetCheckBoxLists, true);
                UncheckAllItems(cblAlatiOprema);
            }
        }

        protected void cbProcedureUrednost_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                CheckUnceckAll(GetCheckBoxes, (CheckBox)sender, false);

                EnableDisableAll(GetCheckBoxLists, (CheckBox)sender, cblProcedureUrednost, false);

                UncheckAllItems(GetCheckBoxLists);
            }
            else
            {
                EnableDisableAll(GetCheckBoxLists, true);
                UncheckAllItems(cblProcedureUrednost);
            }
        }

        protected void cblReakcijeLjudi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (IsAnySelected(cblReakcijeLjudi)) cbReakcijeLjudi.Checked = true;
            else cbReakcijeLjudi.Checked = false;

            UncheckAllItems(GetCheckBoxLists, (CheckBoxList)sender, cbReakcijeLjudi);
        }

        protected void cblOsobnaZastitnaOprema_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (IsAnySelected(cblOsobnaZastitnaOprema)) cbOsobnaZastitnaOprema.Checked = true;
            else cbOsobnaZastitnaOprema.Checked = false;

            UncheckAllItems(GetCheckBoxLists, (CheckBoxList)sender, cbOsobnaZastitnaOprema);
        }

        protected void cblPolozajLjudi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (IsAnySelected(cblPolozajLjudi)) cbPolozajLjudi.Checked = true;
            else cbPolozajLjudi.Checked = false;

            UncheckAllItems(GetCheckBoxLists, (CheckBoxList)sender, cbPolozajLjudi);
        }

        protected void cblAlatiOprema_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (IsAnySelected(cblAlatiOprema)) cbAlatiOprema.Checked = true;
            else cbAlatiOprema.Checked = false;

            UncheckAllItems(GetCheckBoxLists, (CheckBoxList)sender, cbAlatiOprema);
        }

        protected void cblProcedureUrednost_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (IsAnySelected(cblProcedureUrednost)) cbProcedureUrednost.Checked = true;
            else cbProcedureUrednost.Checked = false;

            UncheckAllItems(GetCheckBoxLists, (CheckBoxList)sender, cbProcedureUrednost);
        }

        protected void ddlStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            clnClose.Enabled = EnableDisableCloseDate(ddlStatus.SelectedIndex);
        }

        protected void rbNesig_CheckedChanged(object sender, EventArgs e)
        {
            EnableDisableAll(GetCheckBoxLists, GetCheckBoxes, true);
            rbSig.Checked = false;
            ddlNesigurnaRadUvt.Enabled = true;
        }

        protected void rbSig_CheckedChanged(object sender, EventArgs e)
        {
            EnableDisableAll(GetCheckBoxLists, GetCheckBoxes, false);
            rbNesig.Checked = false;
            ddlNesigurnaRadUvt.Enabled = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            StopCard stopCard = new StopCard();

            if (rbSig.Checked)
            {
                if (string.IsNullOrWhiteSpace(tbxRadnje.Text) || string.IsNullOrWhiteSpace(tbxOpis.Text))
                {
                    lblError.Text = "Opis sukladnosti/nesukladnosti i Korektivne radnje su obavezna polja";
                    lblError.Visible = true;
                }
                else
                {
                    using (CroscoStopCardEntities SCDB = new CroscoStopCardEntities())
                    {
                        DateTime dateCreated = DateTime.Parse(DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString());
                        stopCard.UserID = (int)Session["userID"];
                        stopCard.DateCreated = dateCreated;
                        stopCard.SigNesigPostupak = true;
                        stopCard.DatumOtvaranja = clnOpen.SelectedDate;
                        stopCard.OpisSukNesuk = tbxOpis.Text;
                        if (!string.IsNullOrWhiteSpace(tbxAnaliza.Text)) stopCard.AnalizaUzorka = tbxAnaliza.Text;
                        stopCard.KorektivneRadnje = tbxRadnje.Text;
                        stopCard.RokZaRjes = clnDeadline.SelectedDate;
                        if (!string.IsNullOrWhiteSpace(tbxOsoba.Text)) stopCard.OdgovornaOsoba = tbxOsoba.Text;
                        stopCard.CardStatus = CardStatus(ddlStatus);
                        if (!string.IsNullOrWhiteSpace(tbxComment.Text)) stopCard.Komentar = tbxComment.Text;
                        if (clnClose.Enabled) stopCard.DatumZatvaranja = clnClose.SelectedDate;

                        SCDB.StopCards.Add(stopCard);
                        SCDB.SaveChanges();
                    }
                }
            }
            else
            {
                if (!IsValidSubmit(GetCBXDict))
                {
                    lblError.Text = "Please select at least one 'Sub-element of observation'";
                    lblError.Visible = true;
                }
                else if (string.IsNullOrWhiteSpace(tbxRadnje.Text) || string.IsNullOrWhiteSpace(tbxOpis.Text))
                {
                    lblError.Text = "Opis sukladnosti/nesukladnosti i Korektivne radnje su obavezna polja";
                    lblError.Visible = true;
                }
                else
                {
                    using (CroscoStopCardEntities SCDB = new CroscoStopCardEntities())
                    {
                        stopCard.UserID = (int)Session["userID"];
                        stopCard.DateCreated = DateTime.Parse(DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString());
                        stopCard.SigNesigPostupak = false;
                        stopCard.NesigRadnjaUvijet = ddlNesigurnaRadUvt.SelectedValue;
                        stopCard.ElementProm = GetAllChecked(GetCBXDict)[0];

                        string podelementProm = string.Empty;
                        for (int i = 1; i < GetAllChecked(GetCBXDict).Count; i++)
                        {
                            if (i == GetAllChecked(GetCBXDict).Count - 1) podelementProm += GetAllChecked(GetCBXDict).ElementAt(i);
                            else podelementProm += GetAllChecked(GetCBXDict).ElementAt(i) + "_";
                        }

                        stopCard.PodelementProm = podelementProm;
                        stopCard.DatumOtvaranja = clnOpen.SelectedDate;
                        stopCard.OpisSukNesuk = tbxOpis.Text;
                        if (!string.IsNullOrWhiteSpace(tbxAnaliza.Text)) stopCard.AnalizaUzorka = tbxAnaliza.Text;
                        stopCard.KorektivneRadnje = tbxRadnje.Text;
                        stopCard.RokZaRjes = clnDeadline.SelectedDate;
                        if (!string.IsNullOrWhiteSpace(tbxOsoba.Text)) stopCard.OdgovornaOsoba = tbxOsoba.Text;
                        stopCard.CardStatus = CardStatus(ddlStatus);
                        if (!string.IsNullOrWhiteSpace(tbxComment.Text)) stopCard.Komentar = tbxComment.Text;
                        if (clnClose.Enabled) stopCard.DatumZatvaranja = clnClose.SelectedDate;

                        SCDB.StopCards.Add(stopCard);
                        SCDB.SaveChanges();
                    }
                }
            }
        }

        #region Properties

        public CheckBoxList[] GetCheckBoxLists
        {
            get
            {
                return new CheckBoxList[5]
                {
                    cblReakcijeLjudi,
                    cblOsobnaZastitnaOprema,
                    cblPolozajLjudi,
                    cblAlatiOprema,
                    cblProcedureUrednost
                };
            }
        }

        public CheckBox[] GetCheckBoxes
        {
            get
            {
                return new CheckBox[5]
                {
                    cbReakcijeLjudi,
                    cbOsobnaZastitnaOprema,
                    cbPolozajLjudi,
                    cbAlatiOprema,
                    cbProcedureUrednost
                };
            }
        }

        public Dictionary<CheckBox, CheckBoxList> GetCBXDict
        {
            get
            {
                return new Dictionary<CheckBox, CheckBoxList>()
                {
                    {cbReakcijeLjudi, cblReakcijeLjudi },
                    {cbOsobnaZastitnaOprema, cblOsobnaZastitnaOprema },
                    {cbPolozajLjudi, cblPolozajLjudi },
                    {cbAlatiOprema, cblAlatiOprema },
                    {cbProcedureUrednost, cblProcedureUrednost }
                };
            }
        }

        #endregion Properties

        #region MyMethods
        private static string CardStatus(DropDownList source)
        {
            return source.SelectedValue;
        }

        private static bool EnableDisableCloseDate(int selectedStatusIndex)
        {
            if (selectedStatusIndex == 0 || selectedStatusIndex == 2) return false;
            return true;
        }

        private static bool IsValidDateOpen(DateTime selectedDate)
        {
            DateTime todaysDate = DateTime.Now.Date;
            DateTime minDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month - 1, 1);

            if (selectedDate > todaysDate || selectedDate < minDate)
            {
                selectedDate = todaysDate;
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

        private static bool IsAnySelected(CheckBoxList checkBoxList)
        {
            if (checkBoxList.SelectedIndex != -1) return true;
            return false;
        }

        private static List<string> GetAllChecked(Dictionary<CheckBox, CheckBoxList> keyValuePairs)
        {
            List<string> allChecked = new List<string>();

            for (int i = 0; i < keyValuePairs.Count; i++)
            {
                if (keyValuePairs.Keys.ElementAt(i).Checked)
                {
                    allChecked.Add(keyValuePairs.Keys.ElementAt(i).Text);

                    foreach (ListItem item in keyValuePairs.Values.ElementAt(i).Items) if (item.Selected) allChecked.Add(item.Text);

                    break;
                }
            }

            return allChecked;
        }

        private static bool IsValidSubmit(Dictionary<CheckBox, CheckBoxList> keyValuePairs)
        {
            var result = GetAllChecked(keyValuePairs);

            if (result.Count > 1) return true;
            return false;
        }

        private static void UncheckAllItems(CheckBoxList checkBoxList)
        {
            foreach (ListItem item in checkBoxList.Items) item.Selected = false;
        }

        private void UncheckAllItems(CheckBoxList[] checkBoxList, CheckBoxList mainCheckBoxList, CheckBox mainCheckBox)
        {
            foreach (CheckBoxList item in checkBoxList) if (IsAnySelected(item) && item.ID != mainCheckBoxList.ID)
                    foreach (ListItem item1 in item.Items) item1.Selected = false;

            CheckUnceckAll(GetCheckBoxes, mainCheckBox, false);
        }

        private static void UncheckAllItems(CheckBoxList[] checkBoxList)
        {
            foreach (CheckBoxList item in checkBoxList) foreach (ListItem item1 in item.Items) item1.Selected = false;
        }

        private static void EnableDisableAll(CheckBoxList[] checkBoxLists, CheckBox sender, CheckBoxList mainCheckBoxList, bool tf)
        {
            foreach (CheckBoxList item in checkBoxLists) item.Enabled = (item.ID != mainCheckBoxList.ID) ? tf : !tf;
        }

        private static void EnableDisableAll(CheckBoxList[] checkBoxLists, CheckBox[] checkBoxes, bool tf)
        {
            foreach (CheckBoxList item in checkBoxLists) item.Enabled = tf;
            foreach (CheckBox item in checkBoxes) item.Enabled = tf;
        }

        private static void EnableDisableAll(CheckBoxList[] CheckBoxList, bool tf)
        {
            foreach (CheckBoxList item in CheckBoxList) item.Enabled = tf;
        }

        private static void CheckUnceckAll(CheckBox[] checkBoxes, CheckBox sender, bool tf)
        {
            foreach (CheckBox item in checkBoxes) if (item.ID != sender.ID) item.Checked = tf;
        }

        #endregion MyMethods
    }
}