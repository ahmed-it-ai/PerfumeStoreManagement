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
    SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter adpoil_of_branch = new SqlDataAdapter("select oil.name as name_of_oil , oil_of_branch.weight ,  oil.price from oil , oil_of_branch  where oil_of_branch.id_branch =" + Session["branch_id"] + " and oil_of_branch.id_oil=oil.Id;", sqlcon);
        DataTable taboil_of_branch = new DataTable();
        adpoil_of_branch.Fill(taboil_of_branch);
        GridViewOil.DataSource = taboil_of_branch;
        GridViewOil.DataBind();
    }
}