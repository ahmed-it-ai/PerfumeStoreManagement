<%@ Control Language="C#" AutoEventWireup="true" CodeFile="oil.ascx.cs" Inherits="WebVeiw_oil" %>
<style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style17 {
            text-align: center;
            width: 262px;
            height: 35px;
        }
        .auto-style29 {
        text-align: center;
        height: 35px;
        width: 585px;
    }
        .auto-style18 {
            text-align: center;
            height: 35px;
        }
        .auto-style28 {
            margin-left: 61px;
        }
    *{box-sizing:border-box}    
        </style>
    <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <strong>
            <asp:Label ID="Label16" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="Oil list" Font-Size="X-Large" Height="33px" Width="167px"></asp:Label>
                        </strong></td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
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
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
            </table>
        </div>