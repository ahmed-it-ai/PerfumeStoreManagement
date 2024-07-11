using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//using CrystalDecisions.CrystalReports.Engine;
public partial class ceo : System.Web.UI.Page
{
    SqlConnection sqlcon = new SqlConnection(@"workstation id=PTMDataBase.mssql.somee.com;packet size=4096;user id=ahmedZamlkawy_SQLLogin_1;pwd=aww4jpggwh;data source=PTMDataBase.mssql.somee.com;persist security info=False;initial catalog=PTMDataBase;TrustServerCertificate=True");
    protected void Page_Load(object sender, EventArgs e)
    {

       // if (!Page.IsPostBack)
        //{

            sqlcon.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select Name from branch where Id= '" + Session["branch_id"] + "'; ", sqlcon);
            DataTable tab = new DataTable();
            adp.Fill(tab);
            var info = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
            DateTimeOffset localServerTime = DateTimeOffset.Now;
            DateTimeOffset localTime = TimeZoneInfo.ConvertTime(localServerTime, info);
            LabelTime.Text = localTime.ToString("MM/dd/yyyy h:mm tt");            
            LabelEmpName.Text = (string)Session["EmpName"];
            LabelBranchName.Text = tab.Rows[0][0].ToString();

        //}

    }
    public void WUC_visible_hide()
    {
        analysis1.Visible = false;  
        Sales_process1.Visible = false;
        show_invoice.Visible = false;
        bottle.Visible = false;
        oil.Visible = false;
        client.Visible = false;
        AddBottle1.Visible = false;
        Settings1.Visible = false;
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        client.Visible = true;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        Sales_process1.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        show_invoice.Visible = true;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        AddBottle1.Visible = true;


    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        oil.Visible = true;

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");

    }





    protected void Button7_Click(object sender, EventArgs e)
    {
        WUC_visible_hide();
        analysis1.Visible = true;
    }

    protected void BtnSettings_Click(object sender, EventArgs e)
    {
        WUC_visible_hide();
        Settings1.Visible = true;
    }
}