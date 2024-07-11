using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class seller : System.Web.UI.Page
{


    SqlConnection sqlcon = new SqlConnection(@"workstation id=PTMDataBase.mssql.somee.com;packet size=4096;user id=ahmedZamlkawy_SQLLogin_1;pwd=aww4jpggwh;data source=PTMDataBase.mssql.somee.com;persist security info=False;initial catalog=PTMDataBase;TrustServerCertificate=True");

    

    protected void Page_Load(object sender, EventArgs e)
    {




        if (!Page.IsPostBack)
        {


            sqlcon.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select Name from branch where Id= '" + Session["branch_id"] + "'; ", sqlcon);
            DataTable tab = new DataTable();
            adp.Fill(tab);
            LabelTime.Text += DateTime.Now.ToString("d");
            LabelEmpName.Text = (string)Session["EmpName"];
            LabelBranchName.Text += tab.Rows[0][0];
            
        }


    }
    public  void WUC_visible_hide()
    {
        Sales_process1.Visible = false;
        show_invoice.Visible = false;
        bottle.Visible = false;
        oil.Visible = false;
        client.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        


    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Response.Redirect("login.aspx");

    }

    protected void Button3_Click1(object sender, EventArgs e)
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
        bottle.Visible = true;

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        WUC_visible_hide();
        oil.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        WUC_visible_hide();
        client.Visible = true;
    }
}