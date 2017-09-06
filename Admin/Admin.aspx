<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="dot net templates  | aspxtemplates.com">
    <meta name="author" content="aspxtemplates.com">
    <!-- Bootstrap Core CSS -->
    <title>بنك الدم</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="../css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <link href="../css/owl/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="../css/owl/owl.theme.css" rel="stylesheet" type="text/css" />
    <link href="../css/owl/owl.transitions.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="../css/1-col-portfolio.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Ubuntu:300,400,700' rel='stylesheet'
        type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"
        rel="stylesheet" type="text/css" />
    <!-- Required plugin - Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css">
    <link href="../fonts/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->  

    

    </head>
<body>
    <form id="form1" runat="server">
    <!-- Header Navbar fixed top -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color:black;" >
        <div class="container">
            <div class="navbar-header" style="float:right;">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="../index.aspx"><i><img src="../img/Mainlogo.png" width="130px" height="40px" /> </i></a>
            </div>
            <div class="navbar-collapse collapse"style="float:left;font-size:14px;" >
                <!-- Left nav -->
                <div dir="rtl" style="float: right; padding-left:600px;">
                <ul class="nav navbar-nav navbar-right"   >
                   
                    <li class="dropdown" runat="server" id="blog"><a >خدمات</a>
                        <ul class="dropdown-menu" data-dropdown-in="fadeInUp" data-dropdown-out="fadeOutDown">
                            <li><a href="AdminDonors.aspx">المتبرعين</a></li>
                            <li><a href="AdminHosp.aspx">المستشفيات</a></li>
                                <%--  <li><a href="#">الأخبار والأحداث</a></li>--%>
                           
                        </ul>
                    </li>
                    <li runat="server" id="contact"><a href="../index.aspx">الرئيسية</a></li>
                    <li>
                  
                       
                    </li>
                    <li runat="server" id="login"><%--<a href="../login.aspx">تسجيل الخروج</a>--%>
                       
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">تسجيل الخروج</asp:LinkButton>
                          </li>
                    
               
                </ul>
            </div>
        </div>
    </div>
        </div>
         <div class="contact padding100" >
        <div class="container" style="text-align:center">
            <div class="row" align="center" dir="rtl" lang="ar" >
                <div class="col-md-8"></div>
                <br />
                <br />
                <asp:GridView ID="grdStats" runat="server" AutoGenerateColumns="False" DataSourceID="grdStatsDs" CellPadding="4" Font-Bold="True" Font-Size="Large" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" ShowFooter="True" Width="500px" CellSpacing="4" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="a1" HeaderText="اجمالي المتبرعين" ReadOnly="True" SortExpression="a1" />
                        <asp:BoundField DataField="a2" HeaderText="عدد المستشفيات المسجلة" ReadOnly="True" SortExpression="a2" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="grdStatsDs" runat="server" ConnectionString="Data Source=Islam;Initial Catalog=OurProjectBloodBank;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="countstats" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <br />
                <br />
                <asp:GridView ID="grdStock" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="grdStatsBloodBankDs" Font-Size="Large" HorizontalAlign="Center" CellSpacing="7" Width="700px" style="text-align:center;">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns >
                        <asp:BoundField DataField="Hospital_Name" HeaderText="اسم المستشفى" SortExpression="Hospital_Name" />
                        <asp:BoundField DataField="Withdraw_Quantity" HeaderText="الكمية المسحوبة" SortExpression="Withdraw_Quantity" />
                        <asp:BoundField DataField="Remain_Quantity" HeaderText="الكمية المتبقية" SortExpression="Remain_Quantity" />
                        <asp:BoundField DataField="Blood_Stock" HeaderText="المخزون" SortExpression="Blood_Stock" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="grdStatsBloodBankDs" runat="server" ConnectionString="Data Source=Islam;Initial Catalog=OurProjectBloodBank;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="BloodBankStats" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div></div></div>



         <script src="../js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/wow.min.js" type="text/javascript"></script>
    <script src="../js/tutorial.js"></script>
    <script src="../css/owl/owl.carousel.js" type="text/javascript"></script>
    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="../js/jquery.smartmenus.js"></script>
    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="../js/jquery.smartmenus.bootstrap.js"></script>
    <script src="../js/contact.js" type="text/javascript"></script>
       </form>
</body>
</html>
