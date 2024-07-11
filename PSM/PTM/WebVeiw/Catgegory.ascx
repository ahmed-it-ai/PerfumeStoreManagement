<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Catgegory.ascx.cs" Inherits="WebVeiw_bottle" %>


<style type="text/css">






        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
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
        width: 585px;
    }
</style>



        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="Labelc1" runat="server" CssClass="subtextsamp" ForeColor="#AAFFFF" Text="ادارة الاقسام"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">

                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="Textphone" runat="server" BackColor="#AAFFFF" Width="145px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
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
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
            </table>

        </div>
    






