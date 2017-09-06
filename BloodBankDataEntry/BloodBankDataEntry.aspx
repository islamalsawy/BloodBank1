<%@ Page Language="C#"  MasterPageFile="~/BloodBankDataEntry/BBEntry.master" AutoEventWireup="true"  CodeFile="BloodBankDataEntry.aspx.cs" Inherits="BloodBankAdmin_BloodBankAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 304px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <div id="loginbox"  class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" dir="rtl" align="center">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title" align="center" dir="rtl" lang="ar">
                            ادخال بيانات بنك الدم</div>
                    </div>
                    <div style="padding-top: 30px" class="panel-body" dir="rtl">
                      
                <table style="width:100%; height: 271px;" align="center" cellpadding="9" cellspacing="6" lang="ar" dir="ltr">
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtBloodBankId" runat="server" TextMode="Number" ReadOnly="True" CssClass="form-group"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBloodBankId" Display="Dynamic" ErrorMessage="يرجى ادخال رقم بنك الدم" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style10" align="center">
                            <asp:Label ID="lbltype0" runat="server" Text="رقم بنك الدم"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:DropDownList ID="drpBloodType" runat="server" DataSourceID="drpBloodTypeDs" DataTextField="Blood_Type" DataValueField="Blood_Id" CssClass="form-group">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="drpBloodTypeDs" runat="server" ConnectionString="Data Source=Islam;Initial Catalog=OurProjectBloodBank;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Blood_Type]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style12" align="center">
                            <asp:Label ID="lbltype" runat="server" Text="الفصيلة"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" required="required" CssClass="form-group"></asp:TextBox>
                        </td>
                        <td class="auto-style12" align="center">
                            <asp:Label ID="Label2" runat="server" Text="الكميلة" ></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtWithdraw" runat="server" TextMode="Number" OnTextChanged="txtWithdraw_TextChanged" required="required" CssClass="form-group"></asp:TextBox>
                        </td>
                        <td class="auto-style5" align="center">
                            <asp:Label ID="Label3" runat="server" Text="ما تم سحبه"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtRemains" runat="server" TextMode="Number" required="required" CssClass="form-group"></asp:TextBox>
                        </td>
                        <td class="auto-style15" align="center">
                            <asp:Label ID="Label4" runat="server" Text="المتبقي"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" align="center">
                            <asp:Label ID="lblDateTime" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style7" align="center">
                            <asp:Label ID="Label5" runat="server" Text="اليوم"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnBloodEntry" runat="server" Text="ادخال" OnClick="btnBloodEntry_Click" CssClass="btn btn-success" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblSuc" runat="server" style="font-style: italic"></asp:Label>
                        </td>
                    </tr>
                </table>
                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12">
                        </div>
                        <div id="loginform" class="form-horizontal" role="form">
                            <div style="margin-top: 10px" class="form-group">
                                <!-- Button -->
                            </div>
                            <div class="form-group">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                      
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
            </div>
      </asp:Content>