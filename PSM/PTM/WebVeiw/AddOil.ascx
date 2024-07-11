<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddOil.ascx.cs" Inherits="WebVeiw_AddOil" %>


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




		.auto-style1 {
        width: 100%;
    }
    *{box-sizing:border-box}
    

        .auto-style2 {
        text-align: center;
    }
    .auto-style29 {
        text-align: center;
        width: 98px;
    }
    .auto-style3 {
        text-align: center;
        width: 168px;
    }
        .auto-style28 {
            margin-left: 61px;
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
        <td class="auto-style2">
                        &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">
            <asp:Label ID="Label13" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="Count Of Oil"></asp:Label>
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
            <asp:Label ID="Label14" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="oil Name "></asp:Label>
        &nbsp;</td>
        <td class="auto-style2" colspan="2">
                        
            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#AAFFFF" CssClass="list">
            </asp:DropDownList>
                        
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style29" colspan="2">
       
            <asp:Button ID="Button7" runat="server" BackColor="#AAFFFF" BorderStyle="None" OnClick="Button7_Click" style="height: 25px" Text="ADD" />
       
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


