<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>


<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91%;
            height: 176px;
        }
        .auto-style2 {
            text-align: center;
            font-size: x-large;
            height: 47px;
            color:#AAFFFF;
        }
        .auto-style4 {
            text-align: center;
        }
        

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



        @media only screen and (max-width: 770px) {
            .subtitle {
                margin-top: 10%;
                font-weight: 100;
                font-size: 20px;
                color: #aff;
                text-shadow: 5px 5px 7px #477;
            }


            }


        .auto-style9 {
            width: 261px;
            height: 74px;
        }
        .auto-style10 {
            width: 326px;
            height: 74px;
        }
        .auto-style11 {
            height: 74px;
        }
        .auto-style12 {
            width: 261px;
            height: 67px;
        }
        .auto-style13 {
            width: 326px;
            height: 67px;
        }
        .auto-style14 {
            height: 67px;
        }


    </style>
</head>
<body>

    <h1 class="subtitle">PSM</h1>
    <p class="subtext"  > <samp class="subtextsamp" >P</samp>erfume<samp class="subtextsamp" > S</samp>tore <samp class="subtextsamp" >M</samp>anagement</p>
    <form id="form1" runat="server">
        <div class="auto-style4">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="3">login</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server" Text="Email" ForeColor="#AAFFFF"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="Textuser" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Textuser" CssClass="auto-style2" ErrorMessage="Please enter your password" ForeColor="#CC0000">Please enter your Email</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label3" runat="server" Text="passWord" ForeColor="#AAFFFF"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextPass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextPass" CssClass="auto-style2" ErrorMessage="Please enter your password" ForeColor="#CC0000">Please enter your password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                </table>
        </div>
        </div>
        <p class="prulogin" >
            <asp:Button ID="B1" runat="server" Height="28px" OnClick="Button1_Click" Text="login" Width="200px" BackColor="#AAFFFF" BorderColor="#AAFFFF" BorderStyle="Solid" Font-Names="Arial Black" />
        </p>
    </form>
    </body>
</html>

