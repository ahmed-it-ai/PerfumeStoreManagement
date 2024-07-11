using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class WebVeiw_bottle : System.Web.UI.UserControl
{
    SqlConnection sqlcon = new SqlConnection(@"workstation id=PTMDataBase.mssql.somee.com;packet size=4096;user id=ahmedZamlkawy_SQLLogin_1;pwd=aww4jpggwh;data source=PTMDataBase.mssql.somee.com;persist security info=False;initial catalog=PTMDataBase;TrustServerCertificate=True");

    protected void Page_Load(object sender, EventArgs e)
    {

        SqlDataAdapter adpbottleOfBranch = new SqlDataAdapter("select bottle.name , bottleOfBranch.CountOfBottle ,  bottle.price from bottle,bottleOfBranch  where bottleOfBranch.BranchId=" + Session["branch_id"] + " and bottleOfBranch.bottleId=bottle.Id; " , sqlcon);
        DataTable tabbottleOfBranch = new DataTable();
        adpbottleOfBranch.Fill(tabbottleOfBranch);  
        GridViewBottle.DataSource = tabbottleOfBranch;      
        GridViewBottle.DataBind();
        
    }

    
}