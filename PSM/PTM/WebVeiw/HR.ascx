<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HR.ascx.cs" Inherits="WebVeiw_HR" %>
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
        </style>
<p>
&nbsp;</p>
    <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="Label3" runat="server" ForeColor="#AAFFFF" Text="HR" CssClass="subtextsamp"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Labelc1" runat="server" ForeColor="#AAFFFF" Text="Name" CssClass="subtextsamp"></asp:Label>
                        </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="Textclient" runat="server" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Labelc2" runat="server" ForeColor="#AAFFFF" Text="Address" CssClass="subtextsamp"></asp:Label>
                        </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="Textclient0" runat="server" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Labelc3" runat="server" ForeColor="#AAFFFF" Text="phone" CssClass="subtextsamp"></asp:Label>
                        </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="Textclient1" runat="server" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Labelc4" runat="server" ForeColor="#AAFFFF" Text="Email" CssClass="subtextsamp"></asp:Label>
                        </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="Textclient2" runat="server" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Labelc5" runat="server" ForeColor="#AAFFFF" Text="Gender" CssClass="subtextsamp"></asp:Label>
                        </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="Textclient3" runat="server" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Labelc7" runat="server" ForeColor="#AAFFFF" Text="salary" CssClass="subtextsamp"></asp:Label>
                        </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="Textclient4" runat="server" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Labelc6" runat="server" ForeColor="#AAFFFF" Text="Bdate" CssClass="subtextsamp"></asp:Label>
                        </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="Textclient5" runat="server" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        
                    </td>
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
    





