<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="manager" %>
<%@ Register Src="~/WebVeiw/Sales_process.ascx" TagPrefix="uc1" TagName="Sales_process" %>
<%@ Register Src="~/WebVeiw/show_invoice.ascx" TagPrefix="uc1" TagName="show_invoice" %>
<%@ Register Src="~/WebVeiw/oil.ascx" TagPrefix="uc1" TagName="oil" %>
<%@ Register Src="~/WebVeiw/client.ascx" TagPrefix="uc1" TagName="client" %>
<%@ Register Src="~/WebVeiw/AddBottle.ascx" TagPrefix="uc1" TagName="AddBottle" %>
<%@ Register src="WebVeiw/AddOil.ascx" tagname="AddOil" tagprefix="uc2" %>
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
    <title>Hello, world!</title>
</head>
<body>

    <form id="form1" runat="server">

        <div class="main-container d-flex">
            <div class="sidebar" id="side_nav">
                <div class="header-box px-2 pt-3 pb-4 d-flex justify-content-between">
                    <h1 class="fs-4">
                        <span class="bg-white text-dark rounded shadow px-2 me-2">PSM</span> <span class="text-white">Perfume Store Management</span>
                    </h1>
                    <button class="btn d-md-none d-block close-btn px-1 py-0 text-white">
                        <i class="fal fa-stream"></i>
                    </button>
                </div>
                <ul class="">
                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"><i class="fas fa-store"></i> <asp:Button ID="Button3" runat="server"  Text=" sales process" class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button3_Click"  /></a></li>
                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"><i class="fas fa-store"></i> <asp:Button ID="Button4" runat="server"  Text="invoice " class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button4_Click"  /></a></li>
                </ul>
                <hr class="h-color mx-2">
                <ul class="">

                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"><i class="fas fa-store"></i>
                        <asp:Button ID="Button7" runat="server"  Text="Bottle" class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button7_Click"   />
                        </a></li>
                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"><i class="fas fa-store"></i> <asp:Button ID="Button2" runat="server"  Text="oil" class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button2_Click"  /></a></li>
                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"><i class="fas fa-store"></i> <asp:Button ID="Button6" runat="server"  Text="client" class="" BackColor="#001E3D" BorderStyle="None" ForeColor="White" OnClick="Button6_Click"  /></a></li>

                    <li><a href="" class="text-decoration-none px-3 py-2 d-block"><i class="fas fa-sign-out-alt" style="  color:red"  ></i>  <asp:Button ID="Button5" runat="server"  Text="logout" BackColor="#001E3D" BorderStyle="None" ForeColor="Red" OnClick="Button5_Click" /></a></li>

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
                                                <a class="nav-link disabled" aria-disabled="true"><asp:Label runat="server" Text="Manager" ID="Label1"></asp:Label></a>
                                            </li>
                                        </ul>

                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0" >


                                            <li class="nav-item">
                                                <a class="nav-link disabled" aria-disabled="true"><asp:Label runat="server" Text="User Name:" ID="LabelEmpName"></asp:Label></a>
                                            </li>
                                        </ul>

                                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                                            
                                            <li class="nav-item">
                                                <a class="nav-link disabled" aria-disabled="true" ><asp:Label ID="LabelBranchName" runat="server" Text="Branch Name: "></asp:Label></a>
                                                
                                            </li>
                                        </ul>

                                    </div>
                                
                                </div>
                            </nav>
                        </div>
                    </div>
                </nav>
                <div class="dashboard-content px-3 pt-4">                                            
                    <uc1:Sales_process runat="server" ID="Sales_process1" Visible="False" />
                    <uc1:show_invoice runat="server" id="show_invoice" Visible="False" />
                    <uc1:client runat="server" ID="client" Visible="False" />
                    <uc2:AddOil ID="AddOil1" runat="server" Visible="False" />
                    <uc1:AddBottle runat="server" id="AddBottle" Visible="False" />

                </div>
            </div>
        </div>
    </form>
</body>
</html>









           