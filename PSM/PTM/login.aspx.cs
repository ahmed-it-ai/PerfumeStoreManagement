using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class login : System.Web.UI.Page
{
    
    SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        

        //sqlcon.Open();

        //SqlDataAdapter sqladp = new SqlDataAdapter("select userName , password , jop_name , Id , Name , branch_id from employee where userName = '" + Textuser.Text + "' and password = '" + TextPass.Text + "';    ", sqlcon);

        //DataTable tab = new DataTable();
        //DataSet set = new DataSet();

        //sqladp.Fill(tab);       
        //sqladp.Fill(set);
        ////string xx = tab.Rows[0][0].ToString();
        
        //if (tab.Rows.Count == 1)
        //{
        //    string setstring = set.Tables[0].Rows[0][2].ToString();

        //    Session["EmpId"] = set.Tables[0].Rows[0][3].ToString();
        //    Session["EmpName"] = set.Tables[0].Rows[0][4].ToString();
        //    Session["branch_id"] = set.Tables[0].Rows[0][5].ToString();

        //    if (setstring == "ceo               ")
        //    {
               Response.Redirect("ceo.aspx");
        //    }
        //    else if (setstring == "manager           ")
        //    {
        //        Response.Redirect("manager.aspx");
        //    }
        //    else if (setstring == "seller            ")
        //    {
        //        Response.Redirect("seller.aspx");
        //    }
        //    else
        //    {
        //        B1.Text = setstring;
        //    }


        //}
        //else
        //{
        //    TextPass.Text = "";
        //    Textuser.Text = "";
        //    B1.Text = "fulse";
        //}



    }


}