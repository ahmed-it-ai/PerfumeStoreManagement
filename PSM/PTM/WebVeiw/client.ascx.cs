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


    SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlDataAdapter adpClient = new SqlDataAdapter("select clientName,phone from client ; ", sqlcon);
        DataTable tabClient = new DataTable();
        adpClient.Fill(tabClient);
        GridViewclient.DataSource = tabClient;
        GridViewclient.DataBind();

    }

    public void selectClient()
    {
        SqlDataAdapter adpClient = new SqlDataAdapter("select clientName , phone  from client ; ", sqlcon);
        DataTable tabClient = new DataTable();
        adpClient.Fill(tabClient);
        GridViewclient.DataSource = tabClient;
        GridViewclient.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlDataAdapter adpClient = new SqlDataAdapter("select clientName , phone  from client where clientName = '" + Textclient.Text + "'; ", sqlcon);
        DataTable tabClient = new DataTable();
        adpClient.Fill(tabClient);
        GridViewclient.DataSource = tabClient;
        GridViewclient.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        selectClient();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comclient = new SqlCommand("insert into client (clientName,phone) values (' "+ TextName.Text  + " ', "+ Textphone.Text +" );", con);
        comclient.ExecuteNonQuery();
        con.Close();

        selectClient();

    }
}