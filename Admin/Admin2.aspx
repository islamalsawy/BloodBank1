<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Admin2.aspx.cs" Inherits="Admin_Admin2" %>


<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row" align="center" dir="rtl" lang="ar" >
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
                        <asp:BoundField DataField="Remain_Quantity" HeaderText="المتبقي" SortExpression="Remain_Quantity" />
                        <asp:BoundField DataField="Quantity" HeaderText="المخزون" SortExpression="Quantity" />
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

</asp:Content>