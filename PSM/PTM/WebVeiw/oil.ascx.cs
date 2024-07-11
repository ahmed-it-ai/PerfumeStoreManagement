using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class WebVeiw_oil : System.Web.UI.UserControl
{
    SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {


        SqlDataAdapter adpoil_of_branch = new SqlDataAdapter("select * from oil_of_branch where id_branch = " + Session["branch_id"] + ";", sqlcon);
        DataTable taboil_of_branch = new DataTable();
        adpoil_of_branch.Fill(taboil_of_branch);
        GridViewOil.DataSource = taboil_of_branch;
        GridViewOil.DataBind();


    }
}