<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ceo.aspx.cs" Inherits="ceo" %>



<%@ Register src="WebVeiw/HR.ascx" tagname="HR" tagprefix="uc5" %>
<%@ Register Src="~/WebVeiw/Catgegory.ascx" TagPrefix="uc5" TagName="Catgegory" %>












<%@ Register src="WebVeiw/client.ascx" tagname="client" tagprefix="uc1" %>
<%@ Register src="WebVeiw/invoice.ascx" tagname="invoice" tagprefix="uc2" %>
<%@ Register src="WebVeiw/prodact.ascx" tagname="prodact" tagprefix="uc3" %>












<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="style/bootstrap.min.css" rel="stylesheet">
    <link href="style/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
    <style type="text/css">

         .list{

             border:none;
              outline:none;  
              vertical-align:middle;
              position:relative;
              border-radius:22px;
              font-size: 1.5vw;
              height:2.5vw;
              border: none;   
              padding: 0px 20px;

        }



         input {
              border:none;
              outline:none;  
              vertical-align:middle;
              position:relative;
              border-radius:22px;
              font-size: 1.5vw;
              height:2.5vw;
              border: none;   
              padding: 0px 20px;

        }
    </style>

    <title>Hello, world!</title>
</head>
<body>

    <form id="form1" runat="server">

        <div class="main-container d-flex">
            <div class="sidebar" id="side_nav">
                <div class="header-box px-2 pt-3 pb-4 d-flex justify-content-between">
                    <h1 class="fs-4">
                        <span class="bg-white text-dark rounded shadow px-2 me-2">HM</span> <span class="text-white">Hyper Market  </span>
                    </h1>
                    <button class="btn d-md-none d-block close-btn px-1 py-0 text-white">
                        <i class="fal fa-stream"></i>
                    </button>
                </div>
                <ul class="">
                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"> <asp:Button ID="Button3" runat="server"  Text=" انشاء فاتوره " class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button3_Click" style=" font-size:1.3vw;" /></a></li>
                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"><asp:Button ID="Button4" runat="server"  Text="ادارة الاقسام" class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button4_Click"  /></a></li>
                </ul>
                <hr class="h-color mx-2">
                <ul class="">

                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"> <asp:Button ID="Button1" runat="server"  Text="ادارة المنتجات" class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button1_Click"  /></a></li>
                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"> <asp:Button ID="Button2" runat="server"  Text="العملاء" class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button2_Click"  /></a></li>
                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"> <asp:Button ID="Button6" runat="server"  Text="HR" class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button6_Click"  /></a></li>                                                                                  
                        </a></li>
                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"><i class="fas fa-sign-out-alt" style="  color:red"  ></i>
                        <asp:Button ID="Button5" runat="server"  Text="logout" BackColor="#001E3D" BorderStyle="None" ForeColor="Red" OnClick="Button5_Click" />
                        </a></li>
                    

                </ul>
            </div>
            <div class="content">
                <nav class="navbar navbar-expand-md navbar-dark bg-dark">
                    <div class="container-fluid">

                        <div class="d-flex justify-content-between d-md-none d-block">
                            <%--for mode data--%>

                        </div>

                        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent" >
                                                   
                    




                            <nav class="navbar bg-dark  border-body" data-bs-theme="dark">
                                <div class="container-fluid" data-bs-theme="dark" >

                                   
                                    <div class="collapse navbar-collapse" id="navbarSupportedContent"   >

                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">


                                            <li class="nav-item">
                                                <a class="nav-link disabled" aria-disabled="true" >
                                                    <asp:Label runat="server" Text="" ID="LabelTime"></asp:Label>
                                                </a>
                                            </li>
                                        </ul>
                                        
                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0" >
                                            <li class="nav-item">
                                                <a class="nav-link disabled" aria-disabled="true"><asp:Label runat="server" Text="Mrket" ID="Label1"></asp:Label></a></li>
                                        </ul>

                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0" >


                                            <li class="nav-item">
                                                <a class="nav-link disabled" aria-disabled="true"><asp:Label runat="server" Text="Employee Name:" ID="LabelEmpName"></asp:Label></a>
                                            </li>
                                        </ul>

                                        <p>
                                            &nbsp;</p>

                                    </div>
                                
                                </div>
                            </nav>






                        </div>
                    </div>
                </nav>

                <div class="dashboard-content px-3 pt-4">                        
                        

                    <uc3:prodact ID="prodact1" runat="server" Visible="False" />
                    <uc2:invoice ID="invoice1" runat="server" Visible="False" />
                    <uc1:client ID="client1" runat="server" Visible="False" />
                        

                    <uc5:HR ID="HR1" runat="server" Visible="False" />                        
                  
                    <uc5:Catgegory runat="server" id="Catgegory" Visible="False" />
                    
                             

                </div>
            </div>
        </div>


    </form>

</body>
</html>









               





