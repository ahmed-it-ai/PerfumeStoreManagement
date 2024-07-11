using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sales_process : System.Web.UI.UserControl
{
    SqlConnection sqlcon = new SqlConnection(sqlsrt.ssqlsrt());
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["EmpName"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if (!Page.IsPostBack)
            {


                sqlcon.Open();
                SqlDataAdapter adp = new SqlDataAdapter("select Name from branch where Id= '" + Session["branch_id"] + "'; ", sqlcon);
                DataTable tab = new DataTable();
                adp.Fill(tab);
                var info = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
                DateTimeOffset localServerTime = DateTimeOffset.Now;
                DateTimeOffset localTime = TimeZoneInfo.ConvertTime(localServerTime, info);                
                LabelTime.Text += localTime.ToString("MM/dd/yyyy h:mm tt");
                LabelEmpName.Text = (string)Session["EmpName"];
                LabelBranchName.Text += tab.Rows[0][0];
                clearall();
            }
       
        }

    } 
    
    public  int gitCach( int oilprice, int Quantity_of_oil , int Bottle_of_price)
    {
        int Oprice = oilprice * Quantity_of_oil;
        Oprice += Bottle_of_price;
        return  Oprice;
    }
    public void clearall()
    {

        ViewState["tab"] = null;
        Button3.Text = "Start Sale ";

        TetOilType.Visible = false;
        TetOilType.DataBind();
        TextCustomerName.Visible = false;
        TextCustomerName.Text = "";
        txtCash.Visible = false;
        txtCash.Text = "";
        txtQuanttityOfOil.Visible = false;
        txtQuanttityOfOil.Text="";
        TextTotalCash.Text ="0";
        txtBottleType.Visible = false;
        txtBottleType.DataBind();

        Button1.Visible = false;
        GridView1.DataSource = null;
        GridView1.DataBind();


    }

   
    protected void Button3_Click(object sender, EventArgs e)
    {


        if (Button3.Text == "Start Sale ")
        {
            Button3.Text += "ADD New Bottle";



            SqlDataAdapter adb = new SqlDataAdapter("select id , name from oil ; ", sqlcon);
            DataTable taboildrop = new DataTable();
            adb.Fill(taboildrop);            
            TetOilType.DataSource = taboildrop;
            TetOilType.DataBind();
            TetOilType.DataTextField = "name";
            TetOilType.DataValueField = "id";
            TetOilType.DataBind();
            TetOilType.Visible = true;
            //to fill id from oil table in value field and fill name from oil table in text field 

            SqlDataAdapter adbbottledrop = new SqlDataAdapter("select id , name from bottle ; ", sqlcon);
            DataTable tabbottledrop = new DataTable();
            adbbottledrop.Fill(tabbottledrop);
            txtBottleType.DataSource = tabbottledrop;
            txtBottleType.DataBind();
            txtBottleType.DataTextField = "name";
            txtBottleType.DataValueField = "id";
            txtBottleType.DataBind();
            txtBottleType.Visible = true;
            //to fill id from bottle table in value field and fill name from bottle table in text field 

            TextCustomerName.Visible = true;
            txtCash.Visible = true;
            txtQuanttityOfOil.Visible = true;




        }
        else
        {
            Button1.Visible = true;
            DataTable tab = new DataTable();
            if (ViewState["tab"] == null)
            {
                tab.Columns.Add("oil");
                tab.Columns.Add("Quantity_of_oil");
                tab.Columns.Add("price");
                tab.Columns.Add("bottle_id");
            }
            else
            {
                tab = (DataTable)ViewState["tab"];
            }

            SqlDataAdapter adpOil = new SqlDataAdapter("select price from oil where name = '" + TetOilType.SelectedItem + "'; ", sqlcon);
            DataTable tabOil = new DataTable();
            adpOil.Fill(tabOil);
            int oilprice = (int)tabOil.Rows[0][0];
            //to get price from oil 
            SqlDataAdapter adpbottle = new SqlDataAdapter("select price from bottle where Name = '" + txtBottleType.SelectedItem + "'; ", sqlcon);
            DataTable tabbottle = new DataTable();
            adpbottle.Fill(tabbottle);
            int bottle = (int)tabbottle.Rows[0][0];
            ////to get bottle price from name 
            int m =  int.Parse(txtQuanttityOfOil.Text);
            int h = gitCach(oilprice, int.Parse(txtQuanttityOfOil.Text), bottle);
            txtCash.Text = h.ToString();
            int TotalCash = int.Parse(txtCash.Text);
            TotalCash += int.Parse(TextTotalCash.Text);
            TextTotalCash.Text = TotalCash.ToString();

            //txtCash.Text = ;/////////////////////
            object[] obg = { TetOilType.SelectedItem, txtQuanttityOfOil.Text, txtCash.Text, txtBottleType.SelectedItem };
            tab.Rows.Add(obg);
            ViewState["tab"] = tab;
            GridView1.DataSource = tab;
            GridView1.DataBind();
        }
    }

    

    protected void Button1_Click(object sender, EventArgs e)
    {
         

        sqlcon.Open();

        SqlDataAdapter adpClient = new SqlDataAdapter("select Id from client where clientName = N'" + TextCustomerName.Text + "'; ", sqlcon);
        DataTable tabClient = new DataTable();
        adpClient.Fill(tabClient);
        //to get client id         
        var info = TimeZoneInfo.FindSystemTimeZoneById("Egypt Standard Time");
        DateTimeOffset localServerTime = DateTimeOffset.Now;
        DateTimeOffset localTime = TimeZoneInfo.ConvertTime(localServerTime, info);
        


        SqlCommand com = new SqlCommand("insert into invoice(  TotaleCash ,DateInvoice ,seller_id ,bransh_id,  client_id   ) values ( " + TextTotalCash.Text + " ,'" + localTime.ToString("MM/dd/yyyy h:mm tt") + "'," + Session["EmpId"] + "," + Session["branch_id"] + "," + tabClient.Rows[0][0] + ")", sqlcon);
        com.ExecuteNonQuery();
        //to insert invoice 

        SqlDataAdapter adpvoice = new SqlDataAdapter("select Id from invoice; ", sqlcon);
        DataTable tabinvoice = new DataTable();
        adpvoice.Fill(tabinvoice);        
        //to get ender id invoice


        DataTable tabgrid = new DataTable();
        tabgrid = (DataTable)ViewState["tab"];


        for (int x = 0; x <= tabgrid.Rows.Count - 1; x++)
        {


            SqlDataAdapter adpOil = new SqlDataAdapter("select Id from oil where Name = '" + tabgrid.Rows[x][0] + "'; ", sqlcon);
            DataTable tabOil = new DataTable();
            adpOil.Fill(tabOil);
            int oil = (int)tabOil.Rows[0][0];
            //to get oil id from name 
            SqlDataAdapter adpIdOil = new SqlDataAdapter("select Id from oil_of_branch where id_oil = " + oil + " and id_branch = " + Session["branch_id"] + " ; ", sqlcon);
            DataTable tabIdOil = new DataTable();
            adpIdOil.Fill(tabIdOil);
            //to get id oil id from oil id 

            SqlDataAdapter adpbottle = new SqlDataAdapter("select Id from bottle where Name = '" + tabgrid.Rows[x][3] + "'; ", sqlcon);
            DataTable tabbottle = new DataTable();
            adpbottle.Fill(tabbottle);
            int bottle = (int)tabbottle.Rows[0][0];
            ////to get bottle id from name 
            SqlDataAdapter adpIdbottle = new SqlDataAdapter("select Id from bottleOfBranch where bottleId = " + bottle + " and BranchId = " + Session["branch_id"] + " ; ", sqlcon);
            DataTable tabIdbottleId = new DataTable();
            adpIdbottle.Fill(tabIdbottleId);
            ////to get id bottle id from bottle           


            int oil_id = (int)tabIdOil.Rows[0][0];
            string Quantity_of_oil = (string)tabgrid.Rows[x][1];
            string price = (string)tabgrid.Rows[x][2];
            int invoice_id = (int)tabinvoice.Rows[(int)tabinvoice.Rows.Count - 1][0];
            int bottle_id = (int)tabIdbottleId.Rows[0][0];

            SqlCommand compay = new SqlCommand("insert into pay_process (oil_id,Quantity_of_oil,price,invoice_id,bottle_id) values (" + tabIdOil.Rows[0][0] + "," + Quantity_of_oil + "," + price + "," + invoice_id + "," + bottle_id + ");", sqlcon);
            compay.ExecuteNonQuery();


        }
        sqlcon.Close();

        clearall();
    }


    protected void Button4_Click(object sender, EventArgs e)
    {
        clearall();
    }

    protected void TetOilType_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter adb = new SqlDataAdapter("select weight from oil_of_branch where id_oil = " + TetOilType.SelectedValue+ " and id_branch = "+ Session["branch_id"] + " ; ", sqlcon);
        DataTable tab = new DataTable();
        adb.Fill(tab);
        if (tab.Rows.Count == 0)
        {
            txtQuanttityOfOil.Text = "0";
            Label13.Visible = true;
            Button3.Visible = false;

        }
        else 
        {        
            txtQuanttityOfOil.Text = tab.Rows[0][0].ToString();
            Label13.Visible = false;
            Button3.Visible = true;
        }
    }

    protected void txtBottleType_SelectedIndexChanged(object sender, EventArgs e)
    {



        SqlDataAdapter adb = new SqlDataAdapter("select CountOfBottle from bottleOfBranch where bottleId = " + txtBottleType.SelectedValue + " and BranchId = "+ Session["branch_id"] + "; ", sqlcon);
        DataTable tab = new DataTable();
        adb.Fill(tab);
        if (tab.Rows.Count == 0)
        {           
            Label14.Visible = true;
            Button3.Visible = false;
        }
        else
        {
            Label14.Visible = false;
            Button3.Visible = true;
        }

    }
}