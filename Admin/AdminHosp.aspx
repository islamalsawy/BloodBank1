<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AdminHosp.aspx.cs" Inherits="Admin_AdminHosp" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
         
        <div class="container">
            <div class="row">
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Hospital_Id" DataSourceID="SqlDataSourceAdmin" ForeColor="#333333" GridLines="None" Width="1202px" Font-Size="Large">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="المحافظة" SortExpression="Address_Id">
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpGov" runat="server" DataSourceID="SqlDataSourceAddress" DataTextField="Governrate" DataValueField="Address_Id" SelectedValue='<%# Bind("Address_Id") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceAddress" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT * FROM [Address]"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Address_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ايميل المستشفى" SortExpression="Hospital_Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Hospital_Email") %>'></asp:TextBox>
                                &nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Hospital_Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="بنك الدم التابع لها" SortExpression="BloodBank_Number">
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpBBank" runat="server" DataSourceID="SqlDataSourceBBank" DataTextField="Hospital_Name" DataValueField="BloodBank_Number" SelectedValue='<%# Bind("BloodBank_Number") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceBBank" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [Hospital_Name], [BloodBank_Number] FROM [Hospital]"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("BloodBank_Number") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="رقم تليفون 2" SortExpression="Hospital_phone2">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Hospital_phone2") %>' TextMode="Number"></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Hospital_phone2") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="رقم تليفون 1" SortExpression="Hospital_phone1">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Hospital_phone1") %>' TextMode="Number"></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Hospital_phone1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="اسم المستشفى" SortExpression="Hospital_Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Hospital_Name") %>'></asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Hospital_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Hospital_Id" HeaderText="رقم المستشفى" InsertVisible="False" ReadOnly="True" SortExpression="Hospital_Id" />
                        <asp:CommandField CancelText="الغاء" DeleteText="مسح" EditText="تعديل" HeaderText="العمليات" SelectText="اختر" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="تعديل" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" DeleteCommand="deleteHospital" DeleteCommandType="StoredProcedure" SelectCommand=" select * from Hospital" UpdateCommand="update Hospital  set  Hospital_Name = @Hospital_Name , Hospital_phone1 = @Hospital_phone1, Hospital_phone2 = @Hospital_phone2 , Address_Id = @Address_Id , Hospital_Email = @Hospital_Email , BloodBank_Number = @BloodBank_Number
 where Hospital_Id = @Hospital_Id
">
                    <DeleteParameters>
                        <asp:Parameter Name="Hospital_Id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Hospital_Name" />
                        <asp:Parameter Name="Hospital_phone1" />
                        <asp:Parameter Name="Hospital_phone2" />
                        <asp:Parameter Name="Address_Id" />
                        <asp:Parameter Name="Hospital_Email" />
                        <asp:Parameter Name="BloodBank_Number" />
                        <asp:Parameter Name="Hospital_Id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPhone2" runat="server" Height="20px" TextMode="Number" Width="160px" required="required"></asp:TextBox>
                        </td>
                        <td>رقم التليفون 2</td>
                        <td>
                            <asp:TextBox ID="txtPhone1" runat="server" Height="20px" TextMode="Number" Width="160px" required="required"></asp:TextBox>
                        </td>
                        <td>رقم التليفون 1</td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" Height="20px" Width="160px" required="required" ></asp:TextBox>
                        </td>
                        <td>اسم المستشفى</td>
                    </tr>
                     <tr>
                        <td>
                            <asp:DropDownList ID="drpGovernrate" runat="server" DataSourceID="SqlDataSourceGovernrate" DataTextField="Governrate" DataValueField="Address_Id" Height="20px" Width="160px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceGovernrate" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT * FROM [Address]"></asp:SqlDataSource>
                         </td>
                        <td>المحافظه</td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" Height="20px" Width="160px" required="required" TextMode="Email"></asp:TextBox>
                         </td>
                        <td>ايميل المستشفى</td>
                        <td>
                            <asp:DropDownList ID="drpBloodBank" runat="server" DataSourceID="SqlDataSourceBloodBank" DataTextField="Hospital_Name" DataValueField="BloodBank_Number" Height="20px" Width="160px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceBloodBank" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [Hospital_Name], [BloodBank_Number] FROM [Hospital]"></asp:SqlDataSource>
                         </td>
                        <td>بنك الدم </td>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnInsert" runat="server" Text="ادخال" Width="113px" OnClick="btnInsert_Click" />
                            <br />
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Lbl" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </div></div>

     </asp:Content>