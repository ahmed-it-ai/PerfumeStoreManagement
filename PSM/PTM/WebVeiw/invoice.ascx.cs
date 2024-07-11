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
    SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlDataAdapter adpbottleOfBranch = new SqlDataAdapter("select bottleOfBranch.CountOfBottle as bottleCuont , bottle.name as bottleName    from bottle,bottleOfBranch  where bottleOfBranch.BranchId = " + Session["branch_id"] + " and bottleOfBranch.bottleId=bottle.Id ;", sqlcon);
        //DataTable tabbottleOfBranch = new DataTable();
        //adpbottleOfBranch.Fill(tabbottleOfBranch);
        //GridViewBottle.DataSource = tabbottleOfBranch;
        //GridViewBottle.DataBind();
        //Chart1.Series["Series1"].XValueMember = "bottleName";
        //Chart1.Series["Series1"].YValueMembers = "bottleCuont";
        //Chart1.DataSource = tabbottleOfBranch;
        //Chart1.DataBind();


        //if (!Page.IsPostBack)
        //{

        //    SqlDataAdapter adb = new SqlDataAdapter("select id , Name from bottle ; ", sqlcon);
        //    DataTable TabBranchDrop = new DataTable();
        //    adb.Fill(TabBranchDrop);
        //    ListOfBottleName.DataSource = TabBranchDrop;
        //    ListOfBottleName.DataBind();
        //    ListOfBottleName.DataTextField = "Name";
        //    ListOfBottleName.DataValueField = "id";
        //    ListOfBottleName.DataBind();
        //}


    }

    protected void Button5_Click(object sender, EventArgs e)
    {  
        //sqlcon.Open();


        //SqlDataAdapter adpsalbottle = new SqlDataAdapter(" select bottleid from bottleOfBranch where   BranchId = " + Session["branch_id"] + " and  bottleid = " + ListOfBottleName.SelectedValue + ";", sqlcon);
        //DataTable Tabbottle = new DataTable();
        //adpsalbottle.Fill(Tabbottle);
        //if (Tabbottle.Rows.Count ==  1 )
        //{
        //    SqlCommand comupdBottle = new SqlCommand("update bottleOfBranch set CountOfBottle = CountOfBottle + "+ TextCount.Text +" where BranchId = " + Session["branch_id"] + "  and bottleId = " +  ListOfBottleName.SelectedValue + " ;", sqlcon);
        //    comupdBottle.ExecuteNonQuery();
        //}
        //else
        //{

        //    SqlCommand ComBottle = new SqlCommand("insert into bottleOfBranch (CountOfBottle,bottleId ,BranchId) values(" + TextCount.Text + "," + ListOfBottleName.SelectedValue + "," + Session["branch_id"] + ");", sqlcon);
        //    ComBottle.ExecuteNonQuery();
        //    sqlcon.Close();
        //    TextCount.Text = "";
        //}





    }



    protected void Chart1_Load(object sender, EventArgs e)
    {

    }

    protected void ListBranch_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}