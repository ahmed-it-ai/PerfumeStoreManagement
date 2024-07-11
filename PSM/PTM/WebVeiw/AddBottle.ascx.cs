using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class WebVeiw_AddBottle : System.Web.UI.UserControl
{
    SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlDataAdapter adpbottleOfBranch = new SqlDataAdapter("select * from bottleOfBranch where BranchId = " + Session["branch_id"] + ";", sqlcon);
        DataTable tabbottleOfBranch = new DataTable();
        adpbottleOfBranch.Fill(tabbottleOfBranch);
        GridViewBottle.DataSource = tabbottleOfBranch;
        GridViewBottle.DataBind();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        sqlcon.Open();

        SqlDataAdapter adpbottle = new SqlDataAdapter("select Id from bottle where Name = '" + TextBottleName.Text + "'; ", sqlcon);
        DataTable tabbottle = new DataTable();
        adpbottle.Fill(tabbottle);
        int bottle = (int)tabbottle.Rows[0][0];
        ////to get bottle id from name 
        SqlCommand ComBottle = new SqlCommand("insert into bottleOfBranch (CountOfBottle,bottleId ,BranchId) values("+TextCount.Text+","+ bottle + ","+ Session["branch_id"] + ");", sqlcon);
        ComBottle.ExecuteNonQuery();
        sqlcon.Close();
        TextBottleName.Text = "";
        TextCount.Text = "";


    }
}