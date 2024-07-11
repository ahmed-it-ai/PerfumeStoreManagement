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
    // SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Session["EmpName"] == null)
        //{
        //    Response.Redirect("login.aspx");
        //}
        //else
        //{

        //    sqlcon.Open();
        //    SqlDataAdapter adp = new SqlDataAdapter("select Name from branch where Id= '" + Session["branch_id"] + "'; ", sqlcon);
        //    DataTable tab = new DataTable();
        //    adp.Fill(tab);
        //    var info = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
        //    DateTimeOffset localServerTime = DateTimeOffset.Now;
        //    DateTimeOffset localTime = TimeZoneInfo.ConvertTime(localServerTime, info);
        //    LabelTime.Text = localTime.ToString("MM/dd/yyyy h:mm tt");
        //    LabelEmpName.Text = (string)Session["EmpName"];
        //    LabelBranchName.Text = tab.Rows[0][0].ToString();


        //}


    }
    public void WUC_visible_hide()
    {

        Catgegory.Visible = false;
        client1.Visible = false;
        HR1.Visible = false;
        invoice1.Visible = false;
        prodact1.Visible = false;


     
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {

    }

    protected void Button6_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        HR1.Visible = true;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        invoice1.Visible = true;

      
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        Catgegory.Visible = true;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        prodact1.Visible = true;


    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        WUC_visible_hide();
        client1.Visible = true;
      
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");

    }





    protected void Button7_Click(object sender, EventArgs e)
    {
        WUC_visible_hide();
     
    }

    protected void BtnSettings_Click(object sender, EventArgs e)
    {
        WUC_visible_hide();
        
    }

    protected void btnHR_Click(object sender, EventArgs e)
    {
        WUC_visible_hide();
        

    }
}