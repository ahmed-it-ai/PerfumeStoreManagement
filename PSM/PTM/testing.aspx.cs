using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class testing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void aaa()
    {
        AddBottle.Visible = false;
        show_invoice.Visible = false;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        aaa();
        show_invoice.Visible = true;


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        aaa();
        AddBottle.Visible = true;

    }
}