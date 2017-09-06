<%@ Page Title="" Language="C#" MasterPageFile="~/akshara.master" AutoEventWireup="true" CodeFile="MyProfile2.aspx.cs" Inherits="MyProfile2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 988px;
            height: 369px;
        }
        .auto-style3 {
            width: 5px;
        }
        .auto-style4 {
            width: 166px;
        }
        .auto-style5 {
            width: 567px
        }
        .auto-style6 {
            width: 297px
        }
        .auto-style7 {
            width: 567px;
            text-align: right;
        }
        .auto-style8 {
            width: 297px;
            height: 46px;
        }
        .auto-style9 {
            width: 5px;
            height: 46px;
        }
        .auto-style10 {
            width: 567px;
            text-align: right;
            height: 46px;
        }
        .auto-style11 {
            text-align: right;
            height: 46px;
        }
        .auto-style13 {
            width: 297px;
            height: 38px;
        }
        .auto-style14 {
            width: 5px;
            height: 38px;
        }
        .auto-style15 {
            width: 567px;
            text-align: right;
            height: 38px;
        }
        .auto-style16 {
            text-align: right;
            height: 38px;
        }
        .auto-style17 {
            width: 297px;
            height: 3px;
        }
        .auto-style18 {
            width: 5px;
            height: 3px;
        }
        .auto-style19 {
            width: 567px;
            text-align: right;
            height: 3px;
        }
        .auto-style20 {
            text-align: right;
            height: 3px;
        }
        .auto-style21 {
            left: -5px;
            top: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="padding100">
        <div class="container">


            <div id="loginbox" style="margin-top: 50px;" class="auto-style21">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                     <div class="panel-title">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;الصفحة الشخصية</div>
                    </div>
                    <div style="padding-top: 30px" class="panel-body">
                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12">
                        </div>
                        <div id="loginform" class="form-horizontal" role="form">
                            
                            <div class="auto-style4">
                                
                                <table class="auto-style2">
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:Label ID="lb_id" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style3">
                                             &nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_username">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txt_username" runat="server" Height="21px" OnTextChanged="txt_username_TextChanged" Width="226px"></asp:TextBox>
                                        </td>
                                        <td class="text-right">
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="الاسم"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                             &nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:DropDownList ID="drp_gender" runat="server">
                                                <asp:ListItem>male</asp:ListItem>
                                                <asp:ListItem>female</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="text-right">
                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="النوع"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_email" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txt_email" runat="server" TextMode="Email"></asp:TextBox>
                                        </td>
                                        <td class="text-right">
                                            <asp:Label ID="Label3" runat="server" Text="الايميل"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT * FROM [City] WHERE ([Address_id] = @Address_id)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="drp_governrate" Name="Address_id" PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            <asp:DropDownList ID="drp_city" runat="server" Width="109px">
                                            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="drp_governrate" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drp_governrate_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT * FROM [Address]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td class="text-right">
                                            <asp:Label ID="Label4" runat="server" Text="العنوان"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:DropDownList ID="drp_bloodtype" runat="server" Height="61px" Width="131px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [Blood_Id], [Blood_Type] FROM [Blood_Type]"></asp:SqlDataSource>
                                        </td>
                                        <td class="text-right">
                                            <asp:Label ID="Label5" runat="server" Text="نوع الفصيله"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style8">
                                            </td>
                                        <td class="auto-style9">
                                            </td>
                                        <td class="auto-style10">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_dateoflast" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txt_dateoflast" runat="server" TextMode="Date"></asp:TextBox>
                                        </td>
                                        <td class="auto-style11">
                                            <asp:Label ID="Label6" runat="server" Text="اخر مره للتبرع"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style17">
                                            </td>
                                        <td class="auto-style18">
                                            </td>
                                        <td class="auto-style19"></td>
                                        <td class="auto-style20">
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style13">
                                            </td>
                                        <td class="auto-style14">
                                            </td>
                                        <td class="auto-style15">
                                            <asp:DropDownList ID="drp_time" runat="server" DataTextField="Blood_Id" DataValueField="Blood_Type" Height="52px" Width="125px">
                                                <asp:ListItem>9Am:3Pm</asp:ListItem>
                                                <asp:ListItem>3Pm:11Pm</asp:ListItem>
                                                <asp:ListItem>24Hours</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [Blood_Type], [Blood_Id] FROM [Blood_Type]"></asp:SqlDataSource>
                                        </td>
                                        <td class="auto-style16">
                                            <asp:Label ID="Label8" runat="server" Text="وقت الاتصال"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:DropDownList ID="drp_typeofcontact" runat="server" Height="44px" Width="121px">
                                                <asp:ListItem>SMS</asp:ListItem>
                                                <asp:ListItem>CALL</asp:ListItem>
                                                <asp:ListItem>SMS&amp;&amp;andCALL</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="text-right">
                                            <asp:Label ID="Label9" runat="server" Text="طريه الاتصال"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_phone">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txt_phone" runat="server" Height="22px" Width="141px"></asp:TextBox>
                                        </td>
                                        <td class="text-right">
                                            <asp:Label ID="Label10" runat="server" Text="رقم الهاتف"></asp:Label>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                   
                                     <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style5">&nbsp;</td>
                                        <td class="text-right">
                                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Underline="True" NavigateUrl="~/ChangePassword.aspx">تعديل الرقم السري</asp:HyperLink>
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                     <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style7">
                                            &nbsp;</td>
                                        <td class="text-right">
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                     <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style7">
                                            &nbsp;</td>
                                        <td class="text-right">
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                     <tr>
                                        <td class="auto-style6">
                                            &nbsp;</td>
                                        <td class="auto-style3">
                                            &nbsp;</td>
                                        <td class="auto-style7">
                                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="35px" OnClick="Button1_Click" Text="تاكيد التعديل" Width="114px" />
                                         </td>
                                        <td class="text-right">
&nbsp;&nbsp;&nbsp; </td>
                                    </tr>
                                    </table>
                            </div>
                            <div style="margin-top: 10px" class="form-group">
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="signupbox" style="display: none; margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Sign Up</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px">
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="signupform" class="form-horizontal" role="form">
                            <div class="form-group">
                                <label for="email" class="col-md-3 control-label">
                                    Email</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="txtemail" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="firstname" class="col-md-3 control-label">
                                    First Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="col-md-3 control-label">
                                    Last Name</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">
                                    Password</label>
                                <div class="col-md-9">
                                    <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>                           
                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">
                                    <button id="btn-signup" type="button" class="btn btn-info">
                                        <i class="icon-hand-right"></i>&nbsp Sign Up</button>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>

