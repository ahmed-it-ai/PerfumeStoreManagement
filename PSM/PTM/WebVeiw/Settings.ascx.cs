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
    SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
    protected void Page_Load(object sender, EventArgs e)
    {

        if(!Page.IsPostBack)
        {
            listbottle();
            listBranch();
            listOil();
        }
        


    }
    public void listBranch()
    {
        SqlDataAdapter adb = new SqlDataAdapter("select id , Name from branch ; ", sqlcon);
        DataTable TabBranchDrop = new DataTable();
        adb.Fill(TabBranchDrop);
        ListBranch.DataSource = TabBranchDrop;
        ListBranch.DataBind();
        ListBranch.DataTextField = "Name";
        ListBranch.DataValueField = "id";
        ListBranch.DataBind();

    }
    public void listbottle()
    {
        SqlDataAdapter adbListbottle = new SqlDataAdapter("select id , name from bottle ; ", sqlcon);
        DataTable tabListbottle = new DataTable();
        adbListbottle.Fill(tabListbottle);
        Listbottle.DataSource = tabListbottle;
        Listbottle.DataBind();
        Listbottle.DataTextField = "name";
        Listbottle.DataValueField = "id";
        Listbottle.DataBind();

    }
    public void listOil()
    {
        SqlDataAdapter adbListOil = new SqlDataAdapter("select id , name from oil ; ", sqlcon);
        DataTable tabListOil = new DataTable();
        adbListOil.Fill(tabListOil);
        ListOil.DataSource = tabListOil;
        ListOil.DataBind();
        ListOil.DataTextField = "name";
        ListOil.DataValueField = "id";
        ListOil.DataBind();

    }

    protected void ListBranch_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["branch_id"] = ListBranch.SelectedValue;
        Response.Redirect("ceo.aspx");
    }

    protected void BtnAddNewBranch_Click(object sender, EventArgs e)
    {
        if(txtNewBranch.Text == null) { Label1.Visible = true; } 
        else
        {
            SqlDataAdapter adb = new SqlDataAdapter("select  max(id)+1  from branch ; ", sqlcon);
            DataTable tabbranch = new DataTable();
            adb.Fill(tabbranch);

            sqlcon.Open();
            SqlCommand ComAddBranch = new SqlCommand("insert into branch values (" + tabbranch.Rows[0][0].ToString() + ",'" + txtNewBranch.Text + "')", sqlcon);
            ComAddBranch.ExecuteNonQuery();
            sqlcon.Close();
            txtNewBranch.Text = null;
            listBranch();
        }
    }

    protected void ListBranch0_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter adbBottle = new SqlDataAdapter("select  price  from bottle where id = "+ Listbottle.SelectedValue +" ; ", sqlcon);
        DataTable tabBottle = new DataTable();
        adbBottle.Fill(tabBottle);

        txtPriceUpdate.Text = tabBottle.Rows[0][0].ToString() ;


    }


    protected void BtnAddNewBranch1_Click(object sender, EventArgs e)
    {
        sqlcon.Open();
        SqlCommand comupdBottle = new SqlCommand("update bottle set price = "+ txtPriceUpdate.Text +" where id = "+Listbottle.SelectedValue +";", sqlcon);
        comupdBottle.ExecuteNonQuery();
        sqlcon.Close();
    }
    protected void BtnAddNewBottle_Click(object sender, EventArgs e)
    {
        sqlcon.Open();
        SqlCommand ComAddbottle = new SqlCommand("insert into bottle (Name , price) values ('"+txtBottleName.Text+"',"+txtBottlePrice.Text+")", sqlcon);
        ComAddbottle.ExecuteNonQuery();
        sqlcon.Close();
        txtBottleName.Text = "";
        txtBottlePrice.Text = "";
        listbottle();
    }

    protected void BtnAddNewOil_Click(object sender, EventArgs e)
    {
        sqlcon.Open();
        SqlCommand ComAddOil = new SqlCommand("insert into oil (Name , price) values ('" + txtOilName.Text + "'," + txtOilPrice.Text + ")", sqlcon);
        ComAddOil.ExecuteNonQuery();
        sqlcon.Close();
        txtOilName.Text = "";
        txtOilPrice.Text = "";
        listOil();
    }

    protected void ListOil_SelectedIndexChanged(object sender, EventArgs e)
    {


        SqlDataAdapter adbOil = new SqlDataAdapter("select  price  from oil where id = " + ListOil.SelectedValue + " ; ", sqlcon);
        DataTable tabOil = new DataTable();
        adbOil.Fill(tabOil);

        txtOilPriceUpdate.Text = tabOil.Rows[0][0].ToString();

    }

    protected void BtnEditOilPrice_Click(object sender, EventArgs e)
    {
        sqlcon.Open();
        SqlCommand comupdOil = new SqlCommand("update oil set price = " + txtOilPriceUpdate.Text + " where id = " + ListOil.SelectedValue + ";", sqlcon);
        comupdOil.ExecuteNonQuery();
        sqlcon.Close();
    }
}