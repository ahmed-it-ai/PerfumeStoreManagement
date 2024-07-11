<%@ Control Language="C#" AutoEventWireup="true" CodeFile="analysis.ascx.cs" Inherits="WebVeiw_analysis" %>
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
            border-style: solid;
            border-width: 1px;
        }
        .auto-style18 {
        height: 35px;
    }        
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
       *{box-sizing:border-box}
        .auto-style28 {
            margin-left: 61px;
        }
    .auto-style31 {
        height: 35px;
        width: 340px;
    }
    .auto-style32 {
        height: 35px;
        width: 585px;
    }
    .auto-style33 {
        height: 35px;
        width: 692px;
    }
    .auto-style34 {
        text-align: center;
        height: 35px;
        width: 585px;
    }
        .auto-style35 {
        text-align: center;
        height: 35px;
    }
        </style>
    <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style34" colspan="6">
                        <asp:Label ID="Label3" runat="server" ForeColor="#AAFFFF" Text="Analysis" CssClass="subtextsamp"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2"   >
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2"   >
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                <asp:Chart ID="Chart_Bottle" runat="server" style=" border-radius: 22px;" CssClass="anal"  >
                    <series>
                        <asp:Series Name="Series1" YValuesPerPoint="4" ChartType="Pie">
                        </asp:Series>                         
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                    </td>
                    <td class="auto-style35" colspan="2"   >
                <asp:Chart ID="Chart_oil" runat="server" style=" border-radius: 22px;" >
                    <series>
                        <asp:Series Name="Series1" YValuesPerPoint="4">
                        </asp:Series>                         
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                    </td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2"   >
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
        <asp:GridView ID="GridBottle" runat="server" CellPadding="4"  style=" border-radius: 22px;" CssClass="auto-style28 anal" ForeColor="#333333" GridLines="None" Width="373px">
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

                    </td>
                    <td class="auto-style35" colspan="2">
        <asp:GridView ID="GridOil" runat="server" CellPadding="4"  style=" border-radius: 22px;" CssClass="auto-style28" ForeColor="#333333" GridLines="None" Width="373px">
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

                    </td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                <asp:Chart ID="Chart_clinet" runat="server" style=" border-radius: 22px;" CssClass="anal"  >
                    <series>
                        <asp:Series Name="Series1" YValuesPerPoint="4" ChartType="Spline">
                        </asp:Series>                         
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                    </td>
                    <td class="auto-style35" colspan="2">
                <asp:Chart ID="Chart_branch" runat="server" style=" border-radius: 22px;" CssClass="anal"  >
                    <series>
                        <asp:Series Name="Series1" YValuesPerPoint="4" ChartType="Pie">
                        </asp:Series>                         
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                    </td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
        <asp:GridView ID="Gridclient" runat="server" CellPadding="4"  style=" border-radius: 22px;" CssClass="auto-style28 anal" ForeColor="#333333" GridLines="None" Width="373px">
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

                    </td>
                    <td class="auto-style35" colspan="2">
        <asp:GridView ID="Gridbranch" runat="server" CellPadding="4"  style=" border-radius: 22px;" CssClass="auto-style28 anal" ForeColor="#333333" GridLines="None" Width="373px">
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

                    </td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                <asp:Chart ID="Chart_employee" runat="server" style=" border-radius: 22px;" CssClass="anal"  >
                    <series>
                        <asp:Series Name="Series1" YValuesPerPoint="4">
                        </asp:Series>                         
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                    </td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
        <asp:GridView ID="Gridemployee" runat="server" CellPadding="4"  style=" border-radius: 22px;" CssClass="auto-style28 anal" ForeColor="#333333" GridLines="None" Width="373px">
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

                    </td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style35" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style32" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style32" colspan="2">
                        <asp:Label ID="Label4" runat="server" CssClass="subtextsamp" Text="From"></asp:Label>
                        <asp:TextBox ID="TextBoxDatetime" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style32" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style32" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style32" colspan="2">
                        <asp:Label ID="Label5" runat="server" CssClass="subtextsamp" Text="To"></asp:Label>
                        <asp:TextBox ID="TextBoxDatetime0" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style32" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style32">


            <asp:Button ID="Button6" runat="server" BackColor="#AAFFFF" BorderStyle="None"  OnClientClick="return printpage();" Text="Print Rebort " />
        
                    </td>
                    <td class="auto-style32" colspan="2">


                        <asp:Button ID="btnShow" runat="server" BackColor="#AAFFFF" BorderStyle="None" OnClick="btnShow_Click" Text="Show Between Thes Date" />
        
                    </td>
                    <td class="auto-style32" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style31">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style32">
                        
                    </td>
                    <td class="auto-style32" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style32" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style31">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                   
                   
                    <td class="auto-style34" colspan="6">
                         <asp:Panel ID="Panel1" runat="server">                   
                         <asp:Label ID="sumtotale" runat="server" ForeColor="#AAFFFF" CssClass="subtextsamp"></asp:Label>
        <asp:GridView ID="GridViewOil" runat="server" CellPadding="4" CssClass="auto-style28" ForeColor="#333333" GridLines="None" Width="463px">
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
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style34" colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style34" colspan="6">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
   
