using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class show_invoice : System.Web.UI.UserControl
{

    SqlConnection sqlcon = new SqlConnection(@"workstation id=PTMDataBase.mssql.somee.com;packet size=4096;user id=ahmedZamlkawy_SQLLogin_1;pwd=aww4jpggwh;data source=PTMDataBase.mssql.somee.com;persist security info=False;initial catalog=PTMDataBase;TrustServerCertificate=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            TextBoxDatetime.Text = DateTime.Now.ToString("d");
        }
    }

    

    protected void Button4_Click(object sender, EventArgs e)
    {
        DateTime time = DateTime.Parse( TextBoxDatetime.Text);
        SqlDataAdapter adpinvoice = new SqlDataAdapter("select invoice.Id, invoice.TotaleCash ,invoice.DateInvoice ,employee.Name ,client.clientName , client.phone  from invoice ,employee ,client  where invoice.seller_id = employee.Id and invoice.bransh_id = "+ Session["branch_id"] + "  and  invoice.client_id = client.Id and DateInvoice = '" + time.ToString("d") + "';", sqlcon);
        DataTable tabinvoce = new DataTable();
        adpinvoice.Fill(tabinvoce);
        GridViewinvoice.DataSource = tabinvoce;
        GridViewinvoice.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        SqlDataAdapter adpinvoice = new SqlDataAdapter("select  invoice.Id, invoice.TotaleCash , invoice.DateInvoice , employee.Name ,client.clientName ,  client.phone   from invoice  , employee , client   where invoice.seller_id =  employee.Id and  invoice.client_id = client.Id invoice.bransh_id = " + Session["branch_id"] + ";", sqlcon);
        DataTable tabinvoce = new DataTable();
        adpinvoice.Fill(tabinvoce);
        GridViewinvoice.DataSource = tabinvoce;
        GridViewinvoice.DataBind();

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
    }
}