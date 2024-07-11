using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class WebVeiw_client : System.Web.UI.UserControl
{


    //SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
    //SqlConnection con = new SqlConnection(sqlsrt.ssqlsrt());
    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlDataAdapter adpClient = new SqlDataAdapter("select clientName,phone from client ; ", sqlcon);
        //DataTable tabClient = new DataTable();
        //adpClient.Fill(tabClient);
        //GridViewclient.DataSource = tabClient;
        //GridViewclient.DataBind();

    }

    public void selectClient()
    {
        //SqlDataAdapter adpClient = new SqlDataAdapter("select clientName , phone  from client ; ", sqlcon);
        //DataTable tabClient = new DataTable();
        //adpClient.Fill(tabClient);
        //GridViewclient.DataSource = tabClient;
        //GridViewclient.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlDataAdapter adpClient = new SqlDataAdapter("select clientName , phone  from client where clientName = N'" + Textclient.Text + "'; ", sqlcon);
        //DataTable tabClient = new DataTable();
        //adpClient.Fill(tabClient);
        //GridViewclient.DataSource = tabClient;
        //GridViewclient.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        //selectClient();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
    }
} 