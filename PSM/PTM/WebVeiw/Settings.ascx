<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Settings.ascx.cs" Inherits="WebVeiw_Settings" %>
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
        width: 320px;
    }
        .auto-style18 {
            text-align: center;
            height: 35px;
        }
        a{color:#0d6efd;text-decoration:underline}*{box-sizing:border-box}   
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
		.auto-style30 {
        text-align: center;
        height: 35px;
        width: 320px;
        font-family: Orbitron, sans-serif;
        font-weight: 100;
        font-size: 25px;
        color: #AAFFFF;
        text-transform: uppercase;
    }
        .auto-style31 {
        height: 35px;
        width: 320px;
    }
        </style>
    <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        &nbsp;&nbsp;</td>
                    <td class="auto-style30">
                        &nbsp;Branch
                        settings</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:DropDownList ID="ListBranch" runat="server" AutoPostBack="true"  BackColor="#AAFFFF" OnSelectedIndexChanged="ListBranch_SelectedIndexChanged" CssClass=" list">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="BtnAddNewBranch" runat="server" Text="ADD NEW Branch" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid" OnClick="BtnAddNewBranch_Click" />
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txtNewBranch" runat="server" BackColor="#AAFFFF"  MaxLength="17"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="Label1" runat="server" Text="ادخل اسم الفرع " CssClass="auto-style30" ForeColor="#CC0000" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
&nbsp;<div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style30">
                        Bottle
                        settings</td>
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
                        <asp:Button ID="BtnAddNewBottle" runat="server" Text="ADD NEW Bottle" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid" OnClick="BtnAddNewBottle_Click" />
                    </td>
                    <td class="auto-style31">
            <asp:Label ID="Label13" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="Name "></asp:Label>
                        <asp:TextBox ID="txtBottleName" runat="server" BackColor="#AAFFFF"  MaxLength="17"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
            <asp:Label ID="Label14" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="price"></asp:Label>
                        <asp:TextBox ID="txtBottlePrice" runat="server" BackColor="#AAFFFF"  MaxLength="4" TextMode="Number"></asp:TextBox>
                    </td>
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
                        <asp:Button ID="BtnAddNewBranch1" runat="server" Text="Edit price" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid" OnClick="BtnAddNewBranch1_Click" />
                    </td>
                    <td class="auto-style29">
                        <asp:DropDownList ID="Listbottle" runat="server" AutoPostBack="True"  BackColor="#AAFFFF" OnSelectedIndexChanged="ListBranch0_SelectedIndexChanged" CssClass=" list">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style18">
            <asp:Label ID="Label15" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="price"></asp:Label>
                        <asp:TextBox ID="txtPriceUpdate" runat="server" BackColor="#AAFFFF"  MaxLength="17"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
<p>
    &nbsp;</p>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style30">
                        OIL
                        settings</td>
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
                        <asp:Button ID="BtnAddNewOil" runat="server" Text="ADD NEW Bottle" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid" OnClick="BtnAddNewOil_Click" />
                    </td>
                    <td class="auto-style31">
            <asp:Label ID="Label16" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="Name "></asp:Label>
                        <asp:TextBox ID="txtOilName" runat="server" BackColor="#AAFFFF"  MaxLength="17"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
            <asp:Label ID="Label17" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="price"></asp:Label>
                        <asp:TextBox ID="txtOilPrice" runat="server" BackColor="#AAFFFF"  MaxLength="4" TextMode="Number"></asp:TextBox>
                    </td>
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
                        <asp:Button ID="BtnEditOilPrice" runat="server" Text="Edit price" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid" OnClick="BtnEditOilPrice_Click" />
                    </td>
                    <td class="auto-style29">
                        <asp:DropDownList ID="ListOil" runat="server" AutoPostBack="True"  BackColor="#AAFFFF" OnSelectedIndexChanged="ListOil_SelectedIndexChanged" CssClass=" list">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style18">
            <asp:Label ID="Label18" runat="server" BorderStyle="None" ForeColor="#AAFFFF" Text="price"></asp:Label>
                        <asp:TextBox ID="txtOilPriceUpdate" runat="server" BackColor="#AAFFFF"  MaxLength="17"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
            </table>      
  

