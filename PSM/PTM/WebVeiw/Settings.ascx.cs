using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class WebVeiw_Settings : System.Web.UI.UserControl
{
    SqlConnection sqlcon = new SqlConnection(@"workstation id=PTMDataBase.mssql.somee.com;packet size=4096;user id=ahmedZamlkawy_SQLLogin_1;pwd=aww4jpggwh;data source=PTMDataBase.mssql.somee.com;persist security info=False;initial catalog=PTMDataBase;TrustServerCertificate=True");
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!Page.IsPostBack)
        {

            SqlDataAdapter adb = new SqlDataAdapter("select id , Name from branch ; ", sqlcon);
            DataTable tabbranchdrop = new DataTable();
            adb.Fill(tabbranchdrop);
            ListBranch.DataSource = tabbranchdrop;
            ListBranch.DataBind();
            ListBranch.DataTextField = "Name";
            ListBranch.DataValueField = "id";
            ListBranch.DataBind();
        }
        
    }

    protected void ListBranch_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["branch_id"] = ListBranch.SelectedValue;
        Response.Redirect("ceo.aspx");
    }

    protected void BtnAddNewBranch_Click(object sender, EventArgs e)
    {


        SqlDataAdapter adb = new SqlDataAdapter("select  max(id)+1  from branch ; ", sqlcon);
        DataTable tabbranch = new DataTable();
        adb.Fill(tabbranch);

        sqlcon.Open();
        SqlCommand ComAddBranch = new SqlCommand("insert into branch values ("+ tabbranch.Rows[0][0].ToString() +",'"+ txtNewBranch.Text +"')", sqlcon);
        ComAddBranch.ExecuteNonQuery();
        sqlcon.Close();
        txtNewBranch.Text = "";



    }
}