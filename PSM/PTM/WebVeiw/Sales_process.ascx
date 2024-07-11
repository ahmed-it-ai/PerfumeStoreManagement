<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Sales_process.ascx.cs" Inherits="Sales_process" %>



    <style type="text/css">



        
        body{
		   margin: 0;
		   padding: 0;
	       background-color: #cccccc;
           background-image: radial-gradient(#2061A7, #001E3D, #06121F);
           background-repeat: no-repeat;
           background-size: 100% 10000px;
		}
		.subtitle {
		  text-align: center;
		  margin-top:12%;
		  font-family: 'Orbitron', sans-serif;
		  font-weight: 100;
		  font-size: 40px;
		  color: #aff;
		  text-shadow: 5px 5px 7px #477;
		  text-transform: uppercase;
		  letter-spacing: 1em;
		  text-align: center;
		  animation: glitch-2 3s 3.02s infinite;
		}


        .subtext {
		  text-align: center;
		  margin-top:2%;
		  font-family: 'Orbitron', sans-serif;
		  font-weight: 100;
		  font-size: 15px;
		  color: #aff;
		  
		  text-transform: uppercase;
		  letter-spacing: 0.3em;
		  text-align: center;
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



		@keyframes glitch-2 {
		  10%{
		    transform: rotateX(10deg) skewX(70deg);
		  }
		  20%{
		    transform: rotateX(0deg) skewX(0deg);
		  }
		}	    
		
		.pru{
		  text-align: center;
		  margin-top:100px; 
		  color: #8bb;
		  font-size: 50px;	            
		}


        .prulogin{
		  text-align: center;
		  margin-top:100px; 
		  color: #8bb;
		  font-size: 20px;	            
		}





        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
            height: 17px;
        }
        .auto-style9 {
            height: 10px;
            width: 300px;
            text-align: center;
        }
        .auto-style10 {
            height: 17px;
            width: 300px;
            text-align: center;
        }
        .auto-style11 {
            text-align: center;
            width: 300px;
        }
        .auto-style12 {
            text-align: center;
            height: 10px;
        }
        .auto-style17 {
            text-align: center;
            width: 262px;
            height: 35px;
        }
        .auto-style18 {
            text-align: center;
            height: 35px;
        }
        .auto-style19 {
            height: 10px;
            width: 262px;
            text-align: center;
        }
        .auto-style20 {
            height: 17px;
            width: 262px;
            text-align: center;
        }
        .auto-style21 {
            text-align: center;
            width: 262px;
        }
        .auto-style22 {
            text-align: center;
            width: 262px;
            height: 6px;
        }
        .auto-style23 {
            text-align: center;
            width: 300px;
            height: 6px;
        }
        .auto-style24 {
            text-align: center;
            height: 6px;
        }
        .auto-style25 {
            text-align: center;
            width: 262px;
            height: 26px;
        }
        .auto-style26 {
            text-align: center;
            width: 300px;
            height: 26px;
        }
        .auto-style27 {
            text-align: center;
            height: 26px;
        }
        .auto-style28 {
            margin-left: 61px;
        }
        .auto-style29 {
            text-align: center;
            height: 35px;
            width: 300px;
        }
        .auto-style30 {
            text-align: center;
            width: 262px;
            height: 29px;
        }
        .auto-style31 {
            text-align: center;
            width: 300px;
            height: 29px;
        }
        .auto-style32 {
            text-align: center;
            height: 29px;
        }
    </style>



        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="LabelTime" runat="server" ForeColor="#AAFFFF" Text="Date : " CssClass="subtextsamp"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="LabelBranchName" runat="server" ForeColor="#AAFFFF" Text="Branch Name :" CssClass="subtextsamp"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" ForeColor="#AAFFFF" Text="Employee Name :" CssClass="subtextsamp"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="LabelEmpName" runat="server" ForeColor="#AAFFFF" Text="Name...." CssClass="subtextsamp"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:Label ID="Label9" runat="server" ForeColor="#AAFFFF" Text="Oil type"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:DropDownList ID="TetOilType" runat="server" AutoPostBack="true"  BackColor="#AAFFFF" OnSelectedIndexChanged="TetOilType_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="Not available in this branch" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25"></td>
                    <td class="auto-style26"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:Label ID="Label10" runat="server" ForeColor="#AAFFFF" Text="Quantity of oil"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtQuanttityOfOil" runat="server" BackColor="#AAFFFF"  MaxLength="3" TextMode="Number"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style23"></td>
                    <td class="auto-style24"></td>
                    <td class="auto-style24"></td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Label ID="Label11" runat="server" ForeColor="#AAFFFF" Text="Bottle type"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:DropDownList ID="txtBottleType" runat="server" BackColor="#AAFFFF" OnSelectedIndexChanged="txtBottleType_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style32">
                        <asp:Label ID="Label14" runat="server" ForeColor="Red" Text="Not available in this branch" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style32"></td>
                </tr>
                <tr>
                    <td class="auto-style21">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style2"><asp:Label ID="labelCustomerName0" runat="server" ForeColor="#AAFFFF" Text="Total Cash"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextTotalCash" runat="server" BackColor="#AAFFFF">0</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21">
                        <asp:Label ID="Label12" runat="server" ForeColor="#AAFFFF" Text="Cash"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtCash" runat="server" BackColor="#AAFFFF" Visible="False" TextMode="Number"  AutoPostBack="true"  ReadOnly="True" Width="114px">0</asp:TextBox>
                    </td>
                    <td class="auto-style2"><asp:Label ID="labelCustomerName" runat="server" ForeColor="#AAFFFF" Text="customer name"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextCustomerName" runat="server" BackColor="#AAFFFF" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18" colspan="2">
                        <asp:Button ID="Button3" runat="server" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid"  Text="Start Sale " OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style18">
                        <asp:Button ID="Button1" runat="server" Height="29px" Text="End sale" Width="105px" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid"  Visible="False" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td class="auto-style18" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style29">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18" colspan="2">
                        <asp:Button ID="Button4" runat="server" BackColor="#FF3300" BorderStyle="Solid"  Text="cancel" OnClick="Button4_Click" style="height: 29px" />
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style18" colspan="2">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" CssClass="auto-style28" ForeColor="#333333" GridLines="None" Width="463px">
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
    



