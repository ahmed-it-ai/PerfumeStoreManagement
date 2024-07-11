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

    SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            TextBoxDatetime.Text = DateTime.Now.ToString("d");
        }
    }

    


    protected void Button4_Click(object sender, EventArgs e)
    {
        
        SqlDataAdapter adpinvoice = new SqlDataAdapter("select invoice.Id, invoice.TotaleCash ,invoice.DateInvoice ,employee.Name ,client.clientName , client.phone  from invoice ,employee ,client  where invoice.seller_id = employee.Id   and  invoice.client_id = client.Id and DateInvoice = '" + TextBoxDatetime.Text + "';", sqlcon);
        DataTable tabinvoce = new DataTable();
        adpinvoice.Fill(tabinvoce);
        GridViewinvoice.DataSource = tabinvoce;
        GridViewinvoice.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        SqlDataAdapter adpinvoice = new SqlDataAdapter("select  invoice.Id, invoice.TotaleCash , invoice.DateInvoice , employee.Name ,client.clientName ,  client.phone   from invoice  , employee , client   where invoice.seller_id =  employee.Id and  invoice.client_id = client.Id ;", sqlcon);
        DataTable tabinvoce = new DataTable();
        adpinvoice.Fill(tabinvoce);
        GridViewinvoice.DataSource = tabinvoce;
        GridViewinvoice.DataBind();

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
    }
}