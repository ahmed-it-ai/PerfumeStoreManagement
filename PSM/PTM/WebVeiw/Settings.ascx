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
        </style>
    <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style30">
                        settings</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style29">
                        <asp:DropDownList ID="ListBranch" runat="server" AutoPostBack="true"  BackColor="#AAFFFF" OnSelectedIndexChanged="ListBranch_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:Button ID="BtnAddNewBranch" runat="server" Height="29px" Text="ADD NEW Branch" Width="150px" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid" OnClick="BtnAddNewBranch_Click" />
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txtNewBranch" runat="server" BackColor="#AAFFFF"  MaxLength="17"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:Label ID="Label1" runat="server" Text="ادخل اسم الفرع "></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    





