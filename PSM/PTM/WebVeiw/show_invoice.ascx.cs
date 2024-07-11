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

    SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            TextBoxDatetime.Text = DateTime.Now.ToString("d");
        }
    }

    

    protected void Button4_Click(object sender, EventArgs e)
    {
        
        SqlDataAdapter adpinvoice = new SqlDataAdapter("select invoice.Id, invoice.TotaleCash ,invoice.DateInvoice ,employee.Name ,client.clientName , client.phone  from invoice ,employee ,client  where invoice.seller_id = employee.Id and invoice.bransh_id = "+ Session["branch_id"] + "  and  invoice.client_id = client.Id and DateInvoice between '" + TextBoxDatetime.Text + "'  and '"+ TextBoxDatetime0.Text + "' ;", sqlcon);
        DataTable tabinvoce = new DataTable();
        adpinvoice.Fill(tabinvoce);
        GridViewinvoice.DataSource = tabinvoce;
        GridViewinvoice.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        SqlDataAdapter adpinvoice = new SqlDataAdapter("select  invoice.Id, invoice.TotaleCash , invoice.DateInvoice , employee.Name ,client.clientName ,  client.phone   from invoice  , employee , client   where invoice.seller_id =  employee.Id and  invoice.client_id = client.Id and invoice.bransh_id = " + Session["branch_id"] + ";", sqlcon);
        DataTable tabinvoce = new DataTable();
        adpinvoice.Fill(tabinvoce);
        GridViewinvoice.DataSource = tabinvoce;
        GridViewinvoice.DataBind();

    }

   

    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlDataAdapter adpvoice = new SqlDataAdapter("select Id from invoice; ", sqlcon);
        DataTable tabinvoice = new DataTable();
        adpvoice.Fill(tabinvoice);


        SqlDataAdapter adpinvoice = new SqlDataAdapter("select  bottle.name as bottleName , oil.name as oilName , pay_process.Quantity_of_oil , pay_process.price as Price  from branch, oil_of_branch, invoice, bottle, oil, client, pay_process, bottleOfBranch where invoice.Id = pay_process.invoice_id and(oil.Id = oil_of_branch.id_oil and   pay_process.oil_id = oil_of_branch.Id) and(bottle.Id = bottleOfBranch.bottleId and pay_process.bottle_id = bottleOfBranch.Id) and client.Id = invoice.client_id and invoice.bransh_id = branch.Id and invoice_id =" + (int)tabinvoice.Rows[(int)tabinvoice.Rows.Count - 1][0] + "", sqlcon);
        DataTable tabinvoce = new DataTable();
        adpinvoice.Fill(tabinvoce);
        GridViewinvoice.DataSource = tabinvoce;
        GridViewinvoice.DataBind();

        
        GridViewInvoice0.Visible = true;
        SqlDataAdapter adpinv = new SqlDataAdapter("select invoice.Id as #iDinVoice , client.clientName ,branch.Name as BranchName , employee.Name as EmployeeName  , invoice.DateInvoice ,invoice.TotaleCash from employee , branch, invoice,client where employee.Id = invoice.seller_id and client.Id = invoice.client_id  and invoice.bransh_id = branch.Id and invoice.Id ='" + (int)tabinvoice.Rows[(int)tabinvoice.Rows.Count - 1][0] + "';", sqlcon);
        DataTable tabinv = new DataTable();
        adpinv.Fill(tabinv);
        GridViewInvoice0.DataSource = tabinv;
        GridViewInvoice0.DataBind();


    }
}