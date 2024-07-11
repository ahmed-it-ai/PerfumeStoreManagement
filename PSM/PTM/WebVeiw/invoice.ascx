<%@ Control Language="C#" AutoEventWireup="true" CodeFile="invoice.ascx.cs" Inherits="WebVeiw_AddBottle" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<script>
  function printpage() {

   var getpanel = document.getElementById("<%= Panel1.ClientID%>");
   var MainWindow = window.open('', '', 'height=500,width=800');
   MainWindow.document.write('<html><head><title>Print Page</title>');
   MainWindow.document.write('</head><body>');
   MainWindow.document.write(getpanel.innerHTML);
   MainWindow.document.write('</body></html>');
   MainWindow.document.close();
   setTimeout(function () {
    MainWindow.print();
   }, 5);
   return false;

  }
</script>

<style type="text/css">


       
        .subtextsamp {
		  text-align: center;
		  margin-top:2%;
		  font-family: 'Orbitron', sans-serif;
		  font-weight: 100;
		  font-size: 25px;
		  color: #aff;
		  text-shadow: 5px 5px 7px #477;
		  text-transform: uppercase;
		  letter-spacing: 0.5em;
		  text-align: center;
		}



		.auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        text-align: center;
        width: 168px;
    }
        .auto-style28 {
            margin-left: 61px;
        }
    .auto-style29 {
        text-align: center;
        width: 98px;
    }
    *{box-sizing:border-box}
    

        .auto-style30 {
        width: 98px;
    }
    

        </style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style30">
            <asp:Label ID="Label15" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="Invoice" Width="207px"></asp:Label>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="3">&nbsp;</td>
        <td class="auto-style2">
                        &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Label ID="Label13" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="Customar Name"></asp:Label>
        </td>
        <td colspan="2">
                        <asp:DropDownList ID="ListOfBottleName0" CssClass="list" runat="server"  BackColor="#AAFFFF" OnSelectedIndexChanged="ListBranch_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="3">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="3">
            <asp:Label ID="Label14" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="Product Name"></asp:Label>
        &nbsp;</td>
        <td colspan="2">
                        <asp:DropDownList ID="ListOfBottleName" CssClass="list" runat="server"  BackColor="#AAFFFF" OnSelectedIndexChanged="ListBranch_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="3">
            <asp:TextBox ID="TextBoxDatetime3" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
        </td>
        <td class="auto-style2">


            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="3">
            <asp:Button ID="Button5" runat="server" BackColor="#AAFFFF" BorderStyle="None" OnClick="Button5_Click" Text="Add" />
        </td>
        <td class="auto-style2">


            <asp:Button ID="Button6" runat="server" BackColor="#AAFFFF" BorderStyle="None"  OnClientClick="return printpage();" Text="Print Rebort " />
        
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="3">


            

                <br />
                <br />
                <br />
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView ID="GridViewBottle" runat="server" CellPadding="4" CssClass="auto-style28" ForeColor="#333333" GridLines="None" Width="463px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

            </asp:Panel>
        
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="3">


            &nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>

