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
    public partial class StopReports : System.Web.UI.Page
    {
        private string constr = System.Configuration.ConfigurationManager.ConnectionStrings["CroscoStopCardConnectionString"].ConnectionString;
        private string SqlString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null && Session["UserRole"] == null) Response.Redirect("Home.aspx");
            LoadPrvi();
            LoadDrugi();
            LoadTreci();
            LoadCetvrti();
            LoadPeti();
            LoadSesti();
            LoadSedmi();
            LoadOsmi();
            LoadDeveti();
            LoadDeseti(); 
            LoadJedanesti();
            LoadDvanesti();
            PrviKvartal();
            DrugiKvartal();
            TreciKvartal();
            CetvrtiKvartal();
            PrvaPlovica();
            DrugaPlovica();
            Godisnji();
        }
        public static string prvi, drugi, treci, cetvrti, peti, sesti, sedmi, osmi, deveti, deseti, jedanesti, dvanesti, Q1, Q2, Q3, Q4, H1, H2, Godina;
        public int sigurne, nesigurne, UA, UC, closed, open, ongoing, negativClosed, UAclosed, UCclosed;
        public int PodReak1, PodReak2, PodReak3, PodReak4, PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, 
            PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, 
            PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, PodProce6;
        public int BrojK1, PositiveReak, PositiveOzo, PositivePolozaj, PositiveAlati, PositiveProcedure;
        public int WorkersCro, WorkersSub, WorkersRd, SumWorker, HoursCro, HoursSub, HoursRd, SumHours;
        public int CRoSWA, CRoLSRV, CRoAlco, CRoNII, CRoRTI, CRoRTA, CRoLOPC, CRoSPILL, CRoFIRE, CRoNM, CRoFAC, CRoMTC, CRoRWC, CRoLTI, CRoFTL, CRoTRI,
            ConSWA, ConLSRV, ConAlco, ConNII, ConRTI, ConRTA, ConLOPC, ConSPILL, ConFIRE, ConNM, ConFAC, ConMTC, ConRWC, ConLTI, ConFTL, ConTRI,
            ThrdSWA, ThrdLSRV, ThrdAlco, ThrdNII, ThrdRTI, ThrdRTA, ThrdLOPC, ThrdSPILL, ThrdFIRE, ThrdNM, ThrdFAC, ThrdMTC, ThrdRWC, ThrdLTI, ThrdFTL, ThrdTRI;


        protected void LoadPrvi()
        {
            string pd = "'2020.1.1'";
            string kd = "'2020.1.31'";
            DataTable dt1 = new DataTable();
            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K1.InnerText = (dt1.Rows.Count).ToString();
            LoopData(pd, kd);
            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani1.InnerText = (HSDani.Rows.Count).ToString();

            NoWorkers1.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati1.InnerText = SumHours.ToString();
            SWA1.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS1.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco1.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII1.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI1.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA1.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC1.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill1.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire1.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM1.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC1.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC1.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC1.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI1.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL1.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI1.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive1.InnerText = sigurne.ToString();
            negative1.InnerText = nesigurne.ToString();
            UA1.InnerText = UA.ToString();
            UC1.InnerText = UC.ToString();
            open1.InnerText = open.ToString();
            ongoing1.InnerText = ongoing.ToString();
            close1.InnerText = closed.ToString();
            NegativeClosed1.InnerText = negativClosed.ToString();
            UAClosed1.InnerText = UAclosed.ToString();
            UCClosed1.InnerText = UCclosed.ToString();

            P1Reak1.InnerText = PodReak1.ToString();
            P1Reak2.InnerText = PodReak2.ToString();
            P1Reak3.InnerText = PodReak3.ToString();
            P1Reak4.InnerText = PodReak4.ToString();
            P1Reak5.InnerText = PodReak5.ToString();
            P1Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P1Reak.InnerText = E1Reak;

            P1ozo1.InnerText = PodOzo1.ToString();
            P1ozo2.InnerText = PodOzo2.ToString();
            P1ozo3.InnerText = PodOzo3.ToString();
            P1ozo4.InnerText = PodOzo4.ToString();
            P1ozo5.InnerText = PodOzo5.ToString();
            P1ozo6.InnerText = PodOzo6.ToString();
            P1ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P1ozo.InnerText = E1Ozo;

            P1polo1.InnerText = PodPolo1.ToString();
            P1polo2.InnerText = PodPolo2.ToString();
            P1polo3.InnerText = PodPolo3.ToString();
            P1polo4.InnerText = PodPolo4.ToString();
            P1polo5.InnerText = PodPolo5.ToString();
            P1polo6.InnerText = PodPolo6.ToString();
            P1polo7.InnerText = PodPolo7.ToString();
            P1polo8.InnerText = PodPolo8.ToString();
            P1polo9.InnerText = PodPolo9.ToString();
            P1polo10.InnerText = PodPolo10.ToString();
            P1polo11.InnerText = PodPolo11.ToString();
            P1polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P1polo.InnerText = E1Polo;

            P1alat1.InnerText = PodAlati1.ToString();
            P1alat2.InnerText = PodAlati2.ToString();
            P1alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P1alat.InnerText = E1Alati;

            P1proce1.InnerText = PodProce1.ToString();
            P1proce2.InnerText = PodProce2.ToString();
            P1proce3.InnerText = PodProce3.ToString();
            P1proce4.InnerText = PodProce4.ToString();
            P1proce5.InnerText = PodProce5.ToString();
            P1proce6.InnerText = PodProce6.ToString();

            BrojKartica1.InnerText = BrojK1.ToString();
            Pos1Reak.InnerText = PositiveReak.ToString();
            Pos1ozo.InnerText = PositiveOzo.ToString();
            Pos1polo.InnerText = PositivePolozaj.ToString();
            Pos1alat.InnerText= PositiveAlati.ToString();
            Pos1proce.InnerText = PositiveProcedure.ToString();

            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P1proce.InnerText = E1Proce;
            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

            prvi = str1 + ", " + str2 + "," + str3;

        }

        protected void LoadDrugi()
        {
            string pd = "'2020.2.1'";
            string kd = "'2020.2.29'";
            DataTable dt1 = new DataTable();
            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K2.InnerText = (dt1.Rows.Count).ToString();
            LoopData(pd, kd);
            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani2.InnerText = (HSDani.Rows.Count).ToString();

            NoWorkers2.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati2.InnerText = SumHours.ToString();
            SWA2.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS2.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco2.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII2.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI2.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA2.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC2.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill2.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire2.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM2.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC2.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC2.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC2.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI2.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL2.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI2.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive2.InnerText = sigurne.ToString();
            negative2.InnerText = nesigurne.ToString();
            UA2.InnerText = UA.ToString();
            UC2.InnerText = UC.ToString();
            open2.InnerText = open.ToString();
            ongoing2.InnerText = ongoing.ToString();
            close2.InnerText = closed.ToString();
            NegativeClosed2.InnerText = negativClosed.ToString();
            UAClosed2.InnerText = UAclosed.ToString();
            UCClosed2.InnerText = UCclosed.ToString();

            P2Reak1.InnerText = PodReak1.ToString();
            P2Reak2.InnerText = PodReak2.ToString();
            P2Reak3.InnerText = PodReak3.ToString();
            P2Reak4.InnerText = PodReak4.ToString();
            P2Reak5.InnerText = PodReak5.ToString();
            P2Reak6.InnerText = PodReak6.ToString();
            string E2Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P2Reak.InnerText = E2Reak;

            P2ozo1.InnerText = PodOzo1.ToString();
            P2ozo2.InnerText = PodOzo2.ToString();
            P2ozo3.InnerText = PodOzo3.ToString();
            P2ozo4.InnerText = PodOzo4.ToString();
            P2ozo5.InnerText = PodOzo5.ToString();
            P2ozo6.InnerText = PodOzo6.ToString();
            P2ozo7.InnerText = PodOzo7.ToString();
            string E2Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P2ozo.InnerText = E2Ozo;

            P2polo1.InnerText = PodPolo1.ToString();
            P2polo2.InnerText = PodPolo2.ToString();
            P2polo3.InnerText = PodPolo3.ToString();
            P2polo4.InnerText = PodPolo4.ToString();
            P2polo5.InnerText = PodPolo5.ToString();
            P2polo6.InnerText = PodPolo6.ToString();
            P2polo7.InnerText = PodPolo7.ToString();
            P2polo8.InnerText = PodPolo8.ToString();
            P2polo9.InnerText = PodPolo9.ToString();
            P2polo10.InnerText = PodPolo10.ToString();
            P2polo11.InnerText = PodPolo11.ToString();
            P2polo12.InnerText = PodPolo12.ToString();
            string E2Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P2polo.InnerText = E2Polo;

            P2alat1.InnerText = PodAlati1.ToString();
            P2alat2.InnerText = PodAlati2.ToString();
            P2alat3.InnerText = PodAlati3.ToString();
            string E2Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P2alat.InnerText = E2Alati;

            P2proce1.InnerText = PodProce1.ToString();
            P2proce2.InnerText = PodProce2.ToString();
            P2proce3.InnerText = PodProce3.ToString();
            P2proce4.InnerText = PodProce4.ToString();
            P2proce5.InnerText = PodProce5.ToString();
            P2proce6.InnerText = PodProce6.ToString();
            string E2Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P2proce.InnerText = E2Proce;

            BrojKartica2.InnerText = BrojK1.ToString();
            Pos2Reak.InnerText = PositiveReak.ToString();
            Pos2ozo.InnerText = PositiveOzo.ToString();
            Pos2polo.InnerText = PositivePolozaj.ToString();
            Pos2alat.InnerText = PositiveAlati.ToString();
            Pos2proce.InnerText = PositiveProcedure.ToString();

            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E2Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E2Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E2Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E2Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E2Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

            drugi = str1 + ", " + str2 + "," + str3;

        }

        protected void LoadTreci()
        {
            string pd = "'2020.3.1'";
            string kd = "'2020.3.31'";
           
            DataTable dt1 = new DataTable();
            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K3.InnerText = (dt1.Rows.Count).ToString();

            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani3.InnerText = (HSDani.Rows.Count).ToString();

            NoWorkers3.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati3.InnerText = SumHours.ToString();
            SWA3.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS3.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco3.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII3.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI3.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA3.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC3.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill3.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire3.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM3.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC3.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC3.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC3.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI3.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL3.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI3.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive3.InnerText = sigurne.ToString();
            negative3.InnerText = nesigurne.ToString();
            UA3.InnerText = UA.ToString();
            UC3.InnerText = UC.ToString();
            open3.InnerText = open.ToString();
            ongoing3.InnerText = ongoing.ToString();
            close3.InnerText = closed.ToString();
            NegativeClosed3.InnerText = negativClosed.ToString();
            UAClosed3.InnerText = UAclosed.ToString();
            UCClosed3.InnerText = UCclosed.ToString();

            P3Reak1.InnerText = PodReak1.ToString();
            P3Reak2.InnerText = PodReak2.ToString();
            P3Reak3.InnerText = PodReak3.ToString();
            P3Reak4.InnerText = PodReak4.ToString();
            P3Reak5.InnerText = PodReak5.ToString();
            P3Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P3Reak.InnerText = E1Reak;

            P3ozo1.InnerText = PodOzo1.ToString();
            P3ozo2.InnerText = PodOzo2.ToString();
            P3ozo3.InnerText = PodOzo3.ToString();
            P3ozo4.InnerText = PodOzo4.ToString();
            P3ozo5.InnerText = PodOzo5.ToString();
            P3ozo6.InnerText = PodOzo6.ToString();
            P3ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P3ozo.InnerText = E1Ozo;

            P3polo1.InnerText = PodPolo1.ToString();
            P3polo2.InnerText = PodPolo2.ToString();
            P3polo3.InnerText = PodPolo3.ToString();
            P3polo4.InnerText = PodPolo4.ToString();
            P3polo5.InnerText = PodPolo5.ToString();
            P3polo6.InnerText = PodPolo6.ToString();
            P3polo7.InnerText = PodPolo7.ToString();
            P3polo8.InnerText = PodPolo8.ToString();
            P3polo9.InnerText = PodPolo9.ToString();
            P3polo10.InnerText = PodPolo10.ToString();
            P3polo11.InnerText = PodPolo11.ToString();
            P3polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P3polo.InnerText = E1Polo;

            P3alat1.InnerText = PodAlati1.ToString();
            P3alat2.InnerText = PodAlati2.ToString();
            P3alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P3alat.InnerText = E1Alati;

            P3proce1.InnerText = PodProce1.ToString();
            P3proce2.InnerText = PodProce2.ToString();
            P3proce3.InnerText = PodProce3.ToString();
            P3proce4.InnerText = PodProce4.ToString();
            P3proce5.InnerText = PodProce5.ToString();
            P3proce6.InnerText = PodProce6.ToString();
            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P3proce.InnerText = E1Proce;

            BrojKartica3.InnerText = BrojK1.ToString();
            Pos3Reak.InnerText = PositiveReak.ToString();
            Pos3ozo.InnerText = PositiveOzo.ToString();
            Pos3polo.InnerText = PositivePolozaj.ToString();
            Pos3alat.InnerText = PositiveAlati.ToString();
            Pos3proce.InnerText = PositiveProcedure.ToString();

            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

            treci = str1 + ", " + str2 + "," + str3;

        }


        protected void LoadCetvrti()
        {
            string pd = "'2020.4.1'";
            string kd = "'2020.4.30'";
            
            DataTable dt1 = new DataTable();

            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K4.InnerText = (dt1.Rows.Count).ToString();
            LoopData(pd, kd);
            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani4.InnerText = (HSDani.Rows.Count).ToString();

            NoWorkers4.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati4.InnerText = SumHours.ToString();
            SWA4.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS4.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco4.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII4.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI4.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA4.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC4.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill4.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire4.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM4.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC4.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC4.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC4.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI4.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL4.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI4.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive4.InnerText = sigurne.ToString();
            negative4.InnerText = nesigurne.ToString();
            UA4.InnerText = UA.ToString();
            UC4.InnerText = UC.ToString();
            open4.InnerText = open.ToString();
            ongoing4.InnerText = ongoing.ToString();
            close4.InnerText = closed.ToString();
            NegativeClosed4.InnerText = negativClosed.ToString();
            UAClosed4.InnerText = UAclosed.ToString();
            UCClosed4.InnerText = UCclosed.ToString();

            P4Reak1.InnerText = PodReak1.ToString();
            P4Reak2.InnerText = PodReak2.ToString();
            P4Reak3.InnerText = PodReak3.ToString();
            P4Reak4.InnerText = PodReak4.ToString();
            P4Reak5.InnerText = PodReak5.ToString();
            P4Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P4Reak.InnerText = E1Reak;

            P4ozo1.InnerText = PodOzo1.ToString();
            P4ozo2.InnerText = PodOzo2.ToString();
            P4ozo3.InnerText = PodOzo3.ToString();
            P4ozo4.InnerText = PodOzo4.ToString();
            P4ozo5.InnerText = PodOzo5.ToString();
            P4ozo6.InnerText = PodOzo6.ToString();
            P4ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P4ozo.InnerText = E1Ozo;

            P4polo1.InnerText = PodPolo1.ToString();
            P4polo2.InnerText = PodPolo2.ToString();
            P4polo3.InnerText = PodPolo3.ToString();
            P4polo4.InnerText = PodPolo4.ToString();
            P4polo5.InnerText = PodPolo5.ToString();
            P4polo6.InnerText = PodPolo6.ToString();
            P4polo7.InnerText = PodPolo7.ToString();
            P4polo8.InnerText = PodPolo8.ToString();
            P4polo9.InnerText = PodPolo9.ToString();
            P4polo10.InnerText = PodPolo10.ToString();
            P4polo11.InnerText = PodPolo11.ToString();
            P4polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P4polo.InnerText = E1Polo;

            P4alat1.InnerText = PodAlati1.ToString();
            P4alat2.InnerText = PodAlati2.ToString();
            P4alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P4alat.InnerText = E1Alati;

            P4proce1.InnerText = PodProce1.ToString();
            P4proce2.InnerText = PodProce2.ToString();
            P4proce3.InnerText = PodProce3.ToString();
            P4proce4.InnerText = PodProce4.ToString();
            P4proce5.InnerText = PodProce5.ToString();
            P4proce6.InnerText = PodProce6.ToString();

            BrojKartica4.InnerText = BrojK1.ToString();
            Pos4Reak.InnerText = PositiveReak.ToString();
            Pos4ozo.InnerText = PositiveOzo.ToString();
            Pos4polo.InnerText = PositivePolozaj.ToString();
            Pos4alat.InnerText = PositiveAlati.ToString();
            Pos4proce.InnerText = PositiveProcedure.ToString();

            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P4proce.InnerText = E1Proce;
            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

            cetvrti = str1 + ", " + str2 + "," + str3;

        }

        protected void LoadPeti()
        {
            string pd = "'2020.5.1'";
            string kd = "'2020.5.31'";
            
            DataTable dt1 = new DataTable();

            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K5.InnerText = (dt1.Rows.Count).ToString();
            LoopData(pd, kd);

            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani5.InnerText = (HSDani.Rows.Count).ToString();

            NoWorkers5.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati5.InnerText = SumHours.ToString();
            SWA5.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS5.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco5.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII5.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI5.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA5.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC5.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill5.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire5.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM5.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC5.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC5.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC5.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI5.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL5.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI5.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive5.InnerText = sigurne.ToString();
            negative5.InnerText = nesigurne.ToString();
            UA5.InnerText = UA.ToString();
            UC5.InnerText = UC.ToString();
            open5.InnerText = open.ToString();
            ongoing5.InnerText = ongoing.ToString();
            close5.InnerText = closed.ToString();
            NegativeClosed5.InnerText = negativClosed.ToString();
            UAClosed5.InnerText = UAclosed.ToString();
            UCClosed5.InnerText = UCclosed.ToString();

            P5Reak1.InnerText = PodReak1.ToString();
            P5Reak2.InnerText = PodReak2.ToString();
            P5Reak3.InnerText = PodReak3.ToString();
            P5Reak4.InnerText = PodReak4.ToString();
            P5Reak5.InnerText = PodReak5.ToString();
            P5Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P5Reak.InnerText = E1Reak;

            P5ozo1.InnerText = PodOzo1.ToString();
            P5ozo2.InnerText = PodOzo2.ToString();
            P5ozo3.InnerText = PodOzo3.ToString();
            P5ozo4.InnerText = PodOzo4.ToString();
            P5ozo5.InnerText = PodOzo5.ToString();
            P5ozo6.InnerText = PodOzo6.ToString();
            P5ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P5ozo.InnerText = E1Ozo;

            P5polo1.InnerText = PodPolo1.ToString();
            P5polo2.InnerText = PodPolo2.ToString();
            P5polo3.InnerText = PodPolo3.ToString();
            P5polo4.InnerText = PodPolo4.ToString();
            P5polo5.InnerText = PodPolo5.ToString();
            P5polo6.InnerText = PodPolo6.ToString();
            P5polo7.InnerText = PodPolo7.ToString();
            P5polo8.InnerText = PodPolo8.ToString();
            P5polo9.InnerText = PodPolo9.ToString();
            P5polo10.InnerText = PodPolo10.ToString();
            P5polo11.InnerText = PodPolo11.ToString();
            P5polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P5polo.InnerText = E1Polo;

            P5alat1.InnerText = PodAlati1.ToString();
            P5alat2.InnerText = PodAlati2.ToString();
            P5alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P5alat.InnerText = E1Alati;

            P5proce1.InnerText = PodProce1.ToString();
            P5proce2.InnerText = PodProce2.ToString();
            P5proce3.InnerText = PodProce3.ToString();
            P5proce4.InnerText = PodProce4.ToString();
            P5proce5.InnerText = PodProce5.ToString();
            P5proce6.InnerText = PodProce6.ToString();
            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P5proce.InnerText = E1Proce;

            BrojKartica5.InnerText = BrojK1.ToString();
            Pos5Reak.InnerText = PositiveReak.ToString();
            Pos5ozo.InnerText = PositiveOzo.ToString();
            Pos5polo.InnerText = PositivePolozaj.ToString();
            Pos5alat.InnerText = PositiveAlati.ToString();
            Pos5proce.InnerText = PositiveProcedure.ToString();

            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

            peti = str1 + ", " + str2 +","+ str3;

        }

        protected void LoadSesti()
        {
            string pd = "'2020.6.1'";
            string kd = "'2020.6.30'";
           
            DataTable dt1 = new DataTable();
           
            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K6.InnerText = (dt1.Rows.Count).ToString();
            LoopData(pd, kd);

            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani6.InnerText = (HSDani.Rows.Count).ToString();

            NoWorkers6.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati6.InnerText = SumHours.ToString();
            SWA6.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS6.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco6.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII6.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI6.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA6.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC6.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill6.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire6.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM6.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC6.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC6.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC6.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI6.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL6.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI6.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive6.InnerText = sigurne.ToString();
            negative6.InnerText = nesigurne.ToString();
            UA6.InnerText = UA.ToString();
            UC6.InnerText = UC.ToString();
            open6.InnerText = open.ToString();
            ongoing6.InnerText = ongoing.ToString();
            close6.InnerText = closed.ToString();
            NegativeClosed6.InnerText = negativClosed.ToString();
            UAClosed6.InnerText = UAclosed.ToString();
            UCClosed6.InnerText = UCclosed.ToString();

            P6Reak1.InnerText = PodReak1.ToString();
            P6Reak2.InnerText = PodReak2.ToString();
            P6Reak3.InnerText = PodReak3.ToString();
            P6Reak4.InnerText = PodReak4.ToString();
            P6Reak5.InnerText = PodReak5.ToString();
            P6Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P6Reak.InnerText = E1Reak;

            P6ozo1.InnerText = PodOzo1.ToString();
            P6ozo2.InnerText = PodOzo2.ToString();
            P6ozo3.InnerText = PodOzo3.ToString();
            P6ozo4.InnerText = PodOzo4.ToString();
            P6ozo5.InnerText = PodOzo5.ToString();
            P6ozo6.InnerText = PodOzo6.ToString();
            P6ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P6ozo.InnerText = E1Ozo;

            P6polo1.InnerText = PodPolo1.ToString();
            P6polo2.InnerText = PodPolo2.ToString();
            P6polo3.InnerText = PodPolo3.ToString();
            P6polo4.InnerText = PodPolo4.ToString();
            P6polo5.InnerText = PodPolo5.ToString();
            P6polo6.InnerText = PodPolo6.ToString();
            P6polo7.InnerText = PodPolo7.ToString();
            P6polo8.InnerText = PodPolo8.ToString();
            P6polo9.InnerText = PodPolo9.ToString();
            P6polo10.InnerText = PodPolo10.ToString();
            P6polo11.InnerText = PodPolo11.ToString();
            P6polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P6polo.InnerText = E1Polo;

            P6alat1.InnerText = PodAlati1.ToString();
            P6alat2.InnerText = PodAlati2.ToString();
            P6alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P6alat.InnerText = E1Alati;

            P6proce1.InnerText = PodProce1.ToString();
            P6proce2.InnerText = PodProce2.ToString();
            P6proce3.InnerText = PodProce3.ToString();
            P6proce4.InnerText = PodProce4.ToString();
            P6proce5.InnerText = PodProce5.ToString();
            P6proce6.InnerText = PodProce6.ToString();
            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P6proce.InnerText = E1Proce;

            BrojKartica6.InnerText = BrojK1.ToString();
            Pos6Reak.InnerText = PositiveReak.ToString();
            Pos6ozo.InnerText = PositiveOzo.ToString();
            Pos6polo.InnerText = PositivePolozaj.ToString();
            Pos6alat.InnerText = PositiveAlati.ToString();
            Pos6proce.InnerText = PositiveProcedure.ToString();

            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

            sesti = str1 + ", " + str2 + "," + str3;


        }


        protected void LoadSedmi()
        {
            string pd = "'2020.7.1'";
            string kd = "'2020.7.31'";

            DataTable dt1 = new DataTable();

            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K7.InnerText = (dt1.Rows.Count).ToString();
            LoopData(pd, kd);

            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani7.InnerText = (HSDani.Rows.Count).ToString();

            NoWorkers7.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati7.InnerText = SumHours.ToString();
            SWA7.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS7.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco7.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII7.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI7.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA7.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC7.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill7.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire7.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM7.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC7.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC7.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC7.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI7.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL7.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI7.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive7.InnerText = sigurne.ToString();
            negative7.InnerText = nesigurne.ToString();
            UA7.InnerText = UA.ToString();
            UC7.InnerText = UC.ToString();
            open7.InnerText = open.ToString();
            ongoing7.InnerText = ongoing.ToString();
            close7.InnerText = closed.ToString();
            NegativeClosed7.InnerText = negativClosed.ToString();
            UAClosed7.InnerText = UAclosed.ToString();
            UCClosed7.InnerText = UCclosed.ToString();

            P7Reak1.InnerText = PodReak1.ToString();
            P7Reak2.InnerText = PodReak2.ToString();
            P7Reak3.InnerText = PodReak3.ToString();
            P7Reak4.InnerText = PodReak4.ToString();
            P7Reak5.InnerText = PodReak5.ToString();
            P7Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P7Reak.InnerText = E1Reak;

            P7ozo1.InnerText = PodOzo1.ToString();
            P7ozo2.InnerText = PodOzo2.ToString();
            P7ozo3.InnerText = PodOzo3.ToString();
            P7ozo4.InnerText = PodOzo4.ToString();
            P7ozo5.InnerText = PodOzo5.ToString();
            P7ozo6.InnerText = PodOzo6.ToString();
            P7ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P7ozo.InnerText = E1Ozo;

            P7polo1.InnerText = PodPolo1.ToString();
            P7polo2.InnerText = PodPolo2.ToString();
            P7polo3.InnerText = PodPolo3.ToString();
            P7polo4.InnerText = PodPolo4.ToString();
            P7polo5.InnerText = PodPolo5.ToString();
            P7polo6.InnerText = PodPolo6.ToString();
            P7polo7.InnerText = PodPolo7.ToString();
            P7polo8.InnerText = PodPolo8.ToString();
            P7polo9.InnerText = PodPolo9.ToString();
            P7polo10.InnerText = PodPolo10.ToString();
            P7polo11.InnerText = PodPolo11.ToString();
            P7polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P7polo.InnerText = E1Polo;

            P7alat1.InnerText = PodAlati1.ToString();
            P7alat2.InnerText = PodAlati2.ToString();
            P7alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P7alat.InnerText = E1Alati;

            P7proce1.InnerText = PodProce1.ToString();
            P7proce2.InnerText = PodProce2.ToString();
            P7proce3.InnerText = PodProce3.ToString();
            P7proce4.InnerText = PodProce4.ToString();
            P7proce5.InnerText = PodProce5.ToString();
            P7proce6.InnerText = PodProce6.ToString();
            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P7proce.InnerText = E1Proce;

            BrojKartica7.InnerText = BrojK1.ToString();
            Pos7Reak.InnerText = PositiveReak.ToString();
            Pos7ozo.InnerText = PositiveOzo.ToString();
            Pos7polo.InnerText = PositivePolozaj.ToString();
            Pos7alat.InnerText = PositiveAlati.ToString();
            Pos7proce.InnerText = PositiveProcedure.ToString();

            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;


            sedmi = str1 + ", " + str2 + "," + str3;


        }

        protected void LoadOsmi()
        {
            string pd = "'2020.8.1'";
            string kd = "'2020.8.31'";

            DataTable dt1 = new DataTable();

            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K8.InnerText = (dt1.Rows.Count).ToString();
            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani8.InnerText = (HSDani.Rows.Count).ToString();

            LoopData(pd, kd);

            NoWorkers8.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati8.InnerText = SumHours.ToString();
            SWA8.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS8.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco8.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII8.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI8.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA8.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC8.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill8.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire8.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM8.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC8.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC8.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC8.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI8.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL8.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI8.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive8.InnerText = sigurne.ToString();
            negative8.InnerText = nesigurne.ToString();
            UA8.InnerText = UA.ToString();
            UC8.InnerText = UC.ToString();
            open8.InnerText = open.ToString();
            ongoing8.InnerText = ongoing.ToString();
            close8.InnerText = closed.ToString();
            NegativeClosed8.InnerText = negativClosed.ToString();
            UAClosed8.InnerText = UAclosed.ToString();
            UCClosed8.InnerText = UCclosed.ToString();

            P8Reak1.InnerText = PodReak1.ToString();
            P8Reak2.InnerText = PodReak2.ToString();
            P8Reak3.InnerText = PodReak3.ToString();
            P8Reak4.InnerText = PodReak4.ToString();
            P8Reak5.InnerText = PodReak5.ToString();
            P8Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P8Reak.InnerText = E1Reak;

            P8ozo1.InnerText = PodOzo1.ToString();
            P8ozo2.InnerText = PodOzo2.ToString();
            P8ozo3.InnerText = PodOzo3.ToString();
            P8ozo4.InnerText = PodOzo4.ToString();
            P8ozo5.InnerText = PodOzo5.ToString();
            P8ozo6.InnerText = PodOzo6.ToString();
            P8ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P8ozo.InnerText = E1Ozo;

            P8polo1.InnerText = PodPolo1.ToString();
            P8polo2.InnerText = PodPolo2.ToString();
            P8polo3.InnerText = PodPolo3.ToString();
            P8polo4.InnerText = PodPolo4.ToString();
            P8polo5.InnerText = PodPolo5.ToString();
            P8polo6.InnerText = PodPolo6.ToString();
            P8polo7.InnerText = PodPolo7.ToString();
            P8polo8.InnerText = PodPolo8.ToString();
            P8polo9.InnerText = PodPolo9.ToString();
            P8polo10.InnerText = PodPolo10.ToString();
            P8polo11.InnerText = PodPolo11.ToString();
            P8polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P8polo.InnerText = E1Polo;

            P8alat1.InnerText = PodAlati1.ToString();
            P8alat2.InnerText = PodAlati2.ToString();
            P8alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P8alat.InnerText = E1Alati;

            P8proce1.InnerText = PodProce1.ToString();
            P8proce2.InnerText = PodProce2.ToString();
            P8proce3.InnerText = PodProce3.ToString();
            P8proce4.InnerText = PodProce4.ToString();
            P8proce5.InnerText = PodProce5.ToString();
            P8proce6.InnerText = PodProce6.ToString();

            BrojKartica8.InnerText = BrojK1.ToString();
            Pos8Reak.InnerText = PositiveReak.ToString();
            Pos8ozo.InnerText = PositiveOzo.ToString();
            Pos8polo.InnerText = PositivePolozaj.ToString();
            Pos8alat.InnerText = PositiveAlati.ToString();
            Pos8proce.InnerText = PositiveProcedure.ToString();

            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P8proce.InnerText = E1Proce;
            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

            osmi = str1 + ", " + str2 + "," + str3;


        }

        protected void LoadDeveti()
        {
            string pd = "'2020.9.1'";
            string kd = "'2020.9.30'";

            DataTable dt1 = new DataTable();

            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K9.InnerText = (dt1.Rows.Count).ToString();
            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani9.InnerText = (HSDani.Rows.Count).ToString();

            LoopData(pd, kd);

            NoWorkers9.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati9.InnerText = SumHours.ToString();
            SWA9.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS9.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco9.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII9.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI9.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA9.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC9.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill9.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire9.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM9.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC9.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC9.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC9.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI9.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL9.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI9.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive9.InnerText = sigurne.ToString();
            negative9.InnerText = nesigurne.ToString();
            UA9.InnerText = UA.ToString();
            UC9.InnerText = UC.ToString();
            open9.InnerText = open.ToString();
            ongoing9.InnerText = ongoing.ToString();
            close9.InnerText = closed.ToString();
            NegativeClosed9.InnerText = negativClosed.ToString();
            UAClosed9.InnerText = UAclosed.ToString();
            UCClosed9.InnerText = UCclosed.ToString();

            P9Reak1.InnerText = PodReak1.ToString();
            P9Reak2.InnerText = PodReak2.ToString();
            P9Reak3.InnerText = PodReak3.ToString();
            P9Reak4.InnerText = PodReak4.ToString();
            P9Reak5.InnerText = PodReak5.ToString();
            P9Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P9Reak.InnerText = E1Reak;

            P9ozo1.InnerText = PodOzo1.ToString();
            P9ozo2.InnerText = PodOzo2.ToString();
            P9ozo3.InnerText = PodOzo3.ToString();
            P9ozo4.InnerText = PodOzo4.ToString();
            P9ozo5.InnerText = PodOzo5.ToString();
            P9ozo6.InnerText = PodOzo6.ToString();
            P9ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P9ozo.InnerText = E1Ozo;

            P9polo1.InnerText = PodPolo1.ToString();
            P9polo2.InnerText = PodPolo2.ToString();
            P9polo3.InnerText = PodPolo3.ToString();
            P9polo4.InnerText = PodPolo4.ToString();
            P9polo5.InnerText = PodPolo5.ToString();
            P9polo6.InnerText = PodPolo6.ToString();
            P9polo7.InnerText = PodPolo7.ToString();
            P9polo8.InnerText = PodPolo8.ToString();
            P9polo9.InnerText = PodPolo9.ToString();
            P9polo10.InnerText = PodPolo10.ToString();
            P9polo11.InnerText = PodPolo11.ToString();
            P9polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P9polo.InnerText = E1Polo;

            P9alat1.InnerText = PodAlati1.ToString();
            P9alat2.InnerText = PodAlati2.ToString();
            P9alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P9alat.InnerText = E1Alati;

            P9proce1.InnerText = PodProce1.ToString();
            P9proce2.InnerText = PodProce2.ToString();
            P9proce3.InnerText = PodProce3.ToString();
            P9proce4.InnerText = PodProce4.ToString();
            P9proce5.InnerText = PodProce5.ToString();
            P9proce6.InnerText = PodProce6.ToString();
            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P9proce.InnerText = E1Proce;

            BrojKartica9.InnerText = BrojK1.ToString();
            Pos9Reak.InnerText = PositiveReak.ToString();
            Pos9ozo.InnerText = PositiveOzo.ToString();
            Pos9polo.InnerText = PositivePolozaj.ToString();
            Pos9alat.InnerText = PositiveAlati.ToString();
            Pos9proce.InnerText = PositiveProcedure.ToString();

            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

            deveti = str1 + ", " + str2 +"," + str3;


        }


        protected void LoadDeseti()
        {
            string pd = "'2020.10.1'";
            string kd = "'2020.10.31'";

            DataTable dt1 = new DataTable();

            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K10.InnerText = (dt1.Rows.Count).ToString();
            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani10.InnerText = (HSDani.Rows.Count).ToString();

            LoopData(pd, kd);

            NoWorkers10.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati10.InnerText = SumHours.ToString();
            SWA10.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS10.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco10.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII10.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI10.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA10.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC10.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill10.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire10.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM10.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC10.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC10.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC10.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI10.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL10.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI10.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive10.InnerText = sigurne.ToString();
            negative10.InnerText = nesigurne.ToString();
            UA10.InnerText = UA.ToString();
            UC10.InnerText = UC.ToString();
            open10.InnerText = open.ToString();
            ongoing10.InnerText = ongoing.ToString();
            close10.InnerText = closed.ToString();
            NegativeClosed10.InnerText = negativClosed.ToString();
            UAClosed10.InnerText = UAclosed.ToString();
            UCClosed10.InnerText = UCclosed.ToString();

            P10Reak1.InnerText = PodReak1.ToString();
            P10Reak2.InnerText = PodReak2.ToString();
            P10Reak3.InnerText = PodReak3.ToString();
            P10Reak4.InnerText = PodReak4.ToString();
            P10Reak5.InnerText = PodReak5.ToString();
            P10Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P10Reak.InnerText = E1Reak;

            P10ozo1.InnerText = PodOzo1.ToString();
            P10ozo2.InnerText = PodOzo2.ToString();
            P10ozo3.InnerText = PodOzo3.ToString();
            P10ozo4.InnerText = PodOzo4.ToString();
            P10ozo5.InnerText = PodOzo5.ToString();
            P10ozo6.InnerText = PodOzo6.ToString();
            P10ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P10ozo.InnerText = E1Ozo;

            P10polo1.InnerText = PodPolo1.ToString();
            P10polo2.InnerText = PodPolo2.ToString();
            P10polo3.InnerText = PodPolo3.ToString();
            P10polo4.InnerText = PodPolo4.ToString();
            P10polo5.InnerText = PodPolo5.ToString();
            P10polo6.InnerText = PodPolo6.ToString();
            P10polo7.InnerText = PodPolo7.ToString();
            P10polo8.InnerText = PodPolo8.ToString();
            P10polo9.InnerText = PodPolo9.ToString();
            P10polo10.InnerText = PodPolo10.ToString();
            P10polo11.InnerText = PodPolo11.ToString();
            P10polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P10polo.InnerText = E1Polo;

            P10alat1.InnerText = PodAlati1.ToString();
            P10alat2.InnerText = PodAlati2.ToString();
            P10alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P10alat.InnerText = E1Alati;

            P10proce1.InnerText = PodProce1.ToString();
            P10proce2.InnerText = PodProce2.ToString();
            P10proce3.InnerText = PodProce3.ToString();
            P10proce4.InnerText = PodProce4.ToString();
            P10proce5.InnerText = PodProce5.ToString();
            P10proce6.InnerText = PodProce6.ToString();
            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P10proce.InnerText = E1Proce;

            BrojKartica10.InnerText = BrojK1.ToString();
            Pos10Reak.InnerText = PositiveReak.ToString();
            Pos10ozo.InnerText = PositiveOzo.ToString();
            Pos10polo.InnerText = PositivePolozaj.ToString();
            Pos10alat.InnerText = PositiveAlati.ToString();
            Pos10proce.InnerText = PositiveProcedure.ToString();

            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

            deseti = str1 + ", " + str2 + "," + str3;


        }

        protected void LoadJedanesti()
        {
            string pd = "'2020.11.1'";
            string kd = "'2020.11.30'";

            DataTable dt1 = new DataTable();

            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K11.InnerText = (dt1.Rows.Count).ToString();
            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani11.InnerText = (HSDani.Rows.Count).ToString();

            LoopData(pd, kd);

            NoWorkers11.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati11.InnerText = SumHours.ToString();
            SWA11.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS11.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco11.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII11.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI11.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA11.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC11.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill11.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire11.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM11.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC11.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC11.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC11.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI11.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL11.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI11.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive11.InnerText = sigurne.ToString();
            negative11.InnerText = nesigurne.ToString();
            UA11.InnerText = UA.ToString();
            UC11.InnerText = UC.ToString();
            open11.InnerText = open.ToString();
            ongoing11.InnerText = ongoing.ToString();
            close11.InnerText = closed.ToString();
            NegativeClosed11.InnerText = negativClosed.ToString();
            UAClosed11.InnerText = UAclosed.ToString();
            UCClosed11.InnerText = UCclosed.ToString();

            P11Reak1.InnerText = PodReak1.ToString();
            P11Reak2.InnerText = PodReak2.ToString();
            P11Reak3.InnerText = PodReak3.ToString();
            P11Reak4.InnerText = PodReak4.ToString();
            P11Reak5.InnerText = PodReak5.ToString();
            P11Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P11Reak.InnerText = E1Reak;

            P11ozo1.InnerText = PodOzo1.ToString();
            P11ozo2.InnerText = PodOzo2.ToString();
            P11ozo3.InnerText = PodOzo3.ToString();
            P11ozo4.InnerText = PodOzo4.ToString();
            P11ozo5.InnerText = PodOzo5.ToString();
            P11ozo6.InnerText = PodOzo6.ToString();
            P11ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P11ozo.InnerText = E1Ozo;

            P11polo1.InnerText = PodPolo1.ToString();
            P11polo2.InnerText = PodPolo2.ToString();
            P11polo3.InnerText = PodPolo3.ToString();
            P11polo4.InnerText = PodPolo4.ToString();
            P11polo5.InnerText = PodPolo5.ToString();
            P11polo6.InnerText = PodPolo6.ToString();
            P11polo7.InnerText = PodPolo7.ToString();
            P11polo8.InnerText = PodPolo8.ToString();
            P11polo9.InnerText = PodPolo9.ToString();
            P11polo10.InnerText = PodPolo10.ToString();
            P11polo11.InnerText = PodPolo11.ToString();
            P11polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P11polo.InnerText = E1Polo;

            P11alat1.InnerText = PodAlati1.ToString();
            P11alat2.InnerText = PodAlati2.ToString();
            P11alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P11alat.InnerText = E1Alati;

            P11proce1.InnerText = PodProce1.ToString();
            P11proce2.InnerText = PodProce2.ToString();
            P11proce3.InnerText = PodProce3.ToString();
            P11proce4.InnerText = PodProce4.ToString();
            P11proce5.InnerText = PodProce5.ToString();
            P11proce6.InnerText = PodProce6.ToString();
            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P11proce.InnerText = E1Proce;

            BrojKartica11.InnerText = BrojK1.ToString();
            Pos11Reak.InnerText = PositiveReak.ToString();
            Pos11ozo.InnerText = PositiveOzo.ToString();
            Pos11polo.InnerText = PositivePolozaj.ToString();
            Pos11alat.InnerText = PositiveAlati.ToString();
            Pos11proce.InnerText = PositiveProcedure.ToString();

            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;


            jedanesti = str1 + ", " + str2 + ","+str3;


        }

        protected void LoadDvanesti()
        {
            string pd = "'2020.12.1'";
            string kd = "'2020.12.31'";

            DataTable dt1 = new DataTable();

            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            K12.InnerText = (dt1.Rows.Count).ToString();
            //Dani
            DataTable HSDani = new DataTable();
            HSDani = this.GetHSDani(pd, kd);
            int HSDani1 = HSDani.Rows.Count;
            Dani12.InnerText = (HSDani.Rows.Count).ToString();

            LoopData(pd, kd);

            NoWorkers12.InnerText = (WorkersCro + WorkersSub).ToString();
            Sati12.InnerText = SumHours.ToString();
            SWA12.InnerText = (CRoSWA + ConSWA + ThrdSWA).ToString();
            TPS12.InnerText = (CRoLSRV + ConLSRV + ThrdLSRV).ToString();
            Alco12.InnerText = (CRoAlco + ConAlco + ThrdAlco).ToString();
            NII12.InnerText = (CRoNII + ConNII + ThrdNII).ToString();
            RTI12.InnerText = (CRoRTI + ConRTI + ThrdRTI).ToString();
            RTA12.InnerText = (CRoRTA + ConRTA + ThrdRTA).ToString();
            LOPC12.InnerText = (CRoLOPC + ConLOPC + ThrdLOPC).ToString();
            Spill12.InnerText = (CRoSPILL + ConSPILL + ThrdSPILL).ToString();
            Fire12.InnerText = (CRoFIRE + ConFIRE + ThrdFIRE).ToString();
            NM12.InnerText = (CRoNM + ConNM + ThrdNM).ToString();
            FAC12.InnerText = (CRoFAC + ConFAC + ThrdFAC).ToString();
            MTC12.InnerText = (CRoMTC + ConMTC + ThrdMTC).ToString();
            RWC12.InnerText = (CRoRWC + ConRWC + ThrdRWC).ToString();
            LTI12.InnerText = (CRoLTI + ConLTI + ThrdLTI).ToString();
            FTL12.InnerText = (CRoFTL + ConFTL + ThrdFTL).ToString();
            TRI12.InnerText = (CRoTRI + ConTRI + ThrdTRI).ToString();

            positive12.InnerText = sigurne.ToString();
            negative12.InnerText = nesigurne.ToString();
            UA12.InnerText = UA.ToString();
            UC12.InnerText = UC.ToString();
            open12.InnerText = open.ToString();
            ongoing12.InnerText = ongoing.ToString();
            close12.InnerText = closed.ToString();
            NegativeClosed12.InnerText = negativClosed.ToString();
            UAClosed12.InnerText = UAclosed.ToString();
            UCClosed12.InnerText = UCclosed.ToString();

            P12Reak1.InnerText = PodReak1.ToString();
            P12Reak2.InnerText = PodReak2.ToString();
            P12Reak3.InnerText = PodReak3.ToString();
            P12Reak4.InnerText = PodReak4.ToString();
            P12Reak5.InnerText = PodReak5.ToString();
            P12Reak6.InnerText = PodReak6.ToString();
            string E1Reak = (PodReak1 + PodReak2 + PodReak3 + PodReak4 + PodReak5 + PodReak6).ToString();
            P12Reak.InnerText = E1Reak;

            P12ozo1.InnerText = PodOzo1.ToString();
            P12ozo2.InnerText = PodOzo2.ToString();
            P12ozo3.InnerText = PodOzo3.ToString();
            P12ozo4.InnerText = PodOzo4.ToString();
            P12ozo5.InnerText = PodOzo5.ToString();
            P12ozo6.InnerText = PodOzo6.ToString();
            P11ozo7.InnerText = PodOzo7.ToString();
            string E1Ozo = (PodOzo1 + PodOzo2 + PodOzo3 + PodOzo4 + PodOzo5 + PodOzo6 + PodOzo7).ToString();
            P12ozo.InnerText = E1Ozo;

            P12polo1.InnerText = PodPolo1.ToString();
            P12polo2.InnerText = PodPolo2.ToString();
            P12polo3.InnerText = PodPolo3.ToString();
            P12polo4.InnerText = PodPolo4.ToString();
            P12polo5.InnerText = PodPolo5.ToString();
            P12polo6.InnerText = PodPolo6.ToString();
            P12polo7.InnerText = PodPolo7.ToString();
            P12polo8.InnerText = PodPolo8.ToString();
            P12polo9.InnerText = PodPolo9.ToString();
            P12polo10.InnerText = PodPolo10.ToString();
            P12polo11.InnerText = PodPolo11.ToString();
            P12polo12.InnerText = PodPolo12.ToString();
            string E1Polo = (PodPolo1 + PodPolo2 + PodPolo3 + PodPolo4 + PodPolo5 + PodPolo6 + PodPolo7 + PodPolo8 + PodPolo9 + PodPolo10 + PodPolo11 + PodPolo12).ToString();
            P12polo.InnerText = E1Polo;

            P12alat1.InnerText = PodAlati1.ToString();
            P12alat2.InnerText = PodAlati2.ToString();
            P12alat3.InnerText = PodAlati3.ToString();
            string E1Alati = (PodAlati1 + PodAlati2 + PodAlati3).ToString();
            P12alat.InnerText = E1Alati;

            P12proce1.InnerText = PodProce1.ToString();
            P12proce2.InnerText = PodProce2.ToString();
            P12proce3.InnerText = PodProce3.ToString();
            P12proce4.InnerText = PodProce4.ToString();
            P12proce5.InnerText = PodProce5.ToString();
            P12proce6.InnerText = PodProce6.ToString();
            string E1Proce = (PodProce1 + PodProce2 + PodProce3 + PodProce4 + PodProce5 + PodProce6).ToString();
            P12proce.InnerText = E1Proce;

            BrojKartica12.InnerText = BrojK1.ToString();
            Pos12Reak.InnerText = PositiveReak.ToString();
            Pos12ozo.InnerText = PositiveOzo.ToString();
            Pos12polo.InnerText = PositivePolozaj.ToString();
            Pos12alat.InnerText = PositiveAlati.ToString();
            Pos12proce.InnerText = PositiveProcedure.ToString();

            string str1 = HSDani1 + ", " + NoK1 + ", " + sigurne + ", " + nesigurne + ", " + UA + ", " + UC + ", " + open + ", " + ongoing + ", " + closed + ", " +
                negativClosed + ", " + UAclosed + ", " + UCclosed + ", " + (WorkersCro + WorkersSub);

            string str2 = E1Reak + ", " + PodReak1 + ", " + PodReak2 + ", " + PodReak3 + ", " + PodReak4 + ", " + PodReak5 + ", " + PodReak6 + ", " + E1Ozo +
                ", " + PodOzo1 + ", " + PodOzo2 + ", " + PodOzo3 + ", " + PodOzo4 + ", " + PodOzo5 + ", " + PodOzo6 + ", " + PodOzo7 + ", " + E1Polo + ", " +
                PodPolo1 + ", " + PodPolo2 + ", " + PodPolo3 + ", " + PodPolo4 + ", " + PodPolo5 + ", " + PodPolo6 + ", " + PodPolo7 + ", " + PodPolo8 + ", " +
                PodPolo9 + ", " + PodPolo10 + ", " + PodPolo11 + ", " + PodPolo12 + ", " + E1Alati + ", " + PodAlati1 + ", " + PodAlati2 + ", " + PodAlati3 +
                ", " + E1Proce + ", " + PodProce1 + ", " + PodProce2 + ", " + PodProce3 + ", " + PodProce4 + ", " + PodProce5 + ", " + PodProce6 + ", " +
                SumHours + ", " + (CRoTRI + ConTRI + ThrdTRI) + ", " + (CRoFTL + ConFTL + ThrdFTL) + ", " + (CRoLTI + ConLTI + ThrdLTI) + ", " +
                (CRoRWC + ConRWC + ThrdRWC) + ", " + (CRoMTC + ConMTC + ThrdMTC) + ", " + (CRoFAC + ConFAC + ThrdFAC) + ", " + (CRoNM + ConNM + ThrdNM) +
                ", " + (CRoFIRE + ConFIRE + ThrdFIRE) + ", " + (CRoSPILL + ConSPILL + ThrdSPILL) + ", " + (CRoLOPC + ConLOPC + ThrdLOPC) + ", " +
                (CRoRTA + ConRTA + ThrdRTA) + ", " + (CRoRTI + ConRTI + ThrdRTI) + ", " + (CRoNII + ConNII + ThrdNII) + ", " + (CRoSWA + ConSWA + ThrdSWA) +
                ", " + (CRoLSRV + ConLSRV + ThrdLSRV) + ", " + (CRoAlco + ConAlco + ThrdAlco);

            string str3 = BrojK1 + ", " + PositiveReak + ", " + PositiveOzo + ", " + PositivePolozaj + ", " + PositiveAlati + ", " + PositiveProcedure;

           dvanesti = str1 + ", " + str2 + ", " + str3;


        }


        protected void LoopData(string pd, string kd)
        {
            sigurne = 0; nesigurne = 0; UA = 0; UC =0; closed = 0; open = 0; ongoing = 0; negativClosed = 0; UAclosed = 0; UCclosed = 0;
            PodReak1 = 0; PodReak2 = 0; PodReak3 = 0; PodReak4 = 0; PodReak5 = 0; PodReak6 = 0; PodOzo1 = 0; PodOzo2 = 0; PodOzo3 = 0; PodOzo4 = 0;
            PodOzo5 = 0; PodOzo6 = 0; PodOzo7 = 0; PodPolo1 = 0; PodPolo2 = 0; PodPolo3 = 0; PodPolo4 = 0; PodPolo5 = 0; PodPolo6 = 0; PodPolo7 = 0;
            PodPolo8 = 0; PodPolo9 = 0; PodPolo10 = 0; PodPolo11 = 0; PodPolo12 = 0; PodAlati1 = 0; PodAlati2 = 0; PodAlati3 = 0; PodProce1 = 0;
            PodProce2 = 0; PodProce3 = 0; PodProce4 = 0; PodProce5 = 0; PodProce6 = 0;

            BrojK1 = 0; PositiveReak = 0; PositiveOzo = 0; PositivePolozaj = 0; PositiveAlati = 0; PositiveProcedure = 0;

            WorkersCro = 0; WorkersSub = 0; WorkersRd = 0; SumWorker = 0; HoursCro = 0; HoursSub = 0; HoursRd = 0; SumHours = 0;
            CRoSWA = 0; CRoLSRV = 0; CRoAlco = 0; CRoNII = 0; CRoRTI = 0; CRoRTA = 0; CRoLOPC = 0; CRoSPILL = 0; CRoFIRE = 0; CRoNM = 0; CRoFAC = 0; CRoMTC = 0;
            CRoRWC = 0; CRoLTI = 0; CRoFTL = 0; CRoTRI = 0;
            ConSWA = 0; ConLSRV = 0; ConAlco = 0; ConNII = 0; ConRTI = 0; ConRTA = 0; ConLOPC = 0; ConSPILL = 0; ConFIRE = 0; ConNM = 0; ConFAC = 0; ConMTC = 0;
            ConRWC = 0; ConLTI = 0; ConFTL = 0; ConTRI = 0;
            ThrdSWA = 0; ThrdLSRV = 0; ThrdAlco = 0; ThrdNII = 0; ThrdRTI = 0; ThrdRTA = 0; ThrdLOPC = 0; ThrdSPILL = 0; ThrdFIRE = 0; ThrdNM = 0; ThrdFAC = 0;
            ThrdMTC = 0; ThrdRWC = 0; ThrdLTI = 0; ThrdFTL = 0; ThrdTRI = 0;

            DataTable dt = new DataTable();
            // Populating a DataTable from database.
            dt = this.GetReport(pd, kd);

            DataTable dt1 = new DataTable();

            dt1 = this.GetReport(pd, kd);
            int NoK1 = dt1.Rows.Count;
            
            for (int x = 0; x < dt1.Rows.Count; x++)
            {
                for (int y = 0; y < dt1.Columns.Count; y++)
                {
                    DataColumn Useres = dt1.Columns[y];
                    string header = Useres.ToString();
                    object cell = dt.Rows[x].ItemArray[y];
                    //object Negative

                    if (header == "SigNesigPostupak")
                    {
                        if (cell.ToString() == "True")
                        {
                            sigurne++;
                        }
                        else
                        {

                            nesigurne++;
                            if ((dt.Rows[x].ItemArray[y + 1]).ToString() == "False")
                            {
                                UA++;
                            }
                            else
                            {
                                UC++;
                            }

                            if (((dt.Rows[x].ItemArray[y + 2]).ToString() == "True") || ((dt.Rows[x].ItemArray[y + 3]).ToString() == "True") ||
                            ((dt.Rows[x].ItemArray[y + 4]).ToString() == "True") || ((dt.Rows[x].ItemArray[y + 5]).ToString() == "True") ||
                            ((dt.Rows[x].ItemArray[y + 6]).ToString() == "True"))
                            {
                                BrojK1++;
                            }

                        }
                    }
                    else if (header == "CardStatus")
                    {
                        if (cell.ToString() == "closed")
                        {
                            closed++;
                            // Zatvorene Negativne
                            if ((dt.Rows[x].ItemArray[y - 2]).ToString() == "False")
                            {
                                negativClosed++;
                                //Zatvorene negativne UAUC
                                if ((dt.Rows[x].ItemArray[y - 1]).ToString() == "True")
                                {
                                    UCclosed++;
                                }
                                else
                                {
                                    UAclosed++;
                                }
                            }



                        }
                        else if (cell.ToString() == "open")
                        {
                            open++;
                        }
                        else if (cell.ToString() == "ongoing")
                        {
                            ongoing++;
                        }
                    }
                    else if (header == "PodReak1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak1++;
                        }
                    }
                    else if (header == "PodReak2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak2++;
                        }
                    }
                    else if (header == "PodReak3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak3++;
                        }
                    }
                    else if (header == "PodReak4")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak4++;
                        }
                    }
                    else if (header == "PodReak5")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak5++;
                        }
                    }
                    else if (header == "PodReak6")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodReak6++;
                        }
                    }
                    else if (header == "PodOzo1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo1++;
                        }
                    }
                    else if (header == "PodOzo2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo2++;
                        }
                    }
                    else if (header == "PodOzo3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo3++;
                        }
                    }
                    else if (header == "PodOzo4")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo4++;
                        }
                    }
                    else if (header == "PodOzo5")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo5++;
                        }
                    }
                    else if (header == "PodOzo6")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo6++;
                        }
                    }
                    else if (header == "PodOzo7")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodOzo7++;
                        }
                    }
                    else if (header == "PodPolo1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo1++;
                        }
                    }
                    else if (header == "PodPolo2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo2++;
                        }
                    }
                    else if (header == "PodPolo3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo3++;
                        }
                    }
                    else if (header == "PodPolo4")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo4++;
                        }
                    }
                    else if (header == "PodPolo5")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo5++;
                        }
                    }
                    else if (header == "PodPolo6")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo6++;
                        }
                    }
                    else if (header == "PodPolo7")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo7++;
                        }
                    }
                    else if (header == "PodPolo8")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo8++;
                        }
                    }
                    else if (header == "PodPolo9")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo9++;
                        }
                    }
                    else if (header == "PodPolo10")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo10++;
                        }
                    }
                    else if (header == "PodPolo11")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo11++;
                        }
                    }
                    else if (header == "PodPolo12")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodPolo12++;
                        }
                    }
                    else if (header == "PodAlati1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodAlati1++;
                        }
                    }
                    else if (header == "PodAlati2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodAlati2++;
                        }
                    }
                    else if (header == "PodAlati3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodAlati3++;
                        }
                    }
                    else if (header == "PodProce1")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce1++;
                        }
                    }
                    else if (header == "PodProce2")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce2++;
                        }
                    }
                    else if (header == "PodProce3")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce3++;
                        }
                    }
                    else if (header == "PodProce4")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce4++;
                        }
                    }
                    else if (header == "PodProce5")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce5++;
                        }
                    }
                    else if (header == "PodProce6")
                    {
                        if (cell.ToString() == "True")
                        {
                            PodProce6++;
                        }
                    }

                   
                    else if ((header == "ReakcijaLjudi") && (cell.ToString() == "True"))
                    {
                        PositiveReak++;
                        
                    }
                    else if ((header == "Ozo") && (cell.ToString() == "True"))
                    {
                        PositiveOzo++;                       
                    }
                    else if ((header == "polozajLjudi") && (cell.ToString() == "True"))
                    {
                        PositivePolozaj++;
                    }
                    else if ((header == "alatioOprema") && (cell.ToString() == "True"))
                    {
                        PositiveAlati++;
                    }
                    else if ((header == "ProcedureiUrednosti") && (cell.ToString() == "True"))
                    {
                        PositiveProcedure++;
                    }


                }

            }

            DataTable dtHS = new DataTable();
            
            dtHS = this.GetHSReport(pd, kd);
            
            for (int x = 0; x < dtHS.Rows.Count; x++)
            {
                for (int y = 0; y < dtHS.Columns.Count; y++)
                {
                    DataColumn KolHead = dtHS.Columns[y];
                    string header = KolHead.ToString();
                    object cell = dtHS.Rows[x].ItemArray[y];
                    int broj;
                    

                    if (header == "ManNoCrosco")
                    {
                        broj = Convert.ToInt32(cell);
                        WorkersCro += broj;

                    }
                    else if (header == "ManNoContracori")
                    {
                        broj = Convert.ToInt32(cell);
                        WorkersSub += broj;
                    }
                    else if (header == "ManNoThirdParty")
                    {
                        broj = Convert.ToInt32(cell);
                        WorkersRd += broj;
                    }
                    else if (header == "SumNo")
                    {
                        broj = Convert.ToInt32(cell);
                        SumWorker += broj;
                    }
                    else if (header == "ManHoursCrosco")
                    {
                        broj = Convert.ToInt32(cell);
                        HoursCro += broj;
                    }
                    else if (header == "ManHoursContracori")
                    {
                        broj = Convert.ToInt32(cell);
                        HoursSub += broj;
                    }
                    else if (header == "ManHoursThirdParty")
                    {
                        broj = Convert.ToInt32(cell);
                        HoursRd += broj;
                    }
                    else if (header == "SumManHours")
                    {
                        broj = Convert.ToInt32(cell);
                        SumHours += broj;
                    }
                    else if (header == "CRoSWA")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoSWA += broj;
                    }
                    else if (header == "CRoLSRV")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoLSRV += broj;
                    }
                    else if (header == "CRoAlco")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoAlco += broj;
                    }
                    else if (header == "CRoNII")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoNII += broj;
                    }
                    else if (header == "CRoRTI")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoRTI += broj;
                    }
                    else if (header == "CRoRTA")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoRTA += broj;
                    }
                    else if (header == "CRoLOPC")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoLOPC += broj;
                    }
                    else if (header == "CRoSPILL")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoSPILL += broj;
                    }
                    else if (header == "CRoFIRE")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoFIRE += broj;
                    }
                    else if (header == "CRoNM")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoNM += broj;
                    }
                    else if (header == "CRoFAC")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoFAC += broj;
                    }
                    else if (header == "CRoMTC")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoMTC += broj;
                    }
                    else if (header == "CRoRWC")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoRWC += broj;
                    }
                    else if (header == "CRoLTI")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoLTI += broj;
                    }
                    else if (header == "CRoFTL")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoFTL += broj;
                    }
                    else if (header == "CRoTRI")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoTRI += broj;
                    }

                    else if (header == "ConSWA")
                    {
                        broj = Convert.ToInt32(cell);
                        ConSWA += broj;
                    }
                    else if (header == "ConLSRV")
                    {
                        broj = Convert.ToInt32(cell);
                        ConLSRV += broj;
                    }
                    else if (header == "ConAlco")
                    {
                        broj = Convert.ToInt32(cell);
                        ConAlco += broj;
                    }
                    else if (header == "ConNII")
                    {
                        broj = Convert.ToInt32(cell);
                        ConNII += broj;
                    }
                    else if (header == "ConRTI")
                    {
                        broj = Convert.ToInt32(cell);
                        ConRTI += broj;
                    }
                    else if (header == "ConRTA")
                    {
                        broj = Convert.ToInt32(cell);
                        ConRTA += broj;
                    }
                    else if (header == "ConLOPC")
                    {
                        broj = Convert.ToInt32(cell);
                        ConLOPC += broj;
                    }
                    else if (header == "ConSPILL")
                    {
                        broj = Convert.ToInt32(cell);
                        CRoSPILL += broj;
                    }
                    else if (header == "ConFIRE")
                    {
                        broj = Convert.ToInt32(cell);
                        ConFIRE += broj;
                    }
                    else if (header == "ConNM")
                    {
                        broj = Convert.ToInt32(cell);
                        ConNM += broj;
                    }
                    else if (header == "ConFAC")
                    {
                        broj = Convert.ToInt32(cell);
                        ConFAC += broj;
                    }
                    else if (header == "ConMTC")
                    {
                        broj = Convert.ToInt32(cell);
                        ConMTC += broj;
                    }
                    else if (header == "ConRWC")
                    {
                        broj = Convert.ToInt32(cell);
                        ConRWC += broj;
                    }
                    else if (header == "ConLTI")
                    {
                        broj = Convert.ToInt32(cell);
                        ConLTI += broj;
                    }
                    else if (header == "ConFTL")
                    {
                        broj = Convert.ToInt32(cell);
                        ConFTL += broj;
                    }
                    else if (header == "ConTRI")
                    {
                        broj = Convert.ToInt32(cell);
                        ConTRI += broj;
                    }

                    else if (header == "ThrdSWA")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdSWA += broj;
                    }
                    else if (header == "ThrdLSRV")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdLSRV += broj;
                    }
                    else if (header == "ThrdAlco")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdAlco += broj;
                    }
                    else if (header == "ThrdNII")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdNII += broj;
                    }
                    else if (header == "ThrdRTI")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdRTI += broj;
                    }
                    else if (header == "ThrdRTA")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdRTA += broj;
                    }
                    else if (header == "ThrdLOPC")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdLOPC += broj;
                    }
                    else if (header == "ThrdSPILL")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdSPILL += broj;
                    }
                    else if (header == "ThrdFIRE")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdFIRE += broj;
                    }
                    else if (header == "ThrdNM")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdNM += broj;
                    }
                    else if (header == "ThrdFAC")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdFAC += broj;
                    }
                    else if (header == "ThrdMTC")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdMTC += broj;
                    }
                    else if (header == "ThrdRWC")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdRWC += broj;
                    }
                    else if (header == "ThrdLTI")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdLTI += broj;
                    }
                    else if (header == "ThrdFTL")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdFTL += broj;
                    }
                    else if (header == "ThrdTRI")
                    {
                        broj = Convert.ToInt32(cell);
                        ThrdTRI += broj;
                    }
                }

            }


        }


        protected void PrviKvartal()
        {
            //poruka.InnerText = prvi + drugi;
            string[] s1 = prvi.Split(',');
            string[] s2 = drugi.Split(',');
            string[] s3 = treci.Split(',');
            DaniQ1.InnerText = (int.Parse(s1[0]) + int.Parse(s2[0]) + int.Parse(s3[0])).ToString();
            KQ1.InnerText = (int.Parse(s1[1]) + int.Parse(s2[1]) + int.Parse(s3[1])).ToString();
            positiveQ1.InnerText= (int.Parse(s1[2]) + int.Parse(s2[2]) + int.Parse(s3[2])).ToString();
            negativeQ1.InnerText = (int.Parse(s1[3]) + int.Parse(s2[3]) + int.Parse(s3[3])).ToString();
            UAQ1.InnerText = (int.Parse(s1[4]) + int.Parse(s2[4]) + int.Parse(s3[4])).ToString();
            UCQ1.InnerText = (int.Parse(s1[5]) + int.Parse(s2[5]) + int.Parse(s3[5])).ToString();
            openQ1.InnerText = (int.Parse(s1[6]) + int.Parse(s2[6]) + int.Parse(s3[6])).ToString();
            ongoingQ1.InnerText = (int.Parse(s1[7]) + int.Parse(s2[7]) + int.Parse(s3[7])).ToString();
            closeQ1.InnerText = (int.Parse(s1[8]) + int.Parse(s2[8]) + int.Parse(s3[8])).ToString();
            NegativeClosedQ1.InnerText = (int.Parse(s1[9]) + int.Parse(s2[9]) + int.Parse(s3[9])).ToString();
            UAClosedQ1.InnerText = (int.Parse(s1[10]) + int.Parse(s2[10]) + int.Parse(s3[10])).ToString();
            UCClosedQ1.InnerText = (int.Parse(s1[11]) + int.Parse(s2[11]) + int.Parse(s3[11])).ToString();
            NoWorkersQ1.InnerText = (int.Parse(s1[12]) + int.Parse(s2[12]) + int.Parse(s3[12])).ToString();

            PQ1Reak.InnerText= (int.Parse(s1[13]) + int.Parse(s2[13]) + int.Parse(s3[13])).ToString();
            PQ1Reak1.InnerText= (int.Parse(s1[14]) + int.Parse(s2[14]) + int.Parse(s3[14])).ToString();
            PQ1Reak2.InnerText = (int.Parse(s1[15]) + int.Parse(s2[15]) + int.Parse(s3[15])).ToString();
            PQ1Reak3.InnerText = (int.Parse(s1[16]) + int.Parse(s2[16]) + int.Parse(s3[16])).ToString();
            PQ1Reak4.InnerText = (int.Parse(s1[17]) + int.Parse(s2[17]) + int.Parse(s3[17])).ToString();
            PQ1Reak5.InnerText = (int.Parse(s1[18]) + int.Parse(s2[18]) + int.Parse(s3[18])).ToString();
            PQ1Reak6.InnerText = (int.Parse(s1[19]) + int.Parse(s2[19]) + int.Parse(s3[19])).ToString();
            PQ1ozo.InnerText = (int.Parse(s1[20]) + int.Parse(s2[20]) + int.Parse(s3[20])).ToString();
            PQ1ozo1.InnerText = (int.Parse(s1[21]) + int.Parse(s2[21]) + int.Parse(s3[21])).ToString();
            PQ1ozo2.InnerText = (int.Parse(s1[22]) + int.Parse(s2[22]) + int.Parse(s3[22])).ToString();
            PQ1ozo3.InnerText = (int.Parse(s1[23]) + int.Parse(s2[23]) + int.Parse(s3[23])).ToString();
            PQ1ozo4.InnerText = (int.Parse(s1[24]) + int.Parse(s2[24]) + int.Parse(s3[24])).ToString();
            PQ1ozo5.InnerText = (int.Parse(s1[25]) + int.Parse(s2[25]) + int.Parse(s3[25])).ToString();
            PQ1ozo6.InnerText = (int.Parse(s1[26]) + int.Parse(s2[26]) + int.Parse(s3[26])).ToString();
            PQ1ozo7.InnerText = (int.Parse(s1[27]) + int.Parse(s2[27]) + int.Parse(s3[27])).ToString();
            PQ1polo.InnerText = (int.Parse(s1[28]) + int.Parse(s2[28]) + int.Parse(s3[28])).ToString();
            PQ1polo1.InnerText = (int.Parse(s1[29]) + int.Parse(s2[29]) + int.Parse(s3[29])).ToString();
            PQ1polo2.InnerText = (int.Parse(s1[30]) + int.Parse(s2[30]) + int.Parse(s3[30])).ToString();
            PQ1polo3.InnerText = (int.Parse(s1[31]) + int.Parse(s2[31]) + int.Parse(s3[31])).ToString();
            PQ1polo4.InnerText = (int.Parse(s1[32]) + int.Parse(s2[32]) + int.Parse(s3[32])).ToString();
            PQ1polo5.InnerText = (int.Parse(s1[33]) + int.Parse(s2[33]) + int.Parse(s3[33])).ToString();
            PQ1polo6.InnerText = (int.Parse(s1[34]) + int.Parse(s2[34]) + int.Parse(s3[34])).ToString();
            PQ1polo7.InnerText = (int.Parse(s1[35]) + int.Parse(s2[35]) + int.Parse(s3[35])).ToString();
            PQ1polo8.InnerText = (int.Parse(s1[36]) + int.Parse(s2[36]) + int.Parse(s3[36])).ToString();
            PQ1polo9.InnerText = (int.Parse(s1[37]) + int.Parse(s2[37]) + int.Parse(s3[37])).ToString();
            PQ1polo10.InnerText = (int.Parse(s1[38]) + int.Parse(s2[38]) + int.Parse(s3[38])).ToString();
            PQ1polo11.InnerText = (int.Parse(s1[39]) + int.Parse(s2[39]) + int.Parse(s3[39])).ToString();
            PQ1polo12.InnerText = (int.Parse(s1[40]) + int.Parse(s2[40]) + int.Parse(s3[40])).ToString();
            PQ1alat.InnerText = (int.Parse(s1[41]) + int.Parse(s2[41]) + int.Parse(s3[41])).ToString();
            PQ1alat1.InnerText = (int.Parse(s1[42]) + int.Parse(s2[42]) + int.Parse(s3[42])).ToString();
            PQ1alat2.InnerText = (int.Parse(s1[43]) + int.Parse(s2[43]) + int.Parse(s3[43])).ToString();
            PQ1alat3.InnerText = (int.Parse(s1[44]) + int.Parse(s2[44]) + int.Parse(s3[44])).ToString();
            PQ1proce.InnerText = (int.Parse(s1[45]) + int.Parse(s2[45]) + int.Parse(s3[45])).ToString();
            PQ1proce1.InnerText = (int.Parse(s1[46]) + int.Parse(s2[46]) + int.Parse(s3[46])).ToString();
            PQ1proce2.InnerText = (int.Parse(s1[47]) + int.Parse(s2[47]) + int.Parse(s3[47])).ToString();
            PQ1proce3.InnerText = (int.Parse(s1[48]) + int.Parse(s2[48]) + int.Parse(s3[48])).ToString();
            PQ1proce4.InnerText = (int.Parse(s1[49]) + int.Parse(s2[49]) + int.Parse(s3[49])).ToString();
            PQ1proce5.InnerText = (int.Parse(s1[50]) + int.Parse(s2[50]) + int.Parse(s3[50])).ToString();
            PQ1proce6.InnerText = (int.Parse(s1[51]) + int.Parse(s2[51]) + int.Parse(s3[51])).ToString();

            SatiQ1.InnerText= (int.Parse(s1[52]) + int.Parse(s2[52]) + int.Parse(s3[52])).ToString();
            TRIQ1.InnerText= (int.Parse(s1[53]) + int.Parse(s2[53]) + int.Parse(s3[53])).ToString();
            FTLQ1.InnerText = (int.Parse(s1[54]) + int.Parse(s2[54]) + int.Parse(s3[54])).ToString();
            LTIQ1.InnerText = (int.Parse(s1[55]) + int.Parse(s2[55]) + int.Parse(s3[55])).ToString();
            RWCQ1.InnerText = (int.Parse(s1[56]) + int.Parse(s2[56]) + int.Parse(s3[56])).ToString();
            MTCQ1.InnerText = (int.Parse(s1[57]) + int.Parse(s2[57]) + int.Parse(s3[57])).ToString();
            FACQ1.InnerText = (int.Parse(s1[58]) + int.Parse(s2[58]) + int.Parse(s3[58])).ToString();
            NMQ1.InnerText = (int.Parse(s1[59]) + int.Parse(s2[59]) + int.Parse(s3[59])).ToString();
            FireQ1.InnerText= (int.Parse(s1[60]) + int.Parse(s2[60]) + int.Parse(s3[60])).ToString();
            SpillQ1.InnerText= (int.Parse(s1[61]) + int.Parse(s2[61]) + int.Parse(s3[61])).ToString();
            LOPCQ1.InnerText= (int.Parse(s1[62]) + int.Parse(s2[62]) + int.Parse(s3[62])).ToString();
            RTAQ1.InnerText= (int.Parse(s1[63]) + int.Parse(s2[63]) + int.Parse(s3[63])).ToString();
            RTIQ1.InnerText = (int.Parse(s1[64]) + int.Parse(s2[64]) + int.Parse(s3[64])).ToString();
            NIIQ1.InnerText= (int.Parse(s1[65]) + int.Parse(s2[65]) + int.Parse(s3[65])).ToString();
            SWAQ1.InnerText = (int.Parse(s1[66]) + int.Parse(s2[66]) + int.Parse(s3[66])).ToString();
            TPSQ1.InnerText = (int.Parse(s1[67]) + int.Parse(s2[67]) + int.Parse(s3[67])).ToString();
            AlcoQ1.InnerText = (int.Parse(s1[68]) + int.Parse(s2[68]) + int.Parse(s3[68])).ToString();

            BrojKarticaQ1.InnerText = (int.Parse(s1[69]) + int.Parse(s2[69]) + int.Parse(s3[69])).ToString();
            PosQ1Reak.InnerText = (int.Parse(s1[70]) + int.Parse(s2[70]) + int.Parse(s3[70])).ToString();
            PosQ1ozo.InnerText = (int.Parse(s1[71]) + int.Parse(s2[71]) + int.Parse(s3[71])).ToString();
            PosQ1polo.InnerText = (int.Parse(s1[72]) + int.Parse(s2[72]) + int.Parse(s3[72])).ToString();
            PosQ1alat.InnerText = (int.Parse(s1[73]) + int.Parse(s2[73]) + int.Parse(s3[73])).ToString();
            PosQ1proce.InnerText = (int.Parse(s1[74]) + int.Parse(s2[74]) + int.Parse(s3[74])).ToString();
            Q1 = "";
            for (int x = 0; x < 74; x++)
            {
                string LoopQ = (int.Parse(s1[x]) + int.Parse(s2[x]) + int.Parse(s3[x])).ToString();
                Q1 += LoopQ + ",";
            }
            Q1 += (int.Parse(s1[74]) + int.Parse(s2[74]) + int.Parse(s3[74])).ToString();
        }

        protected void DrugiKvartal()
        {
            //poruka.InnerText = prvi + drugi;
            string[] s1 = cetvrti.Split(',');
            string[] s2 = peti.Split(',');
            string[] s3 = sesti.Split(',');
            DaniQ2.InnerText = (int.Parse(s1[0]) + int.Parse(s2[0]) + int.Parse(s3[0])).ToString();
            KQ2.InnerText = (int.Parse(s1[1]) + int.Parse(s2[1]) + int.Parse(s3[1])).ToString();
            positiveQ2.InnerText = (int.Parse(s1[2]) + int.Parse(s2[2]) + int.Parse(s3[2])).ToString();
            negativeQ2.InnerText = (int.Parse(s1[3]) + int.Parse(s2[3]) + int.Parse(s3[3])).ToString();
            UAQ2.InnerText = (int.Parse(s1[4]) + int.Parse(s2[4]) + int.Parse(s3[4])).ToString();
            UCQ2.InnerText = (int.Parse(s1[5]) + int.Parse(s2[5]) + int.Parse(s3[5])).ToString();
            openQ2.InnerText = (int.Parse(s1[6]) + int.Parse(s2[6]) + int.Parse(s3[6])).ToString();
            ongoingQ2.InnerText = (int.Parse(s1[7]) + int.Parse(s2[7]) + int.Parse(s3[7])).ToString();
            closeQ2.InnerText = (int.Parse(s1[8]) + int.Parse(s2[8]) + int.Parse(s3[8])).ToString();
            NegativeClosedQ2.InnerText = (int.Parse(s1[9]) + int.Parse(s2[9]) + int.Parse(s3[9])).ToString();
            UAClosedQ2.InnerText = (int.Parse(s1[10]) + int.Parse(s2[10]) + int.Parse(s3[10])).ToString();
            UCClosedQ2.InnerText = (int.Parse(s1[11]) + int.Parse(s2[11]) + int.Parse(s3[11])).ToString();
            NoWorkersQ2.InnerText = (int.Parse(s1[12]) + int.Parse(s2[12]) + int.Parse(s3[12])).ToString();

            PQ2Reak.InnerText = (int.Parse(s1[13]) + int.Parse(s2[13]) + int.Parse(s3[13])).ToString();
            PQ2Reak1.InnerText = (int.Parse(s1[14]) + int.Parse(s2[14]) + int.Parse(s3[14])).ToString();
            PQ2Reak2.InnerText = (int.Parse(s1[15]) + int.Parse(s2[15]) + int.Parse(s3[15])).ToString();
            PQ2Reak3.InnerText = (int.Parse(s1[16]) + int.Parse(s2[16]) + int.Parse(s3[16])).ToString();
            PQ2Reak4.InnerText = (int.Parse(s1[17]) + int.Parse(s2[17]) + int.Parse(s3[17])).ToString();
            PQ2Reak5.InnerText = (int.Parse(s1[18]) + int.Parse(s2[18]) + int.Parse(s3[18])).ToString();
            PQ2Reak6.InnerText = (int.Parse(s1[19]) + int.Parse(s2[19]) + int.Parse(s3[19])).ToString();
            PQ2ozo.InnerText = (int.Parse(s1[20]) + int.Parse(s2[20]) + int.Parse(s3[20])).ToString();
            PQ2ozo1.InnerText = (int.Parse(s1[21]) + int.Parse(s2[21]) + int.Parse(s3[21])).ToString();
            PQ2ozo2.InnerText = (int.Parse(s1[22]) + int.Parse(s2[22]) + int.Parse(s3[22])).ToString();
            PQ2ozo3.InnerText = (int.Parse(s1[23]) + int.Parse(s2[23]) + int.Parse(s3[23])).ToString();
            PQ2ozo4.InnerText = (int.Parse(s1[24]) + int.Parse(s2[24]) + int.Parse(s3[24])).ToString();
            PQ2ozo5.InnerText = (int.Parse(s1[25]) + int.Parse(s2[25]) + int.Parse(s3[25])).ToString();
            PQ2ozo6.InnerText = (int.Parse(s1[26]) + int.Parse(s2[26]) + int.Parse(s3[26])).ToString();
            PQ2ozo7.InnerText = (int.Parse(s1[27]) + int.Parse(s2[27]) + int.Parse(s3[27])).ToString();
            PQ2polo.InnerText = (int.Parse(s1[28]) + int.Parse(s2[28]) + int.Parse(s3[28])).ToString();
            PQ2polo1.InnerText = (int.Parse(s1[29]) + int.Parse(s2[29]) + int.Parse(s3[29])).ToString();
            PQ2polo2.InnerText = (int.Parse(s1[30]) + int.Parse(s2[30]) + int.Parse(s3[30])).ToString();
            PQ2polo3.InnerText = (int.Parse(s1[31]) + int.Parse(s2[31]) + int.Parse(s3[31])).ToString();
            PQ2polo4.InnerText = (int.Parse(s1[32]) + int.Parse(s2[32]) + int.Parse(s3[32])).ToString();
            PQ2polo5.InnerText = (int.Parse(s1[33]) + int.Parse(s2[33]) + int.Parse(s3[33])).ToString();
            PQ2polo6.InnerText = (int.Parse(s1[34]) + int.Parse(s2[34]) + int.Parse(s3[34])).ToString();
            PQ2polo7.InnerText = (int.Parse(s1[35]) + int.Parse(s2[35]) + int.Parse(s3[35])).ToString();
            PQ2polo8.InnerText = (int.Parse(s1[36]) + int.Parse(s2[36]) + int.Parse(s3[36])).ToString();
            PQ2polo9.InnerText = (int.Parse(s1[37]) + int.Parse(s2[37]) + int.Parse(s3[37])).ToString();
            PQ2polo10.InnerText = (int.Parse(s1[38]) + int.Parse(s2[38]) + int.Parse(s3[38])).ToString();
            PQ2polo11.InnerText = (int.Parse(s1[39]) + int.Parse(s2[39]) + int.Parse(s3[39])).ToString();
            PQ2polo12.InnerText = (int.Parse(s1[40]) + int.Parse(s2[40]) + int.Parse(s3[40])).ToString();
            PQ2alat.InnerText = (int.Parse(s1[41]) + int.Parse(s2[41]) + int.Parse(s3[41])).ToString();
            PQ2alat1.InnerText = (int.Parse(s1[42]) + int.Parse(s2[42]) + int.Parse(s3[42])).ToString();
            PQ2alat2.InnerText = (int.Parse(s1[43]) + int.Parse(s2[43]) + int.Parse(s3[43])).ToString();
            PQ2alat3.InnerText = (int.Parse(s1[44]) + int.Parse(s2[44]) + int.Parse(s3[44])).ToString();
            PQ2proce.InnerText = (int.Parse(s1[45]) + int.Parse(s2[45]) + int.Parse(s3[45])).ToString();
            PQ2proce1.InnerText = (int.Parse(s1[46]) + int.Parse(s2[46]) + int.Parse(s3[46])).ToString();
            PQ2proce2.InnerText = (int.Parse(s1[47]) + int.Parse(s2[47]) + int.Parse(s3[47])).ToString();
            PQ2proce3.InnerText = (int.Parse(s1[48]) + int.Parse(s2[48]) + int.Parse(s3[48])).ToString();
            PQ2proce4.InnerText = (int.Parse(s1[49]) + int.Parse(s2[49]) + int.Parse(s3[49])).ToString();
            PQ2proce5.InnerText = (int.Parse(s1[50]) + int.Parse(s2[50]) + int.Parse(s3[50])).ToString();
            PQ2proce6.InnerText = (int.Parse(s1[51]) + int.Parse(s2[51]) + int.Parse(s3[51])).ToString();

            SatiQ2.InnerText = (int.Parse(s1[52]) + int.Parse(s2[52]) + int.Parse(s3[52])).ToString();
            TRIQ2.InnerText = (int.Parse(s1[53]) + int.Parse(s2[53]) + int.Parse(s3[53])).ToString();
            FTLQ2.InnerText = (int.Parse(s1[54]) + int.Parse(s2[54]) + int.Parse(s3[54])).ToString();
            LTIQ2.InnerText = (int.Parse(s1[55]) + int.Parse(s2[55]) + int.Parse(s3[55])).ToString();
            RWCQ2.InnerText = (int.Parse(s1[56]) + int.Parse(s2[56]) + int.Parse(s3[56])).ToString();
            MTCQ2.InnerText = (int.Parse(s1[57]) + int.Parse(s2[57]) + int.Parse(s3[57])).ToString();
            FACQ2.InnerText = (int.Parse(s1[58]) + int.Parse(s2[58]) + int.Parse(s3[58])).ToString();
            NMQ2.InnerText = (int.Parse(s1[59]) + int.Parse(s2[59]) + int.Parse(s3[59])).ToString();
            FireQ2.InnerText = (int.Parse(s1[60]) + int.Parse(s2[60]) + int.Parse(s3[60])).ToString();
            SpillQ2.InnerText = (int.Parse(s1[61]) + int.Parse(s2[61]) + int.Parse(s3[61])).ToString();
            LOPCQ2.InnerText = (int.Parse(s1[62]) + int.Parse(s2[62]) + int.Parse(s3[62])).ToString();
            RTAQ2.InnerText = (int.Parse(s1[63]) + int.Parse(s2[63]) + int.Parse(s3[63])).ToString();
            RTIQ2.InnerText = (int.Parse(s1[64]) + int.Parse(s2[64]) + int.Parse(s3[64])).ToString();
            NIIQ2.InnerText = (int.Parse(s1[65]) + int.Parse(s2[65]) + int.Parse(s3[65])).ToString();
            SWAQ2.InnerText = (int.Parse(s1[66]) + int.Parse(s2[66]) + int.Parse(s3[66])).ToString();
            TPSQ2.InnerText = (int.Parse(s1[67]) + int.Parse(s2[67]) + int.Parse(s3[67])).ToString();
            AlcoQ2.InnerText = (int.Parse(s1[68]) + int.Parse(s2[68]) + int.Parse(s3[68])).ToString();

            BrojKarticaQ2.InnerText = (int.Parse(s1[69]) + int.Parse(s2[69]) + int.Parse(s3[69])).ToString();
            PosQ2Reak.InnerText = (int.Parse(s1[70]) + int.Parse(s2[70]) + int.Parse(s3[70])).ToString();
            PosQ2ozo.InnerText = (int.Parse(s1[71]) + int.Parse(s2[71]) + int.Parse(s3[71])).ToString();
            PosQ2polo.InnerText = (int.Parse(s1[72]) + int.Parse(s2[72]) + int.Parse(s3[72])).ToString();
            PosQ2alat.InnerText = (int.Parse(s1[73]) + int.Parse(s2[73]) + int.Parse(s3[73])).ToString();
            PosQ2proce.InnerText = (int.Parse(s1[74]) + int.Parse(s2[74]) + int.Parse(s3[74])).ToString();
            Q2 = "";
            for (int x = 0; x < 74; x++)
            {
                string LoopQ = (int.Parse(s1[x]) + int.Parse(s2[x]) + int.Parse(s3[x])).ToString();
                Q2 += LoopQ + ",";
            }
            Q2 += (int.Parse(s1[74]) + int.Parse(s2[74]) + int.Parse(s3[74])).ToString();
        }

        protected void TreciKvartal()
        {
            //poruka.InnerText = prvi + drugi;
            string[] s1 = sedmi.Split(',');
            string[] s2 = osmi.Split(',');
            string[] s3 = deveti.Split(',');
            DaniQ3.InnerText = (int.Parse(s1[0]) + int.Parse(s2[0]) + int.Parse(s3[0])).ToString();
            KQ3.InnerText = (int.Parse(s1[1]) + int.Parse(s2[1]) + int.Parse(s3[1])).ToString();
            positiveQ3.InnerText = (int.Parse(s1[2]) + int.Parse(s2[2]) + int.Parse(s3[2])).ToString();
            negativeQ3.InnerText = (int.Parse(s1[3]) + int.Parse(s2[3]) + int.Parse(s3[3])).ToString();
            UAQ3.InnerText = (int.Parse(s1[4]) + int.Parse(s2[4]) + int.Parse(s3[4])).ToString();
            UCQ3.InnerText = (int.Parse(s1[5]) + int.Parse(s2[5]) + int.Parse(s3[5])).ToString();
            openQ3.InnerText = (int.Parse(s1[6]) + int.Parse(s2[6]) + int.Parse(s3[6])).ToString();
            ongoingQ3.InnerText = (int.Parse(s1[7]) + int.Parse(s2[7]) + int.Parse(s3[7])).ToString();
            closeQ3.InnerText = (int.Parse(s1[8]) + int.Parse(s2[8]) + int.Parse(s3[8])).ToString();
            NegativeClosedQ3.InnerText = (int.Parse(s1[9]) + int.Parse(s2[9]) + int.Parse(s3[9])).ToString();
            UAClosedQ3.InnerText = (int.Parse(s1[10]) + int.Parse(s2[10]) + int.Parse(s3[10])).ToString();
            UCClosedQ3.InnerText = (int.Parse(s1[11]) + int.Parse(s2[11]) + int.Parse(s3[11])).ToString();
            NoWorkersQ3.InnerText = (int.Parse(s1[12]) + int.Parse(s2[12]) + int.Parse(s3[12])).ToString();

            PQ3Reak.InnerText = (int.Parse(s1[13]) + int.Parse(s2[13]) + int.Parse(s3[13])).ToString();
            PQ3Reak1.InnerText = (int.Parse(s1[14]) + int.Parse(s2[14]) + int.Parse(s3[14])).ToString();
            PQ3Reak2.InnerText = (int.Parse(s1[15]) + int.Parse(s2[15]) + int.Parse(s3[15])).ToString();
            PQ3Reak3.InnerText = (int.Parse(s1[16]) + int.Parse(s2[16]) + int.Parse(s3[16])).ToString();
            PQ3Reak4.InnerText = (int.Parse(s1[17]) + int.Parse(s2[17]) + int.Parse(s3[17])).ToString();
            PQ3Reak5.InnerText = (int.Parse(s1[18]) + int.Parse(s2[18]) + int.Parse(s3[18])).ToString();
            PQ3Reak6.InnerText = (int.Parse(s1[19]) + int.Parse(s2[19]) + int.Parse(s3[19])).ToString();
            PQ3ozo.InnerText = (int.Parse(s1[20]) + int.Parse(s2[20]) + int.Parse(s3[20])).ToString();
            PQ3ozo1.InnerText = (int.Parse(s1[21]) + int.Parse(s2[21]) + int.Parse(s3[21])).ToString();
            PQ3ozo2.InnerText = (int.Parse(s1[22]) + int.Parse(s2[22]) + int.Parse(s3[22])).ToString();
            PQ3ozo3.InnerText = (int.Parse(s1[23]) + int.Parse(s2[23]) + int.Parse(s3[23])).ToString();
            PQ3ozo4.InnerText = (int.Parse(s1[24]) + int.Parse(s2[24]) + int.Parse(s3[24])).ToString();
            PQ3ozo5.InnerText = (int.Parse(s1[25]) + int.Parse(s2[25]) + int.Parse(s3[25])).ToString();
            PQ3ozo6.InnerText = (int.Parse(s1[26]) + int.Parse(s2[26]) + int.Parse(s3[26])).ToString();
            PQ3ozo7.InnerText = (int.Parse(s1[27]) + int.Parse(s2[27]) + int.Parse(s3[27])).ToString();
            PQ3polo.InnerText = (int.Parse(s1[28]) + int.Parse(s2[28]) + int.Parse(s3[28])).ToString();
            PQ3polo1.InnerText = (int.Parse(s1[29]) + int.Parse(s2[29]) + int.Parse(s3[29])).ToString();
            PQ3polo2.InnerText = (int.Parse(s1[30]) + int.Parse(s2[30]) + int.Parse(s3[30])).ToString();
            PQ3polo3.InnerText = (int.Parse(s1[31]) + int.Parse(s2[31]) + int.Parse(s3[31])).ToString();
            PQ3polo4.InnerText = (int.Parse(s1[32]) + int.Parse(s2[32]) + int.Parse(s3[32])).ToString();
            PQ3polo5.InnerText = (int.Parse(s1[33]) + int.Parse(s2[33]) + int.Parse(s3[33])).ToString();
            PQ3polo6.InnerText = (int.Parse(s1[34]) + int.Parse(s2[34]) + int.Parse(s3[34])).ToString();
            PQ3polo7.InnerText = (int.Parse(s1[35]) + int.Parse(s2[35]) + int.Parse(s3[35])).ToString();
            PQ3polo8.InnerText = (int.Parse(s1[36]) + int.Parse(s2[36]) + int.Parse(s3[36])).ToString();
            PQ3polo9.InnerText = (int.Parse(s1[37]) + int.Parse(s2[37]) + int.Parse(s3[37])).ToString();
            PQ3polo10.InnerText = (int.Parse(s1[38]) + int.Parse(s2[38]) + int.Parse(s3[38])).ToString();
            PQ3polo11.InnerText = (int.Parse(s1[39]) + int.Parse(s2[39]) + int.Parse(s3[39])).ToString();
            PQ3polo12.InnerText = (int.Parse(s1[40]) + int.Parse(s2[40]) + int.Parse(s3[40])).ToString();
            PQ3alat.InnerText = (int.Parse(s1[41]) + int.Parse(s2[41]) + int.Parse(s3[41])).ToString();
            PQ3alat1.InnerText = (int.Parse(s1[42]) + int.Parse(s2[42]) + int.Parse(s3[42])).ToString();
            PQ3alat2.InnerText = (int.Parse(s1[43]) + int.Parse(s2[43]) + int.Parse(s3[43])).ToString();
            PQ3alat3.InnerText = (int.Parse(s1[44]) + int.Parse(s2[44]) + int.Parse(s3[44])).ToString();
            PQ3proce.InnerText = (int.Parse(s1[45]) + int.Parse(s2[45]) + int.Parse(s3[45])).ToString();
            PQ3proce1.InnerText = (int.Parse(s1[46]) + int.Parse(s2[46]) + int.Parse(s3[46])).ToString();
            PQ3proce2.InnerText = (int.Parse(s1[47]) + int.Parse(s2[47]) + int.Parse(s3[47])).ToString();
            PQ3proce3.InnerText = (int.Parse(s1[48]) + int.Parse(s2[48]) + int.Parse(s3[48])).ToString();
            PQ3proce4.InnerText = (int.Parse(s1[49]) + int.Parse(s2[49]) + int.Parse(s3[49])).ToString();
            PQ3proce5.InnerText = (int.Parse(s1[50]) + int.Parse(s2[50]) + int.Parse(s3[50])).ToString();
            PQ3proce6.InnerText = (int.Parse(s1[51]) + int.Parse(s2[51]) + int.Parse(s3[51])).ToString();

            SatiQ3.InnerText = (int.Parse(s1[52]) + int.Parse(s2[52]) + int.Parse(s3[52])).ToString();
            TRIQ3.InnerText = (int.Parse(s1[53]) + int.Parse(s2[53]) + int.Parse(s3[53])).ToString();
            FTLQ3.InnerText = (int.Parse(s1[54]) + int.Parse(s2[54]) + int.Parse(s3[54])).ToString();
            LTIQ3.InnerText = (int.Parse(s1[55]) + int.Parse(s2[55]) + int.Parse(s3[55])).ToString();
            RWCQ3.InnerText = (int.Parse(s1[56]) + int.Parse(s2[56]) + int.Parse(s3[56])).ToString();
            MTCQ3.InnerText = (int.Parse(s1[57]) + int.Parse(s2[57]) + int.Parse(s3[57])).ToString();
            FACQ3.InnerText = (int.Parse(s1[58]) + int.Parse(s2[58]) + int.Parse(s3[58])).ToString();
            NMQ3.InnerText = (int.Parse(s1[59]) + int.Parse(s2[59]) + int.Parse(s3[59])).ToString();
            FireQ3.InnerText = (int.Parse(s1[60]) + int.Parse(s2[60]) + int.Parse(s3[60])).ToString();
            SpillQ3.InnerText = (int.Parse(s1[61]) + int.Parse(s2[61]) + int.Parse(s3[61])).ToString();
            LOPCQ3.InnerText = (int.Parse(s1[62]) + int.Parse(s2[62]) + int.Parse(s3[62])).ToString();
            RTAQ3.InnerText = (int.Parse(s1[63]) + int.Parse(s2[63]) + int.Parse(s3[63])).ToString();
            RTIQ3.InnerText = (int.Parse(s1[64]) + int.Parse(s2[64]) + int.Parse(s3[64])).ToString();
            NIIQ3.InnerText = (int.Parse(s1[65]) + int.Parse(s2[65]) + int.Parse(s3[65])).ToString();
            SWAQ3.InnerText = (int.Parse(s1[66]) + int.Parse(s2[66]) + int.Parse(s3[66])).ToString();
            TPSQ3.InnerText = (int.Parse(s1[67]) + int.Parse(s2[67]) + int.Parse(s3[67])).ToString();
            AlcoQ3.InnerText = (int.Parse(s1[68]) + int.Parse(s2[68]) + int.Parse(s3[68])).ToString();

            BrojKarticaQ3.InnerText = (int.Parse(s1[69]) + int.Parse(s2[69]) + int.Parse(s3[69])).ToString();
            PosQ3Reak.InnerText = (int.Parse(s1[70]) + int.Parse(s2[70]) + int.Parse(s3[70])).ToString();
            PosQ3ozo.InnerText = (int.Parse(s1[71]) + int.Parse(s2[71]) + int.Parse(s3[71])).ToString();
            PosQ3polo.InnerText = (int.Parse(s1[72]) + int.Parse(s2[72]) + int.Parse(s3[72])).ToString();
            PosQ3alat.InnerText = (int.Parse(s1[73]) + int.Parse(s2[73]) + int.Parse(s3[73])).ToString();
            PosQ3proce.InnerText = (int.Parse(s1[74]) + int.Parse(s2[74]) + int.Parse(s3[74])).ToString();
            Q3 = "";
            for (int x = 0; x < 74; x++)
            {
                string LoopQ = (int.Parse(s1[x]) + int.Parse(s2[x]) + int.Parse(s3[x])).ToString();
                Q3 += LoopQ + ",";
            }
            Q3 += (int.Parse(s1[74]) + int.Parse(s2[74]) + int.Parse(s3[74])).ToString();
        }

        protected void CetvrtiKvartal()
        {
            //poruka.InnerText = prvi + drugi;
            string[] s1 = deseti.Split(',');
            string[] s2 = jedanesti.Split(',');
            string[] s3 = dvanesti.Split(',');
            DaniQ4.InnerText = (int.Parse(s1[0]) + int.Parse(s2[0]) + int.Parse(s3[0])).ToString();
            KQ4.InnerText = (int.Parse(s1[1]) + int.Parse(s2[1]) + int.Parse(s3[1])).ToString();
            positiveQ4.InnerText = (int.Parse(s1[2]) + int.Parse(s2[2]) + int.Parse(s3[2])).ToString();
            negativeQ4.InnerText = (int.Parse(s1[3]) + int.Parse(s2[3]) + int.Parse(s3[3])).ToString();
            UAQ4.InnerText = (int.Parse(s1[4]) + int.Parse(s2[4]) + int.Parse(s3[4])).ToString();
            UCQ4.InnerText = (int.Parse(s1[5]) + int.Parse(s2[5]) + int.Parse(s3[5])).ToString();
            openQ4.InnerText = (int.Parse(s1[6]) + int.Parse(s2[6]) + int.Parse(s3[6])).ToString();
            ongoingQ4.InnerText = (int.Parse(s1[7]) + int.Parse(s2[7]) + int.Parse(s3[7])).ToString();
            closeQ4.InnerText = (int.Parse(s1[8]) + int.Parse(s2[8]) + int.Parse(s3[8])).ToString();
            NegativeClosedQ4.InnerText = (int.Parse(s1[9]) + int.Parse(s2[9]) + int.Parse(s3[9])).ToString();
            UAClosedQ4.InnerText = (int.Parse(s1[10]) + int.Parse(s2[10]) + int.Parse(s3[10])).ToString();
            UCClosedQ4.InnerText = (int.Parse(s1[11]) + int.Parse(s2[11]) + int.Parse(s3[11])).ToString();
            NoWorkersQ4.InnerText = (int.Parse(s1[12]) + int.Parse(s2[12]) + int.Parse(s3[12])).ToString();

            PQ4Reak.InnerText = (int.Parse(s1[13]) + int.Parse(s2[13]) + int.Parse(s3[13])).ToString();
            PQ4Reak1.InnerText = (int.Parse(s1[14]) + int.Parse(s2[14]) + int.Parse(s3[14])).ToString();
            PQ4Reak2.InnerText = (int.Parse(s1[15]) + int.Parse(s2[15]) + int.Parse(s3[15])).ToString();
            PQ4Reak3.InnerText = (int.Parse(s1[16]) + int.Parse(s2[16]) + int.Parse(s3[16])).ToString();
            PQ4Reak4.InnerText = (int.Parse(s1[17]) + int.Parse(s2[17]) + int.Parse(s3[17])).ToString();
            PQ4Reak5.InnerText = (int.Parse(s1[18]) + int.Parse(s2[18]) + int.Parse(s3[18])).ToString();
            PQ4Reak6.InnerText = (int.Parse(s1[19]) + int.Parse(s2[19]) + int.Parse(s3[19])).ToString();
            PQ4ozo.InnerText = (int.Parse(s1[20]) + int.Parse(s2[20]) + int.Parse(s3[20])).ToString();
            PQ4ozo1.InnerText = (int.Parse(s1[21]) + int.Parse(s2[21]) + int.Parse(s3[21])).ToString();
            PQ4ozo2.InnerText = (int.Parse(s1[22]) + int.Parse(s2[22]) + int.Parse(s3[22])).ToString();
            PQ4ozo3.InnerText = (int.Parse(s1[23]) + int.Parse(s2[23]) + int.Parse(s3[23])).ToString();
            PQ4ozo4.InnerText = (int.Parse(s1[24]) + int.Parse(s2[24]) + int.Parse(s3[24])).ToString();
            PQ4ozo5.InnerText = (int.Parse(s1[25]) + int.Parse(s2[25]) + int.Parse(s3[25])).ToString();
            PQ4ozo6.InnerText = (int.Parse(s1[26]) + int.Parse(s2[26]) + int.Parse(s3[26])).ToString();
            PQ4ozo7.InnerText = (int.Parse(s1[27]) + int.Parse(s2[27]) + int.Parse(s3[27])).ToString();
            PQ4polo.InnerText = (int.Parse(s1[28]) + int.Parse(s2[28]) + int.Parse(s3[28])).ToString();
            PQ4polo1.InnerText = (int.Parse(s1[29]) + int.Parse(s2[29]) + int.Parse(s3[29])).ToString();
            PQ4polo2.InnerText = (int.Parse(s1[30]) + int.Parse(s2[30]) + int.Parse(s3[30])).ToString();
            PQ4polo3.InnerText = (int.Parse(s1[31]) + int.Parse(s2[31]) + int.Parse(s3[31])).ToString();
            PQ4polo4.InnerText = (int.Parse(s1[32]) + int.Parse(s2[32]) + int.Parse(s3[32])).ToString();
            PQ4polo5.InnerText = (int.Parse(s1[33]) + int.Parse(s2[33]) + int.Parse(s3[33])).ToString();
            PQ4polo6.InnerText = (int.Parse(s1[34]) + int.Parse(s2[34]) + int.Parse(s3[34])).ToString();
            PQ4polo7.InnerText = (int.Parse(s1[35]) + int.Parse(s2[35]) + int.Parse(s3[35])).ToString();
            PQ4polo8.InnerText = (int.Parse(s1[36]) + int.Parse(s2[36]) + int.Parse(s3[36])).ToString();
            PQ4polo9.InnerText = (int.Parse(s1[37]) + int.Parse(s2[37]) + int.Parse(s3[37])).ToString();
            PQ4polo10.InnerText = (int.Parse(s1[38]) + int.Parse(s2[38]) + int.Parse(s3[38])).ToString();
            PQ4polo11.InnerText = (int.Parse(s1[39]) + int.Parse(s2[39]) + int.Parse(s3[39])).ToString();
            PQ4polo12.InnerText = (int.Parse(s1[40]) + int.Parse(s2[40]) + int.Parse(s3[40])).ToString();
            PQ4alat.InnerText = (int.Parse(s1[41]) + int.Parse(s2[41]) + int.Parse(s3[41])).ToString();
            PQ4alat1.InnerText = (int.Parse(s1[42]) + int.Parse(s2[42]) + int.Parse(s3[42])).ToString();
            PQ4alat2.InnerText = (int.Parse(s1[43]) + int.Parse(s2[43]) + int.Parse(s3[43])).ToString();
            PQ4alat3.InnerText = (int.Parse(s1[44]) + int.Parse(s2[44]) + int.Parse(s3[44])).ToString();
            PQ4proce.InnerText = (int.Parse(s1[45]) + int.Parse(s2[45]) + int.Parse(s3[45])).ToString();
            PQ4proce1.InnerText = (int.Parse(s1[46]) + int.Parse(s2[46]) + int.Parse(s3[46])).ToString();
            PQ4proce2.InnerText = (int.Parse(s1[47]) + int.Parse(s2[47]) + int.Parse(s3[47])).ToString();
            PQ4proce3.InnerText = (int.Parse(s1[48]) + int.Parse(s2[48]) + int.Parse(s3[48])).ToString();
            PQ4proce4.InnerText = (int.Parse(s1[49]) + int.Parse(s2[49]) + int.Parse(s3[49])).ToString();
            PQ4proce5.InnerText = (int.Parse(s1[50]) + int.Parse(s2[50]) + int.Parse(s3[50])).ToString();
            PQ4proce6.InnerText = (int.Parse(s1[51]) + int.Parse(s2[51]) + int.Parse(s3[51])).ToString();

            SatiQ4.InnerText = (int.Parse(s1[52]) + int.Parse(s2[52]) + int.Parse(s3[52])).ToString();
            TRIQ4.InnerText = (int.Parse(s1[53]) + int.Parse(s2[53]) + int.Parse(s3[53])).ToString();
            FTLQ4.InnerText = (int.Parse(s1[54]) + int.Parse(s2[54]) + int.Parse(s3[54])).ToString();
            LTIQ4.InnerText = (int.Parse(s1[55]) + int.Parse(s2[55]) + int.Parse(s3[55])).ToString();
            RWCQ4.InnerText = (int.Parse(s1[56]) + int.Parse(s2[56]) + int.Parse(s3[56])).ToString();
            MTCQ4.InnerText = (int.Parse(s1[57]) + int.Parse(s2[57]) + int.Parse(s3[57])).ToString();
            FACQ4.InnerText = (int.Parse(s1[58]) + int.Parse(s2[58]) + int.Parse(s3[58])).ToString();
            NMQ4.InnerText = (int.Parse(s1[59]) + int.Parse(s2[59]) + int.Parse(s3[59])).ToString();
            FireQ4.InnerText = (int.Parse(s1[60]) + int.Parse(s2[60]) + int.Parse(s3[60])).ToString();
            SpillQ4.InnerText = (int.Parse(s1[61]) + int.Parse(s2[61]) + int.Parse(s3[61])).ToString();
            LOPCQ4.InnerText = (int.Parse(s1[62]) + int.Parse(s2[62]) + int.Parse(s3[62])).ToString();
            RTAQ4.InnerText = (int.Parse(s1[63]) + int.Parse(s2[63]) + int.Parse(s3[63])).ToString();
            RTIQ4.InnerText = (int.Parse(s1[64]) + int.Parse(s2[64]) + int.Parse(s3[64])).ToString();
            NIIQ4.InnerText = (int.Parse(s1[65]) + int.Parse(s2[65]) + int.Parse(s3[65])).ToString();
            SWAQ4.InnerText = (int.Parse(s1[66]) + int.Parse(s2[66]) + int.Parse(s3[66])).ToString();
            TPSQ4.InnerText = (int.Parse(s1[67]) + int.Parse(s2[67]) + int.Parse(s3[67])).ToString();
            AlcoQ4.InnerText = (int.Parse(s1[68]) + int.Parse(s2[68]) + int.Parse(s3[68])).ToString();

            BrojKarticaQ4.InnerText = (int.Parse(s1[69]) + int.Parse(s2[69]) + int.Parse(s3[69])).ToString();
            PosQ4Reak.InnerText = (int.Parse(s1[70]) + int.Parse(s2[70]) + int.Parse(s3[70])).ToString();
            PosQ4ozo.InnerText = (int.Parse(s1[71]) + int.Parse(s2[71]) + int.Parse(s3[71])).ToString();
            PosQ4polo.InnerText = (int.Parse(s1[72]) + int.Parse(s2[72]) + int.Parse(s3[72])).ToString();
            PosQ4alat.InnerText = (int.Parse(s1[73]) + int.Parse(s2[73]) + int.Parse(s3[73])).ToString();
            PosQ4proce.InnerText = (int.Parse(s1[74]) + int.Parse(s2[74]) + int.Parse(s3[74])).ToString();

            Q4 = "";
            for (int x = 0; x < 74; x++)
            {
                string LoopQ = (int.Parse(s1[x]) + int.Parse(s2[x]) + int.Parse(s3[x])).ToString();
                Q4 += LoopQ + ",";
            }
            Q4 += (int.Parse(s1[74]) + int.Parse(s2[74]) + int.Parse(s3[74])).ToString();
        }

        protected void PrvaPlovica()
        {
            //poruka.InnerText = prvi + drugi;
            string[] s1 = Q1.Split(',');
            string[] s2 = Q2.Split(',');
            
            DaniH1.InnerText = (int.Parse(s1[0]) + int.Parse(s2[0])).ToString();
            KH1.InnerText = (int.Parse(s1[1]) + int.Parse(s2[1])).ToString();
            positiveH1.InnerText = (int.Parse(s1[2]) + int.Parse(s2[2])).ToString();
            negativeH1.InnerText = (int.Parse(s1[3]) + int.Parse(s2[3])).ToString();
            UAH1.InnerText = (int.Parse(s1[4]) + int.Parse(s2[4])).ToString();
            UCH1.InnerText = (int.Parse(s1[5]) + int.Parse(s2[5])).ToString();
            openH1.InnerText = (int.Parse(s1[6]) + int.Parse(s2[6])).ToString();
            ongoingH1.InnerText = (int.Parse(s1[7]) + int.Parse(s2[7])).ToString();
            closeH1.InnerText = (int.Parse(s1[8]) + int.Parse(s2[8])).ToString();
            NegativeClosedH1.InnerText = (int.Parse(s1[9]) + int.Parse(s2[9])).ToString();
            UAClosedH1.InnerText = (int.Parse(s1[10]) + int.Parse(s2[10])).ToString();
            UCClosedH1.InnerText = (int.Parse(s1[11]) + int.Parse(s2[11])).ToString();
            NoWorkersH1.InnerText = (int.Parse(s1[12]) + int.Parse(s2[12])).ToString();

            PH1Reak.InnerText = (int.Parse(s1[13]) + int.Parse(s2[13])).ToString();
            PH1Reak1.InnerText = (int.Parse(s1[14]) + int.Parse(s2[14])).ToString();
            PH1Reak2.InnerText = (int.Parse(s1[15]) + int.Parse(s2[15])).ToString();
            PH1Reak3.InnerText = (int.Parse(s1[16]) + int.Parse(s2[16])).ToString();
            PH1Reak4.InnerText = (int.Parse(s1[17]) + int.Parse(s2[17])).ToString();
            PH1Reak5.InnerText = (int.Parse(s1[18]) + int.Parse(s2[18])).ToString();
            PH1Reak6.InnerText = (int.Parse(s1[19]) + int.Parse(s2[19])).ToString();
            PH1ozo.InnerText = (int.Parse(s1[20]) + int.Parse(s2[20])).ToString();
            PH1ozo1.InnerText = (int.Parse(s1[21]) + int.Parse(s2[21])).ToString();
            PH1ozo2.InnerText = (int.Parse(s1[22]) + int.Parse(s2[22])).ToString();
            PH1ozo3.InnerText = (int.Parse(s1[23]) + int.Parse(s2[23])).ToString();
            PH1ozo4.InnerText = (int.Parse(s1[24]) + int.Parse(s2[24])).ToString();
            PH1ozo5.InnerText = (int.Parse(s1[25]) + int.Parse(s2[25])).ToString();
            PH1ozo6.InnerText = (int.Parse(s1[26]) + int.Parse(s2[26])).ToString();
            PH1ozo7.InnerText = (int.Parse(s1[27]) + int.Parse(s2[27])).ToString();
            PH1polo.InnerText = (int.Parse(s1[28]) + int.Parse(s2[28])).ToString();
            PH1polo1.InnerText = (int.Parse(s1[29]) + int.Parse(s2[29])).ToString();
            PH1polo2.InnerText = (int.Parse(s1[30]) + int.Parse(s2[30])).ToString();
            PH1polo3.InnerText = (int.Parse(s1[31]) + int.Parse(s2[31])).ToString();
            PH1polo4.InnerText = (int.Parse(s1[32]) + int.Parse(s2[32])).ToString();
            PH1polo5.InnerText = (int.Parse(s1[33]) + int.Parse(s2[33])).ToString();
            PH1polo6.InnerText = (int.Parse(s1[34]) + int.Parse(s2[34])).ToString();
            PH1polo7.InnerText = (int.Parse(s1[35]) + int.Parse(s2[35])).ToString();
            PH1polo8.InnerText = (int.Parse(s1[36]) + int.Parse(s2[36])).ToString();
            PH1polo9.InnerText = (int.Parse(s1[37]) + int.Parse(s2[37])).ToString();
            PH1polo10.InnerText = (int.Parse(s1[38]) + int.Parse(s2[38])).ToString();
            PH1polo11.InnerText = (int.Parse(s1[39]) + int.Parse(s2[39])).ToString();
            PH1polo12.InnerText = (int.Parse(s1[40]) + int.Parse(s2[40])).ToString();
            PH1alat.InnerText = (int.Parse(s1[41]) + int.Parse(s2[41])).ToString();
            PH1alat1.InnerText = (int.Parse(s1[42]) + int.Parse(s2[42])).ToString();
            PH1alat2.InnerText = (int.Parse(s1[43]) + int.Parse(s2[43])).ToString();
            PH1alat3.InnerText = (int.Parse(s1[44]) + int.Parse(s2[44])).ToString();
            PH1proce.InnerText = (int.Parse(s1[45]) + int.Parse(s2[45])).ToString();
            PH1proce1.InnerText = (int.Parse(s1[46]) + int.Parse(s2[46])).ToString();
            PH1proce2.InnerText = (int.Parse(s1[47]) + int.Parse(s2[47])).ToString();
            PH1proce3.InnerText = (int.Parse(s1[48]) + int.Parse(s2[48])).ToString();
            PH1proce4.InnerText = (int.Parse(s1[49]) + int.Parse(s2[49])).ToString();
            PH1proce5.InnerText = (int.Parse(s1[50]) + int.Parse(s2[50])).ToString();
            PH1proce6.InnerText = (int.Parse(s1[51]) + int.Parse(s2[51])).ToString();

            SatiH1.InnerText = (int.Parse(s1[52]) + int.Parse(s2[52])).ToString();
            TRIH1.InnerText = (int.Parse(s1[53]) + int.Parse(s2[53])).ToString();
            FTLH1.InnerText = (int.Parse(s1[54]) + int.Parse(s2[54])).ToString();
            LTIH1.InnerText = (int.Parse(s1[55]) + int.Parse(s2[55])).ToString();
            RWCH1.InnerText = (int.Parse(s1[56]) + int.Parse(s2[56])).ToString();
            MTCH1.InnerText = (int.Parse(s1[57]) + int.Parse(s2[57])).ToString();
            FACH1.InnerText = (int.Parse(s1[58]) + int.Parse(s2[58])).ToString();
            NMH1.InnerText = (int.Parse(s1[59]) + int.Parse(s2[59])).ToString();
            FireH1.InnerText = (int.Parse(s1[60]) + int.Parse(s2[60])).ToString();
            SpillH1.InnerText = (int.Parse(s1[61]) + int.Parse(s2[61])).ToString();
            LOPCH1.InnerText = (int.Parse(s1[62]) + int.Parse(s2[62])).ToString();
            RTAH1.InnerText = (int.Parse(s1[63]) + int.Parse(s2[63])).ToString();
            RTIH1.InnerText = (int.Parse(s1[64]) + int.Parse(s2[64])).ToString();
            NIIH1.InnerText = (int.Parse(s1[65]) + int.Parse(s2[65])).ToString();
            SWAH1.InnerText = (int.Parse(s1[66]) + int.Parse(s2[66])).ToString();
            TPSH1.InnerText = (int.Parse(s1[67]) + int.Parse(s2[67])).ToString();
            AlcoH1.InnerText = (int.Parse(s1[68]) + int.Parse(s2[68])).ToString();

            BrojKarticaH1.InnerText = (int.Parse(s1[69]) + int.Parse(s2[69])).ToString();
            PosH1Reak.InnerText = (int.Parse(s1[70]) + int.Parse(s2[70])).ToString();
            PosH1ozo.InnerText = (int.Parse(s1[71]) + int.Parse(s2[71])).ToString();
            PosH1polo.InnerText = (int.Parse(s1[72]) + int.Parse(s2[72])).ToString();
            PosH1alat.InnerText = (int.Parse(s1[73]) + int.Parse(s2[73])).ToString();
            PosH1proce.InnerText = (int.Parse(s1[74]) + int.Parse(s2[74])).ToString();
            H1 = "";
            for (int x = 0; x < 74; x++)
            {
                string LoopH = (int.Parse(s1[x]) + int.Parse(s2[x])).ToString();
                H1 += LoopH + ",";
            }
            H1+= (int.Parse(s1[74]) + int.Parse(s2[74])).ToString();
        }

        protected void DrugaPlovica()
        {
            //poruka.InnerText = prvi + drugi;
            string[] s1 = Q3.Split(',');
            string[] s2 = Q4.Split(',');

            DaniH2.InnerText = (int.Parse(s1[0]) + int.Parse(s2[0])).ToString();
            KH2.InnerText = (int.Parse(s1[1]) + int.Parse(s2[1])).ToString();
            positiveH2.InnerText = (int.Parse(s1[2]) + int.Parse(s2[2])).ToString();
            negativeH2.InnerText = (int.Parse(s1[3]) + int.Parse(s2[3])).ToString();
            UAH2.InnerText = (int.Parse(s1[4]) + int.Parse(s2[4])).ToString();
            UCH2.InnerText = (int.Parse(s1[5]) + int.Parse(s2[5])).ToString();
            openH2.InnerText = (int.Parse(s1[6]) + int.Parse(s2[6])).ToString();
            ongoingH2.InnerText = (int.Parse(s1[7]) + int.Parse(s2[7])).ToString();
            closeH2.InnerText = (int.Parse(s1[8]) + int.Parse(s2[8])).ToString();
            NegativeClosedH2.InnerText = (int.Parse(s1[9]) + int.Parse(s2[9])).ToString();
            UAClosedH2.InnerText = (int.Parse(s1[10]) + int.Parse(s2[10])).ToString();
            UCClosedH2.InnerText = (int.Parse(s1[11]) + int.Parse(s2[11])).ToString();
            NoWorkersH2.InnerText = (int.Parse(s1[12]) + int.Parse(s2[12])).ToString();

            PH2Reak.InnerText = (int.Parse(s1[13]) + int.Parse(s2[13])).ToString();
            PH2Reak1.InnerText = (int.Parse(s1[14]) + int.Parse(s2[14])).ToString();
            PH2Reak2.InnerText = (int.Parse(s1[15]) + int.Parse(s2[15])).ToString();
            PH2Reak3.InnerText = (int.Parse(s1[16]) + int.Parse(s2[16])).ToString();
            PH2Reak4.InnerText = (int.Parse(s1[17]) + int.Parse(s2[17])).ToString();
            PH2Reak5.InnerText = (int.Parse(s1[18]) + int.Parse(s2[18])).ToString();
            PH2Reak6.InnerText = (int.Parse(s1[19]) + int.Parse(s2[19])).ToString();
            PH2ozo.InnerText = (int.Parse(s1[20]) + int.Parse(s2[20])).ToString();
            PH2ozo1.InnerText = (int.Parse(s1[21]) + int.Parse(s2[21])).ToString();
            PH2ozo2.InnerText = (int.Parse(s1[22]) + int.Parse(s2[22])).ToString();
            PH2ozo3.InnerText = (int.Parse(s1[23]) + int.Parse(s2[23])).ToString();
            PH2ozo4.InnerText = (int.Parse(s1[24]) + int.Parse(s2[24])).ToString();
            PH2ozo5.InnerText = (int.Parse(s1[25]) + int.Parse(s2[25])).ToString();
            PH2ozo6.InnerText = (int.Parse(s1[26]) + int.Parse(s2[26])).ToString();
            PH2ozo7.InnerText = (int.Parse(s1[27]) + int.Parse(s2[27])).ToString();
            PH2polo.InnerText = (int.Parse(s1[28]) + int.Parse(s2[28])).ToString();
            PH2polo1.InnerText = (int.Parse(s1[29]) + int.Parse(s2[29])).ToString();
            PH2polo2.InnerText = (int.Parse(s1[30]) + int.Parse(s2[30])).ToString();
            PH2polo3.InnerText = (int.Parse(s1[31]) + int.Parse(s2[31])).ToString();
            PH2polo4.InnerText = (int.Parse(s1[32]) + int.Parse(s2[32])).ToString();
            PH2polo5.InnerText = (int.Parse(s1[33]) + int.Parse(s2[33])).ToString();
            PH2polo6.InnerText = (int.Parse(s1[34]) + int.Parse(s2[34])).ToString();
            PH2polo7.InnerText = (int.Parse(s1[35]) + int.Parse(s2[35])).ToString();
            PH2polo8.InnerText = (int.Parse(s1[36]) + int.Parse(s2[36])).ToString();
            PH2polo9.InnerText = (int.Parse(s1[37]) + int.Parse(s2[37])).ToString();
            PH2polo10.InnerText = (int.Parse(s1[38]) + int.Parse(s2[38])).ToString();
            PH2polo11.InnerText = (int.Parse(s1[39]) + int.Parse(s2[39])).ToString();
            PH2polo12.InnerText = (int.Parse(s1[40]) + int.Parse(s2[40])).ToString();
            PH2alat.InnerText = (int.Parse(s1[41]) + int.Parse(s2[41])).ToString();
            PH2alat1.InnerText = (int.Parse(s1[42]) + int.Parse(s2[42])).ToString();
            PH2alat2.InnerText = (int.Parse(s1[43]) + int.Parse(s2[43])).ToString();
            PH2alat3.InnerText = (int.Parse(s1[44]) + int.Parse(s2[44])).ToString();
            PH2proce.InnerText = (int.Parse(s1[45]) + int.Parse(s2[45])).ToString();
            PH2proce1.InnerText = (int.Parse(s1[46]) + int.Parse(s2[46])).ToString();
            PH2proce2.InnerText = (int.Parse(s1[47]) + int.Parse(s2[47])).ToString();
            PH2proce3.InnerText = (int.Parse(s1[48]) + int.Parse(s2[48])).ToString();
            PH2proce4.InnerText = (int.Parse(s1[49]) + int.Parse(s2[49])).ToString();
            PH2proce5.InnerText = (int.Parse(s1[50]) + int.Parse(s2[50])).ToString();
            PH2proce6.InnerText = (int.Parse(s1[51]) + int.Parse(s2[51])).ToString();

            SatiH2.InnerText = (int.Parse(s1[52]) + int.Parse(s2[52])).ToString();
            TRIH2.InnerText = (int.Parse(s1[53]) + int.Parse(s2[53])).ToString();
            FTLH2.InnerText = (int.Parse(s1[54]) + int.Parse(s2[54])).ToString();
            LTIH2.InnerText = (int.Parse(s1[55]) + int.Parse(s2[55])).ToString();
            RWCH2.InnerText = (int.Parse(s1[56]) + int.Parse(s2[56])).ToString();
            MTCH2.InnerText = (int.Parse(s1[57]) + int.Parse(s2[57])).ToString();
            FACH2.InnerText = (int.Parse(s1[58]) + int.Parse(s2[58])).ToString();
            NMH2.InnerText = (int.Parse(s1[59]) + int.Parse(s2[59])).ToString();
            FireH2.InnerText = (int.Parse(s1[60]) + int.Parse(s2[60])).ToString();
            SpillH2.InnerText = (int.Parse(s1[61]) + int.Parse(s2[61])).ToString();
            LOPCH2.InnerText = (int.Parse(s1[62]) + int.Parse(s2[62])).ToString();
            RTAH2.InnerText = (int.Parse(s1[63]) + int.Parse(s2[63])).ToString();
            RTIH2.InnerText = (int.Parse(s1[64]) + int.Parse(s2[64])).ToString();
            NIIH2.InnerText = (int.Parse(s1[65]) + int.Parse(s2[65])).ToString();
            SWAH2.InnerText = (int.Parse(s1[66]) + int.Parse(s2[66])).ToString();
            TPSH2.InnerText = (int.Parse(s1[67]) + int.Parse(s2[67])).ToString();
            AlcoH2.InnerText = (int.Parse(s1[68]) + int.Parse(s2[68])).ToString();

            BrojKarticaH2.InnerText = (int.Parse(s1[69]) + int.Parse(s2[69])).ToString();
            PosH2Reak.InnerText = (int.Parse(s1[70]) + int.Parse(s2[70])).ToString();
            PosH2ozo.InnerText = (int.Parse(s1[71]) + int.Parse(s2[71])).ToString();
            PosH2polo.InnerText = (int.Parse(s1[72]) + int.Parse(s2[72])).ToString();
            PosH2alat.InnerText = (int.Parse(s1[73]) + int.Parse(s2[73])).ToString();
            PosH2proce.InnerText = (int.Parse(s1[74]) + int.Parse(s2[74])).ToString();
            H2 = "";
            for (int x = 0; x < 74; x++)
            {
                string LoopH = (int.Parse(s1[x]) + int.Parse(s2[x])).ToString();
                H2 += LoopH + ",";
            }
            H2 += (int.Parse(s1[74]) + int.Parse(s2[74])).ToString();
        }

        protected void Godisnji()
        {
            //poruka.InnerText = prvi + drugi;
            string[] s1 = H1.Split(',');
            string[] s2 = H2.Split(',');

            DaniY.InnerText = (int.Parse(s1[0]) + int.Parse(s2[0])).ToString();
            KY.InnerText = (int.Parse(s1[1]) + int.Parse(s2[1])).ToString();
            positiveY.InnerText = (int.Parse(s1[2]) + int.Parse(s2[2])).ToString();
            negativeY.InnerText = (int.Parse(s1[3]) + int.Parse(s2[3])).ToString();
            UAY.InnerText = (int.Parse(s1[4]) + int.Parse(s2[4])).ToString();
            UCY.InnerText = (int.Parse(s1[5]) + int.Parse(s2[5])).ToString();
            openY.InnerText = (int.Parse(s1[6]) + int.Parse(s2[6])).ToString();
            ongoingY.InnerText = (int.Parse(s1[7]) + int.Parse(s2[7])).ToString();
            closeY.InnerText = (int.Parse(s1[8]) + int.Parse(s2[8])).ToString();
            NegativeClosedY.InnerText = (int.Parse(s1[9]) + int.Parse(s2[9])).ToString();
            UAClosedY.InnerText = (int.Parse(s1[10]) + int.Parse(s2[10])).ToString();
            UCClosedY.InnerText = (int.Parse(s1[11]) + int.Parse(s2[11])).ToString();
            NoWorkersY.InnerText = (int.Parse(s1[12]) + int.Parse(s2[12])).ToString();

            PYReak.InnerText = (int.Parse(s1[13]) + int.Parse(s2[13])).ToString();
            PYReak1.InnerText = (int.Parse(s1[14]) + int.Parse(s2[14])).ToString();
            PYReak2.InnerText = (int.Parse(s1[15]) + int.Parse(s2[15])).ToString();
            PYReak3.InnerText = (int.Parse(s1[16]) + int.Parse(s2[16])).ToString();
            PYReak4.InnerText = (int.Parse(s1[17]) + int.Parse(s2[17])).ToString();
            PYReak5.InnerText = (int.Parse(s1[18]) + int.Parse(s2[18])).ToString();
            PYReak6.InnerText = (int.Parse(s1[19]) + int.Parse(s2[19])).ToString();
            PYozo.InnerText = (int.Parse(s1[20]) + int.Parse(s2[20])).ToString();
            PYozo1.InnerText = (int.Parse(s1[21]) + int.Parse(s2[21])).ToString();
            PYozo2.InnerText = (int.Parse(s1[22]) + int.Parse(s2[22])).ToString();
            PYozo3.InnerText = (int.Parse(s1[23]) + int.Parse(s2[23])).ToString();
            PYozo4.InnerText = (int.Parse(s1[24]) + int.Parse(s2[24])).ToString();
            PYozo5.InnerText = (int.Parse(s1[25]) + int.Parse(s2[25])).ToString();
            PYozo6.InnerText = (int.Parse(s1[26]) + int.Parse(s2[26])).ToString();
            PYozo7.InnerText = (int.Parse(s1[27]) + int.Parse(s2[27])).ToString();
            PYpolo.InnerText = (int.Parse(s1[28]) + int.Parse(s2[28])).ToString();
            PYpolo1.InnerText = (int.Parse(s1[29]) + int.Parse(s2[29])).ToString();
            PYpolo2.InnerText = (int.Parse(s1[30]) + int.Parse(s2[30])).ToString();
            PYpolo3.InnerText = (int.Parse(s1[31]) + int.Parse(s2[31])).ToString();
            PYpolo4.InnerText = (int.Parse(s1[32]) + int.Parse(s2[32])).ToString();
            PYpolo5.InnerText = (int.Parse(s1[33]) + int.Parse(s2[33])).ToString();
            PYpolo6.InnerText = (int.Parse(s1[34]) + int.Parse(s2[34])).ToString();
            PYpolo7.InnerText = (int.Parse(s1[35]) + int.Parse(s2[35])).ToString();
            PYpolo8.InnerText = (int.Parse(s1[36]) + int.Parse(s2[36])).ToString();
            PYpolo9.InnerText = (int.Parse(s1[37]) + int.Parse(s2[37])).ToString();
            PYpolo10.InnerText = (int.Parse(s1[38]) + int.Parse(s2[38])).ToString();
            PYpolo11.InnerText = (int.Parse(s1[39]) + int.Parse(s2[39])).ToString();
            PYpolo12.InnerText = (int.Parse(s1[40]) + int.Parse(s2[40])).ToString();
            PYalat.InnerText = (int.Parse(s1[41]) + int.Parse(s2[41])).ToString();
            PYalat1.InnerText = (int.Parse(s1[42]) + int.Parse(s2[42])).ToString();
            PYalat2.InnerText = (int.Parse(s1[43]) + int.Parse(s2[43])).ToString();
            PYalat3.InnerText = (int.Parse(s1[44]) + int.Parse(s2[44])).ToString();
            PYproce.InnerText = (int.Parse(s1[45]) + int.Parse(s2[45])).ToString();
            PYproce1.InnerText = (int.Parse(s1[46]) + int.Parse(s2[46])).ToString();
            PYproce2.InnerText = (int.Parse(s1[47]) + int.Parse(s2[47])).ToString();
            PYproce3.InnerText = (int.Parse(s1[48]) + int.Parse(s2[48])).ToString();
            PYproce4.InnerText = (int.Parse(s1[49]) + int.Parse(s2[49])).ToString();
            PYproce5.InnerText = (int.Parse(s1[50]) + int.Parse(s2[50])).ToString();
            PYproce6.InnerText = (int.Parse(s1[51]) + int.Parse(s2[51])).ToString();

            SatiY.InnerText = (int.Parse(s1[52]) + int.Parse(s2[52])).ToString();
            TRIY.InnerText = (int.Parse(s1[53]) + int.Parse(s2[53])).ToString();
            FTLY.InnerText = (int.Parse(s1[54]) + int.Parse(s2[54])).ToString();
            LTIY.InnerText = (int.Parse(s1[55]) + int.Parse(s2[55])).ToString();
            RWCY.InnerText = (int.Parse(s1[56]) + int.Parse(s2[56])).ToString();
            MTCY.InnerText = (int.Parse(s1[57]) + int.Parse(s2[57])).ToString();
            FACY.InnerText = (int.Parse(s1[58]) + int.Parse(s2[58])).ToString();
            NMY.InnerText = (int.Parse(s1[59]) + int.Parse(s2[59])).ToString();
            FireY.InnerText = (int.Parse(s1[60]) + int.Parse(s2[60])).ToString();
            SpillY.InnerText = (int.Parse(s1[61]) + int.Parse(s2[61])).ToString();
            LOPCY.InnerText = (int.Parse(s1[62]) + int.Parse(s2[62])).ToString();
            RTAY.InnerText = (int.Parse(s1[63]) + int.Parse(s2[63])).ToString();
            RTIY.InnerText = (int.Parse(s1[64]) + int.Parse(s2[64])).ToString();
            NIIY.InnerText = (int.Parse(s1[65]) + int.Parse(s2[65])).ToString();
            SWAY.InnerText = (int.Parse(s1[66]) + int.Parse(s2[66])).ToString();
            TPSY.InnerText = (int.Parse(s1[67]) + int.Parse(s2[67])).ToString();
            AlcoY.InnerText = (int.Parse(s1[68]) + int.Parse(s2[68])).ToString();

            BrojKarticaY.InnerText = (int.Parse(s1[69]) + int.Parse(s2[69])).ToString();
            PosYReak.InnerText = (int.Parse(s1[70]) + int.Parse(s2[70])).ToString();
            PosYozo.InnerText = (int.Parse(s1[71]) + int.Parse(s2[71])).ToString();
            PosYpolo.InnerText = (int.Parse(s1[72]) + int.Parse(s2[72])).ToString();
            PosYalat.InnerText = (int.Parse(s1[73]) + int.Parse(s2[73])).ToString();
            PosYproce.InnerText = (int.Parse(s1[74]) + int.Parse(s2[74])).ToString();
        }

        private DataTable GetReport(string pd,string kd)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                if ((string)Session["UserRole"] == "MasterAdmin")
                {
                    SqlString = "SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, ReakcijaLjudi, Ozo, polozajLjudi, alatioOprema, " +
                        "ProcedureiUrednosti, PodReak1, PodReak2, PodReak3, PodReak4, PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, " +
                        "PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, " +
                        "PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, PodProce6 FROM EStopCards WHERE DateCreated " +
                        "BETWEEN " + pd + " AND " + kd;
                }
                else if ((string)Session["UserRole"] == "Manager")
                {
                    SqlString = "SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, ReakcijaLjudi, Ozo, polozajLjudi, alatioOprema, ProcedureiUrednosti, PodReak1, PodReak2, PodReak3, PodReak4, " +
                        "PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, " +
                        "PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, " +
                        "PodProce6 FROM EStopCards WHERE OJ = '" + (string)Session["OJ"] + "' AND DateCreated BETWEEN " + pd + " AND " + kd;
                }
                else if ((string)Session["UserRole"] == "Admin")
                {
                    SqlString = "SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, ReakcijaLjudi, Ozo, polozajLjudi, alatioOprema, ProcedureiUrednosti, PodReak1, PodReak2, PodReak3, PodReak4, " +
                        "PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, " +
                        "PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, " +
                        "PodProce6 FROM EStopCards WHERE SubOJ = '" + (string)Session["SubOJ"] + "' AND DateCreated BETWEEN " + pd + " AND " + kd;
                }
                else if ((string)Session["UserRole"] == "LocalAdmin")
                {
                    SqlString = "SELECT EStopCardID, SigNesigPostupak, NesigRadnjaUvijet, CardStatus, ReakcijaLjudi, Ozo, polozajLjudi, alatioOprema, ProcedureiUrednosti, PodReak1, PodReak2, PodReak3, PodReak4, " +
                        "PodReak5, PodReak6, PodOzo1, PodOzo2, PodOzo3, PodOzo4, PodOzo5, PodOzo6, PodOzo7, PodPolo1, PodPolo2, PodPolo3, PodPolo4, PodPolo5, PodPolo6, " +
                        "PodPolo7, PodPolo8, PodPolo9, PodPolo10, PodPolo11, PodPolo12, PodAlati1, PodAlati2, PodAlati3, PodProce1, PodProce2, PodProce3, PodProce4, PodProce5, " +
                        "PodProce6 FROM EStopCards WHERE SubOJDva = '" + (string)Session["SubOJDva"] + "' AND DateCreated BETWEEN " + pd + " AND " + kd; 
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
        private DataTable GetHSReport(string pd, string kd)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                if ((string)Session["UserRole"] == "MasterAdmin")
                {
                    SqlString = "SELECT * FROM HS WHERE DateCreated BETWEEN " + pd + " AND " + kd;
                }
                else if ((string)Session["UserRole"] == "Manager")
                {
                    SqlString = "SELECT * FROM HS WHERE OJ = '" + (string)Session["OJ"] + "' AND DateCreated BETWEEN " + pd + " AND " + kd;
                }
                else if ((string)Session["UserRole"] == "Admin")
                {
                    SqlString = "SELECT * FROM HS WHERE SubOJ = '" + (string)Session["SubOJ"] + "' AND DateCreated BETWEEN " + pd + " AND " + kd;
                }
                else if ((string)Session["UserRole"] == "LocalAdmin")
                {
                    SqlString = "SELECT * FROM HS WHERE SubOJDva = '" + (string)Session["SubOJDva"] + "' AND DateCreated BETWEEN " + pd + " AND " + kd;
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

        private DataTable GetHSDani(string pd, string kd)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                if ((string)Session["UserRole"] == "MasterAdmin")
                {
                    SqlString = "SELECT DISTINCT DateCreated FROM HS WHERE DateCreated BETWEEN " + pd + " AND " + kd;
                }
                else if ((string)Session["UserRole"] == "Manager")
                {
                    SqlString = "SELECT DISTINCT DateCreated FROM HS WHERE OJ = '" + (string)Session["OJ"] + "' AND DateCreated BETWEEN " + pd + " AND " + kd;
                }
                else if ((string)Session["UserRole"] == "Admin")
                {
                    SqlString = "SELECT DISTINCT DateCreated FROM HS WHERE SubOJ = '" + (string)Session["SubOJ"] + "' AND DateCreated BETWEEN " + pd + " AND " + kd;
                }
                else if ((string)Session["UserRole"] == "LocalAdmin")
                {
                    SqlString = "SELECT DISTINCT DateCreated FROM HS WHERE SubOJDva = '" + (string)Session["SubOJDva"] + "' AND DateCreated BETWEEN " + pd + " AND " + kd;
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