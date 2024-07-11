<%@ Control Language="C#" AutoEventWireup="true" CodeFile="prodact.ascx.cs" Inherits="WebVeiw_analysis" %>



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
        height: 35px;
        width: 692px;
        text-align: center;
    }
    .auto-style36 {
        width: 692px;
        text-align: center;
    }
        </style>
    <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style34" colspan="4">
                        <asp:Label ID="Label3" runat="server" ForeColor="#AAFFFF" Text="prodact" CssClass="subtextsamp"></asp:Label>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">

                    

                         <asp:Label ID="sumtotale0" runat="server" ForeColor="#AAFFFF" CssClass="subtextsamp">Name</asp:Label>
                    </td>
                    <td class="auto-style34" colspan="2">
                        <asp:TextBox ID="TextBoxDatetime1" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style34" colspan="2">
                        </td>
                    <td class="auto-style18">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style35">

                    

                         <asp:Label ID="sumtotale1" runat="server" ForeColor="#AAFFFF" CssClass="subtextsamp">price</asp:Label>
                    </td>
                    <td class="auto-style34" colspan="2">
                        <asp:TextBox ID="TextBoxDatetime2" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style34" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">

                    

                         <asp:Label ID="sumtotale2" runat="server" ForeColor="#AAFFFF" CssClass="subtextsamp">QTY</asp:Label>
                    </td>
                    <td class="auto-style34" colspan="2">
                        <asp:TextBox ID="TextBoxDatetime3" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style34" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36" rowspan="2">

                    

                         <asp:Label ID="sumtotale3" runat="server" ForeColor="#AAFFFF" CssClass="subtextsamp">`</asp:Label>
                    </td>
                    <td class="auto-style32" colspan="2">
                        <asp:Label ID="Label4" runat="server" CssClass="subtextsamp" Text="From"></asp:Label>
                        <asp:TextBox ID="TextBoxDatetime" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style32" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style32">
                        <asp:Label ID="Label5" runat="server" CssClass="subtextsamp" Text="To"></asp:Label>
                        <asp:TextBox ID="TextBoxDatetime0" runat="server"  TextMode="Date" BackColor="#AAFFFF"></asp:TextBox>
                    </td>
                    <td class="auto-style32">


                        &nbsp;</td>
                    <td class="auto-style32">
                        <asp:Button ID="btnShow" runat="server" BackColor="#AAFFFF" BorderStyle="None" OnClick="btnShow_Click" Text="ADD" />
                    </td>
                    <td class="auto-style31">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">


            <asp:Button ID="Button6" runat="server" BackColor="#AAFFFF" BorderStyle="None"  OnClientClick="return printpage();" Text="Print Rebort " />
        
                    </td>
                    <td class="auto-style32">
                        
                    </td>
                    <td class="auto-style32">
                        &nbsp;</td>
                    <td class="auto-style32">
                        &nbsp;</td>
                    <td class="auto-style31">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                   
                   
                    <td class="auto-style34" colspan="4">

                         <asp:Panel ID="Panel1" runat="server">

                    

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
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style34" colspan="4">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td class="auto-style34" colspan="4">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
            </table>

        </div>
    




