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
                        <asp:Label ID="Label9" runat="server" ForeColor="#AAFFFF" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txthname" runat="server" BackColor="#AAFFFF"  MaxLength="20"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label10" runat="server" ForeColor="#AAFFFF" Text="Jope"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:DropDownList ID="listjop" runat="server" AutoPostBack="true"  BackColor="#AAFFFF" CssClass="list">
                            <asp:ListItem Value="seller            "></asp:ListItem>
                            <asp:ListItem>manager           </asp:ListItem>
                            <asp:ListItem>ceo               </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label11" runat="server" ForeColor="#AAFFFF" Text="Date"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="Txtdate" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label12" runat="server" ForeColor="#AAFFFF" Text="Branch"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:DropDownList ID="listbranch" runat="server" AutoPostBack="True"  BackColor="#AAFFFF" CssClass="list" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PTMDataBaseConnectionString %>" SelectCommand="SELECT [Id], [Name] FROM [branch]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label15" runat="server" ForeColor="#AAFFFF" Text="salary"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txtsalary" runat="server" BackColor="#AAFFFF"  MaxLength="3" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label13" runat="server" ForeColor="#AAFFFF" Text="passworde"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txtpass" runat="server" BackColor="#AAFFFF"  MaxLength="20"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Label ID="Label14" runat="server" ForeColor="#AAFFFF" Text="User Name"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txtusername" runat="server" BackColor="#AAFFFF"  MaxLength="20"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:Button ID="Button3" runat="server" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid"  Text="Add" OnClick="Button3_Click" />
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
    