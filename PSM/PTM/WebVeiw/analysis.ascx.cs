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
    SqlConnection con = new SqlConnection( sqlsrt.ssqlsrt() );
    protected void Page_Load(object sender, EventArgs e)
    {
        //1  Chart of Bottle  
        SqlDataAdapter adpBottle = new SqlDataAdapter("select bottle.name as Bottle_Name , count(pay_process.Id) as count_of_bottles_sold , bottle.price ,count( pay_process.Id)*bottle.price as Total_sales  FROM bottle , pay_process , bottleOfBranch where bottle.Id = bottleOfBranch.bottleId and pay_process.bottle_id = bottleOfBranch.Id group by bottle.price,bottle.name order by  Total_sales  DESC;", con);
        DataTable tabBottle = new DataTable();
        adpBottle.Fill(tabBottle);
        Chart_Bottle.Series["Series1"].XValueMember = "Bottle_Name"; 
        Chart_Bottle.Series["Series1"].YValueMembers = "Total_sales";
        Chart_Bottle.DataSource = tabBottle;
        Chart_Bottle.DataBind();        
        GridBottle.DataSource = tabBottle;
        GridBottle.DataBind();


        //2 chart oil 
        SqlDataAdapter adpoil = new SqlDataAdapter("select oil.name, oil.price ,sum( pay_process.Quantity_of_oil) as Total_quantity_sold , sum( pay_process.Quantity_of_oil)*oil.price as Total_sales_of_oils  FROM oil , pay_process , oil_of_branch where oil.Id = oil_of_branch.id_oil and pay_process.oil_id = oil_of_branch.Id group by oil.price,oil.name order by  Total_sales_of_oils  DESC ;", con);
        DataTable taboil = new DataTable();
        adpoil.Fill(taboil);
        Chart_oil.Series["Series1"].XValueMember = "name";
        Chart_oil.Series["Series1"].YValueMembers = "Total_sales_of_oils";
        Chart_oil.DataSource = taboil;
        Chart_oil.DataBind();        
        GridOil.DataSource = taboil;
        GridOil.DataBind();


        //3 Chart Client
        SqlDataAdapter adpclinet = new SqlDataAdapter("select  client.clientName ,count(invoice.id) as count_invoice ,avg(invoice.TotaleCash) as average_Pay_price , sum(invoice.TotaleCash) as TOTAL_Pay from branch ,  invoice  , client  where  client.Id = invoice.client_id and invoice.bransh_id = branch.Id group By client.clientName order by sum(invoice.TotaleCash) DESC;", con);
        DataTable tabclinet = new DataTable();
        adpclinet.Fill(tabclinet);
        Chart_clinet.Series["Series1"].XValueMember = "clientName";
        Chart_clinet.Series["Series1"].YValueMembers = "TOTAL_Pay";
        Chart_clinet.DataSource = tabclinet;
        Chart_clinet.DataBind();        
        Gridclient.DataSource = tabclinet;
        Gridclient.DataBind();


        //4 Chart Branch
        SqlDataAdapter adpbranch = new SqlDataAdapter("select branch.Name, sum(invoice.TotaleCash) as Totale_Cash  from branch , invoice where branch.Id = invoice.bransh_id group by branch.Name order by sum(invoice.TotaleCash) DESC ;", con);
        DataTable tabbranch = new DataTable();
        adpbranch.Fill(tabbranch);
        Chart_branch.Series["Series1"].XValueMember = "Name";
        Chart_branch.Series["Series1"].YValueMembers = "Totale_Cash";
        Chart_branch.DataSource = tabbranch;
        Chart_branch.DataBind();        
        Gridbranch.DataSource = tabbranch;
        Gridbranch.DataBind();


        //5 Chart employee
        SqlDataAdapter adpemployee = new SqlDataAdapter("select employee.Name , sum(invoice.TotaleCash) as Total_sales from employee , invoice  where employee.Id = invoice.seller_id group by employee.Name order by Total_sales DESC;", con);
        DataTable tabemployee = new DataTable();
        adpemployee.Fill(tabemployee);
        Chart_employee.Series["Series1"].XValueMember = "Name";
        Chart_employee.Series["Series1"].YValueMembers = "Total_sales";
        Chart_employee.DataSource = tabemployee;
        Chart_employee.DataBind();
        Gridemployee.DataSource = tabemployee;
        Gridemployee.DataBind();




    }



    protected void btnShow_Click(object sender, EventArgs e)
    {


        SqlDataAdapter adpoil_of_branch = new SqlDataAdapter("select pay_process.price as PayPrice , bottle.name as bottleName , pay_process.Quantity_of_oil, oil.name as oilName ,client.clientName , invoice.DateInvoice ,invoice.Id as #iDinVoice ,branch.Name as BranchName , employee.Name as EmployeeName  from employee , branch, oil_of_branch, invoice, bottle, oil, client, pay_process, bottleOfBranch where invoice.Id = pay_process.invoice_id and(oil.Id = oil_of_branch.id_oil and   pay_process.oil_id = oil_of_branch.Id) and(bottle.Id = bottleOfBranch.bottleId and pay_process.bottle_id = bottleOfBranch.Id) and employee.Id = invoice.seller_id  and client.Id = invoice.client_id and invoice.bransh_id = branch.Id  and invoice.bransh_id = " + Session["branch_id"] + " and invoice.DateInvoice between '" + TextBoxDatetime.Text + "' and '" + TextBoxDatetime0.Text + "' ;", con);        
        DataTable taboil_of_branch = new DataTable();
        adpoil_of_branch.Fill(taboil_of_branch);
        GridViewOil.DataSource = taboil_of_branch;
        GridViewOil.DataBind();
        




    }
}