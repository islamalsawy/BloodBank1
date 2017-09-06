<%@ Page Title="" Language="C#" MasterPageFile="~/akshara.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    momomo
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            height: 321px;
        }
    </style>
    <style type="text/css">
        .auto-style2 {
            width: 8px;
        }
        .auto-style3 {
            width: 35px;
        }
    </style>
    <style type="text/css">
        .auto-style2 {
            width: 1139px;
            height: 455px;
        }
        .auto-style4 {
            width: 117px;
        }
        .auto-style5 {
            width: 527px;
        }
        .auto-style6 {
            width: 527px;
            height: 72px;
        }
        .auto-style8 {
            width: 117px;
            height: 72px;
        }
        .auto-style12 {
            width: 158px;
        }
        .auto-style13 {
            width: 158px;
            height: 72px;
        }
        .auto-style15 {
            width: 527px;
            text-align: right;
        }
        .auto-style16 {
            width: 527px;
            height: 58px;
        }
        .auto-style17 {
            width: 158px;
            height: 58px;
        }
        .auto-style18 {
            width: 117px;
            height: 58px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style13">
                <asp:TextBox ID="txt_oldpassword" runat="server" Width="182px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#336699" Text="الرقم القديم"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style17">
                <asp:TextBox ID="txt_newpassword" runat="server" Width="184px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#666699" Text="الرقم الجديد"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lb_result" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="33px" OnClick="Button1_Click" Text="تعديل" Width="110px" />
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txt_confirm" runat="server" Width="188px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#666699" Text="تاكيد"></asp:Label>
            </td>

            <td>
                <asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
    </table>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_newpassword" ControlToValidate="txt_confirm" ErrorMessage="CompareValidator"></asp:CompareValidator>
&nbsp;
</asp:Content>

