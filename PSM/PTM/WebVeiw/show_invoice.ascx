<%@ Control Language="C#" AutoEventWireup="true" CodeFile="show_invoice.ascx.cs" Inherits="show_invoice" %>
<script>
  function printpage() {
   var getpanel = document.getElementById("<%= Panel1.ClientID%>");
   var MainWindow = window.open('', '', 'height=500,width=800');
   MainWindow.document.write('<html><head><title>Print Page</title>');
   MainWindow.document.write('<h1 class="subtitle">PSM</h1> <p> Perfume Store Management</p>');
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
            border-style: solid;
            border-width: 1px;
        }
        .auto-style18 {
            text-align: center;
            height: 35px;
        }
        .auto-style17 {
            text-align: center;
            width: 262px;
            height: 35px;
        }
        .auto-style28 {
            margin-left: 61px;
        }
    .auto-style29 {
        text-align: center;
        height: 35px;
        width: 581px;
    }
*{box-sizing:border-box}
        </style>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="Button3" runat="server" BackColor="#AAFFFF" BorderStyle="None" OnClick="Button3_Click" Text="show all invoice" />
                    </td>
                    <td class="auto-style29">
                        <asp:Button ID="Button4" runat="server" BackColor="#AAFFFF" BorderStyle="None" OnClick="Button4_Click" Text="show in thes date" />
                    </td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBoxDatetime" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                        <asp:TextBox ID="TextBoxDatetime0" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="Button6" runat="server" BackColor="#AAFFFF" BorderStyle="None" Text="show ending invoice" OnClick="Button6_Click" />
                    </td>
                    <td class="auto-style29">


            <asp:Button ID="Button7" runat="server" BackColor="#AAFFFF" BorderStyle="None"  OnClientClick="return printpage();" Text="Print Rebort " />
        
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">

                         <asp:Panel ID="Panel1" runat="server">

        <asp:GridView ID="GridViewinvoice" runat="server" CellPadding="4" CssClass="auto-style28" ForeColor="#333333" GridLines="None" Width="463px" >
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
                             
                             <br />
                             <asp:GridView ID="GridViewInvoice0" runat="server" CellPadding="4" CssClass="auto-style28" ForeColor="#333333" GridLines="None" Visible="False" Width="463px">
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
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        </td>
                    <td class="auto-style29">
                        <asp:Button ID="Button5" runat="server" BackColor="#AAFFFF" BorderStyle="None"  Text="clean" />
                    </td>
                    <td class="auto-style18">
                        </td>
                </tr>
            </table>
        </div>
    




