using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class WebVeiw_AddOil : System.Web.UI.UserControl
{
    SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());

    protected void Page_Load(object sender, EventArgs e)
    {

        updataGridview();

        if (!Page.IsPostBack)
        {

            SqlDataAdapter adb = new SqlDataAdapter("select id , Name from oil ; ", sqlcon);
            DataTable TabBranchDrop = new DataTable();
            adb.Fill(TabBranchDrop);
            DropDownList1.DataSource = TabBranchDrop;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "id";
            DropDownList1.DataBind();
        }
    }

    public void updataGridview()
    {
        SqlDataAdapter adpOilOfBranch = new SqlDataAdapter("select oil_of_branch.weight as oil_weight , oil.name as oilName from oil, oil_of_branch where oil_of_branch.id_branch = " + Session["branch_id"] + "  and oil_of_branch.id_oil = oil.Id;", sqlcon);
        DataTable tabOilOfBranch = new DataTable();
        adpOilOfBranch.Fill(tabOilOfBranch);
        GridViewBottle.DataSource = tabOilOfBranch;
        GridViewBottle.DataBind();

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        sqlcon.Open();


        SqlDataAdapter adpsalbottle = new SqlDataAdapter("select id_oil from oil_of_branch where   id_branch = " + Session["branch_id"] + " and  id_oil = " + DropDownList1.SelectedValue + ";", sqlcon);
        DataTable Tabbottle = new DataTable();
        adpsalbottle.Fill(Tabbottle);
        if (Tabbottle.Rows.Count == 1)
        {
            SqlCommand comupdBottle = new SqlCommand("update oil_of_branch set weight = weight + " + TextCount.Text + " where id_branch = " + Session["branch_id"] + " and id_oil = " + DropDownList1.SelectedValue + " ;", sqlcon);
            comupdBottle.ExecuteNonQuery();
        }
        else
        {
            
            SqlCommand ComBottle = new SqlCommand("insert into oil_of_branch (weight,id_oil ,id_branch) values(" + TextCount.Text + "," + DropDownList1.SelectedValue + "," + Session["branch_id"] + ");", sqlcon);
            ComBottle.ExecuteNonQuery();
            sqlcon.Close();
            TextCount.Text = "";
        }
        updataGridview();


    }
}