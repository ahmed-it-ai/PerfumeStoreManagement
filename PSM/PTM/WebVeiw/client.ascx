<%@ Control Language="C#" AutoEventWireup="true" CodeFile="client.ascx.cs" Inherits="WebVeiw_client" %>
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
        width: 507px;
    }
        .auto-style18 {
        text-align: center;
        height: 35px;
        width: 421px;
    }
        .auto-style28 {
            margin-left: 61px;
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



		</style>



        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="Button3" runat="server" BackColor="#AAFFFF" BorderStyle="None" OnClick="Button3_Click" Text="Add New client" />
                    </td>
                    <td class="auto-style29">
                        <br />
                        <asp:Label ID="Labelc1" runat="server" ForeColor="#AAFFFF" Text="Name" CssClass="subtextsamp"></asp:Label>
                        <asp:TextBox ID="TextName" runat="server" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="Labelc2" runat="server" ForeColor="#AAFFFF" Text="phone" CssClass="subtextsamp"></asp:Label>
                        <asp:TextBox ID="Textphone" runat="server" BackColor="#AAFFFF" Width="145px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="Button2" runat="server" BackColor="#AAFFFF" BorderStyle="None" OnClick="Button2_Click" Text="Refresh" />
                    </td>
                    <td class="auto-style29">
                        <asp:Label ID="Labelc3" runat="server" ForeColor="#AAFFFF" Text="Address" CssClass="subtextsamp"></asp:Label>
                        <asp:TextBox ID="Textclient" runat="server" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
        <asp:GridView ID="GridViewclient" runat="server" CellPadding="4" CssClass="auto-style28" ForeColor="#333333" GridLines="None" Width="463px" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="clientName" HeaderText="Client " SortExpression="clientName" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            </Columns>
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
    




