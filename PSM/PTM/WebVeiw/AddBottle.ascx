<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddBottle.ascx.cs" Inherits="WebVeiw_AddBottle" %>

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
    </style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">
            <asp:Label ID="Label13" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="Count Of Bottle"></asp:Label>
        </td>
        <td class="auto-style2" colspan="2">
            <asp:TextBox ID="TextCount" runat="server" BackColor="#AAFFFF"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">
            <asp:Label ID="Label14" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="Bottle Name"></asp:Label>
        </td>
        <td class="auto-style2" colspan="2">
            <asp:TextBox ID="TextBottleName" runat="server" BackColor="#AAFFFF"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="2">
            <asp:Button ID="Button5" runat="server" BackColor="#AAFFFF" BorderStyle="None" OnClick="Button5_Click" Text="Add" />
        </td>
        <td class="auto-style2">


            <asp:Button ID="Button6" runat="server" BackColor="#AAFFFF" BorderStyle="None"  OnClientClick="return printpage();" Text="Print Rebort " />
        
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="2">


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
        <td class="auto-style29" colspan="2">


            &nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>

