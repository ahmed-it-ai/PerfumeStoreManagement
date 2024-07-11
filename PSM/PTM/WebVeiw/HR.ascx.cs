using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class WebVeiw_HR : System.Web.UI.UserControl
{

    SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlDataAdapter adpoil_of_branch = new SqlDataAdapter("select * from employee ;", sqlcon);
        //DataTable taboil_of_branch = new DataTable();
        //adpoil_of_branch.Fill(taboil_of_branch);
        //GridViewOil.DataSource = taboil_of_branch;
        //GridViewOil.DataBind();

    }
}