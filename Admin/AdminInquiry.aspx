<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminInquiry.aspx.cs" Inherits="Admin_AdminInquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table border="0" cellpadding="0" cellspacing="0" style="text-align:center" align="center" dir="rtl" lang="ar">

<tr>

<td dir="rtl">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CellSpacing="8" DataKeyNames="Compilation_Id" DataSourceID="AdminInquiryDs" Font-Size="Large" ForeColor="#333333" GridLines="None" Height="438px" HorizontalAlign="Center" Width="693px" RowHeaderColumn="Compilation_Id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Compilation_Id" HeaderText="رقم الشكوى" InsertVisible="False" ReadOnly="True" SortExpression="Compilation_Id" />
            <asp:BoundField DataField="Name" HeaderText="الإسم" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="الإيميل" SortExpression="Email" />
            <asp:BoundField DataField="Subject" HeaderText="الموضوع" SortExpression="Subject" />
            <asp:BoundField DataField="Content" HeaderText="المحتوى" SortExpression="Content" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="Large" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </td>

</tr>

</table>
    <asp:SqlDataSource ID="AdminInquiryDs" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT * FROM [Feed_Back]"></asp:SqlDataSource>


    </table>
</asp:Content>

