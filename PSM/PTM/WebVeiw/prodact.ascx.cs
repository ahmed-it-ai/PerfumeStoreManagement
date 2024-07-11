using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class WebVeiw_analysis : System.Web.UI.UserControl
{
    //SqlConnection con = new SqlConnection( sqlsrt.ssqlsrt() );
    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlDataAdapter adpoil_of_branch = new SqlDataAdapter("select  pay_process.price , bottle.name , pay_process.Quantity_of_oil, oil.name ,client.clientName , invoice.DateInvoice from oil_of_branch , bottleOfBranch , invoice  ,  bottle ,  oil ,   client ,  pay_process where invoice.Id = pay_process.invoice_id and ( oil.Id = oil_of_branch.id_oil and   pay_process.oil_id = oil_of_branch.Id) and (bottle.Id = bottleOfBranch.bottleId and pay_process.bottle_id =bottleOfBranch.Id ) and client.Id = invoice.client_id and invoice.bransh_id = " + Session["branch_id"] + ";", con);
        //DataTable taboil_of_branch = new DataTable();
        //adpoil_of_branch.Fill(taboil_of_branch);
        //Chart11.Series["Series1"].XValueMember = "price";
        //Chart11.Series["Series1"].YValueMembers = "clientName";
        //Chart11.DataSource = taboil_of_branch;
        //Chart11.DataBind();





    }



    protected void btnShow_Click(object sender, EventArgs e)
    {


        //SqlDataAdapter adpoil_of_branch = new SqlDataAdapter("select pay_process.price as PayPrice , bottle.name as bottleName , pay_process.Quantity_of_oil, oil.name as oilName ,client.clientName , invoice.DateInvoice ,invoice.Id as #iDinVoice ,branch.Name as BranchName , employee.Name as EmployeeName  from employee , branch, oil_of_branch, invoice, bottle, oil, client, pay_process, bottleOfBranch where invoice.Id = pay_process.invoice_id and(oil.Id = oil_of_branch.id_oil and   pay_process.oil_id = oil_of_branch.Id) and(bottle.Id = bottleOfBranch.bottleId and pay_process.bottle_id = bottleOfBranch.Id) and employee.Id = invoice.seller_id  and client.Id = invoice.client_id and invoice.bransh_id = branch.Id  and invoice.bransh_id = " + Session["branch_id"] + " and invoice.DateInvoice between '" + TextBoxDatetime.Text + "' and '" + TextBoxDatetime0.Text + "' ;", con);        
        //DataTable taboil_of_branch = new DataTable();
        //adpoil_of_branch.Fill(taboil_of_branch);
        //GridViewOil.DataSource = taboil_of_branch;
        //GridViewOil.DataBind();
        




    }
}