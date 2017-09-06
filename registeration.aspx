<%@ Page Title="" Language="C#" MasterPageFile="~/akshara.master" AutoEventWireup="true" CodeFile="registeration.aspx.cs" Inherits="registeration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            left: -5px;
            top: 2px;
        }
        .auto-style3 {
            width: 894px;
        }
        .auto-style4 {
            width: 894px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
            text-align: right;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 894px;
            height: 30px;
        }
        .auto-style8 {
            text-align: right;
            height: 30px;
            width: 146px;
        }
        .auto-style9 {
            width: 894px;
            text-align: right;
        }
        .auto-style10 {
            width: 894px;
            height: 30px;
            text-align: right;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style12 {
            width: 894px;
            text-align: right;
            height: 32px;
        }
        .auto-style13 {
            text-align: right;
            height: 32px;
            width: 146px;
        }
        .auto-style14 {
            height: 33px;
        }
        .auto-style15 {
            width: 894px;
            text-align: right;
            height: 33px;
        }
        .auto-style16 {
            text-align: right;
            height: 33px;
            width: 146px;
        }
        .auto-style17 {
            height: 39px;
        }
        .auto-style18 {
            width: 894px;
            text-align: right;
            height: 39px;
        }
        .auto-style19 {
            text-align: right;
            height: 39px;
            width: 146px;
        }
        .auto-style20 {
            height: 35px;
        }
        .auto-style21 {
            width: 894px;
            text-align: right;
            height: 35px;
        }
        .auto-style22 {
            text-align: right;
            height: 35px;
            width: 146px;
        }
        .auto-style24 {
            height: 20px;
            width: 146px;
        }
        .auto-style25 {
            text-align: right;
            width: 146px;
        }
        .auto-style26 {
            height: 23px;
        }
        .auto-style27 {
            width: 894px;
            text-align: right;
            height: 23px;
        }
        .auto-style28 {
            text-align: right;
            width: 146px;
            height: 23px;
        }
        .auto-style30 {
            width: 894px;
            height: 50px;
            text-align: right;
        }
        .auto-style31 {
            height: 50px;
        }
        .auto-style32 {
            text-align: right;
            height: 50px;
            width: 146px;
        }
        .auto-style33 {
            height: 53px;
        }
        .auto-style34 {
            width: 894px;
            text-align: right;
            height: 53px;
        }
        .auto-style35 {
            text-align: right;
            height: 53px;
            width: 146px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="padding100">
        <div class="container">
    <div id="signupbox" style="margin-top: 50px;" class="auto-style2">
                <div class="panel panel-default">
                   <div id="loginbox" style="margin-top: 0px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title" align="center" dir="rtl" lang="ar">
                            تسجيل متبرع جديد</div>
                    </div>


                     <table style="background-color:#FFD9BF" class="nav-justified" bgcolor="#FFD9BF">
                        <tr>
                            <td class="auto-style5"></td>
                            <td class="auto-style4"></td>
                            <td class="auto-style24">&nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td bgcolor="#FFD9BF" class="auto-style7"></td>
                            <td class="auto-style8">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style10">
                                <asp:TextBox ID="Txt_UserName" runat="server" CssClass="form-group" Height="21px" Width="193px" required="required"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="اسم المستخدم"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style20"></td>
                            <td class="auto-style21">
                                <asp:DropDownList ID="Drp_six" runat="server" Height="24px" Width="115px" CssClass="form-group">
                                    <asp:ListItem>male</asp:ListItem>
                                    <asp:ListItem>female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td bgcolor="#FFD9BF" class="auto-style22">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="النوع" Font-Names="Arial"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style10">
                                <asp:DropDownList ID="Drp_BloodType" runat="server" Height="34px" Width="114px" DataSourceID="drpBloodTypeDs" DataTextField="Blood_Type" DataValueField="Blood_Id" CssClass="form-group">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="drpBloodTypeDs" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT * FROM [Blood_Type]"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style8">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="الفصيله"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style14"></td>
                            <td class="auto-style15">
&nbsp;
                                &nbsp;
                                &nbsp;
                                &nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;<asp:TextBox ID="Txt_Age" runat="server" Width="152px" TextMode="Number" CssClass="form-group"></asp:TextBox>
                                &nbsp; </td>
                            <td class="auto-style16">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="العمر"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style9">
                                &nbsp;
                                <asp:TextBox ID="Txt_firstphone" runat="server" OnTextChanged="TextBox5_TextChanged" Width="198px" TextMode="Number" required="required" CssClass="form-group"></asp:TextBox>
                            </td>
                            <td class="auto-style25">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="رقم الموبيل"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="Txt_secondphone" runat="server" Width="198px" TextMode="Number" CssClass="form-group"></asp:TextBox>
                            </td>
                            <td class="auto-style25">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="رقم التليفون"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style11"></td>
                            <td class="auto-style12">
                                <asp:RadioButton ID="btn_night" runat="server" GroupName="Time" Text=" 11:3صباحا" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="btn_goodmorning" runat="server" GroupName="Time" Text="3:9صباحا" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="btn_alltime" runat="server" GroupName="Time" Text="24 ساعه" Checked="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="auto-style13">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="وقت الاتصال"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style17"></td>
                            <td class="auto-style18">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ID="btn_message" runat="server" Text="رسائل " />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="btn_call" runat="server" Text="مكالمات" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            </td>
                            <td class="auto-style19">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="نوع  الاتصال"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style14"></td>
                            <td class="auto-style15">
&nbsp;&nbsp;
                                <asp:TextBox ID="Txt_lastTime" runat="server" Width="190px" TextMode="Date" CssClass="form-group"></asp:TextBox>
&nbsp;</td>
                            <td class="auto-style16">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="اخر مره للتبرع"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"></td>
                            <td class="auto-style10">
                                <asp:TextBox ID="Txt_Email" runat="server" Width="254px" required="required" CssClass="form-group"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="االايميل"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style11"></td>
                            <td class="auto-style12">
                                <asp:TextBox ID="Txt_Weight" runat="server" Width="185px" TextMode="Number" CssClass="form-group"></asp:TextBox>
                            </td>
                            <td class="auto-style13">
                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="الوزن"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style26"></td>
                            <td class="auto-style27">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT * FROM [City] WHERE ([Address_id] = @Address_id)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Drp_Governrate" Name="Address_id" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:DropDownList ID="Drp_city" runat="server" Height="35px" Width="139px" DataSourceID="SqlDataSource2" DataTextField="City_name" DataValueField="City_id" CssClass="form-group">
                                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="Drp_Governrate" runat="server" Height="29px" Width="135px" DataSourceID="SqlDataSource1" DataTextField="Governrate" DataValueField="Address_Id" AutoPostBack="True" CssClass="form-group">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [Address_Id], [Governrate] FROM [Address]"></asp:SqlDataSource>
&nbsp;</td>
                            <td class="auto-style28">
                                <asp:Label ID="Label13" runat="server" Text="العنوان" Font-Bold="True"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            <td class="auto-style25">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style31"></td>
                            <td class="auto-style30">
                                <asp:TextBox ID="Txt_Password" runat="server" Height="22px" TextMode="Password" Width="202px" required="required" CssClass="form-group"></asp:TextBox>
                            </td>
                            <td class="auto-style32">
                                <asp:Label ID="Label15" runat="server" Text="الرقم السري"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style33"></td>
                            <td class="auto-style34">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txt_Password" ControlToValidate="Txt_Confirm" ErrorMessage="CompareValidator"></asp:CompareValidator>
                                <asp:TextBox ID="Txt_Confirm" runat="server" Height="21px" TextMode="Password" Width="199px" required="required" CssClass="form-group"></asp:TextBox>
                            </td>
                            <td class="auto-style35">
                                <asp:Label ID="Label14" runat="server" Text="تاكيد"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                            </td>
                            <td class="auto-style25">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style9">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" Font-Bold="True" Text="تسجيل" Width="99px" Height="36px" OnClick="Button2_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style25">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblMsg" runat="server" Font-Size="Large"></asp:Label>
                            </td>
                            <td class="auto-style25">&nbsp;</td>
                        </tr>
                    </table>
            </div>
        </div>
        </div>
        </div>
            </div>
        </div>
       
</asp:Content>

