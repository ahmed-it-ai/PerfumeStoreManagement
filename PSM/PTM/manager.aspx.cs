﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class manager : System.Web.UI.Page
{
    SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
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
    public void WUC_visible_hide()
    {
        Sales_process1.Visible = false;
        show_invoice.Visible = false;
        AddOil1.Visible = false;
        client.Visible = false;
        AddBottle.Visible = false;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
    }
    protected void Button2_Click1(object sender, EventArgs e)    {  }
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
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        WUC_visible_hide();
        AddOil1.Visible = true;
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        WUC_visible_hide();
        client.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
           Session.Abandon();
        Response.Redirect("login.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        WUC_visible_hide();
        AddBottle.Visible = true;
    }
}