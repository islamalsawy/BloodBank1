<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master"  AutoEventWireup="true" CodeFile="AdminDonors.aspx.cs" Inherits="Admin_AdminDonors" EnableEventValidation="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

       
        <div class="container">
            <div class="row">
    
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Donor_Id" DataSourceID="SqlDataSourceAdmin" ForeColor="#333333" GridLines="None" Height="204px" Width="1203px" CellSpacing="4" Font-Size="Large" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="الرقم السري" SortExpression="Donor_Password">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Height="26px" Text='<%# Bind("Donor_Password") %>' Width="157px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="#33CC33"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Donor_Password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="الايميل" SortExpression="Donor_Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Donor_Email") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="NotValide" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Donor_Email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="النوع" SortExpression="Donor_Gender">
                            <EditItemTemplate>
                                <asp:SqlDataSource ID="SqlGenderDs" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [Donor_Gender] FROM [Donors] WHERE ([Donor_Email] = @Donor_Email)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="txtEmail" Name="Donor_Email" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("Donor_Gender") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Donor_Gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="السن" SortExpression="Donor_Age">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Donor_Age") %>' TextMode="Number"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Donor_Age") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="الوزن" SortExpression="Donor_Weight">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Donor_Weight") %>' TextMode="Number"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Donor_Weight") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="نوع الاتصال" SortExpression="Type_Contact">
                            <EditItemTemplate>
                                <asp:SqlDataSource ID="SqlTypeContactDs" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [Type_Contact] FROM [Donors] WHERE ([Donor_Email] = @Donor_Email)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="drpTypeContact" Name="Donor_Email" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("Type_Contact") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Type_Contact") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="وقت الاتصال" SortExpression="Time_Contact">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Time_Contact") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Time_Contact") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="فون 2" SortExpression="Donor_SecondPhone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Donor_SecondPhone") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Just Num" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Donor_SecondPhone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="فون 1" SortExpression="Donor_FirstPhone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Donor_FirstPhone") %>'></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox11" ErrorMessage="Just Num" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("Donor_FirstPhone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="رقم المحافظه" SortExpression="Donor_Address_Id">
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpGovernrate" runat="server" DataSourceID="SqlDataSourceGov" DataTextField="Governrate" DataValueField="Address_Id" SelectedValue='<%# Bind("Donor_Address_Id") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceGov" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT * FROM [Address] UNION SELECT NULL AS Expr1, 'NULL' AS Expr2"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Donor_Address_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="رقم المدينه" SortExpression="City_Id">
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpCity" runat="server" DataSourceID="SqlDataSourceCity" DataTextField="City_Name" DataValueField="City_id" SelectedValue='<%# Bind("City_Id") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceCity" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [City_id], [City_Name] FROM [City] UNION SELECT NULL AS Expr1, 'NULL' AS Expr2"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("City_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="اخر تبرع" SortExpression="Donor_LastTime">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Donor_LastTime") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("Donor_LastTime") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="رقم فصيله الدم" SortExpression="Donor_Blood_Id">
                            <EditItemTemplate>
                                <asp:DropDownList ID="drpBloood" runat="server" DataSourceID="SqlDataSourceblooooooood" DataTextField="Blood_Type" DataValueField="Blood_Id" SelectedValue='<%# Bind("Donor_Blood_Id") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceblooooooood" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [Blood_Id], [Blood_Type] FROM [Blood_Type] UNION SELECT NULL AS Expr1, 'NULL' AS Expr2"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("Donor_Blood_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="اسم المتبرع" SortExpression="Donor_Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox14" runat="server" Height="26px" Text='<%# Bind("Donor_Name") %>' Width="75px"></asp:TextBox>
                                &nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox14" ErrorMessage="*" ForeColor="#66FF66"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text='<%# Bind("Donor_Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Donor_Id" HeaderText="رقم المتبرع" InsertVisible="False" ReadOnly="True" SortExpression="Donor_Id" />
                        <asp:CommandField CancelText="الغاء" DeleteText="مسح" EditText="تعديل" HeaderText="العمليات" SelectText="اختر" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" UpdateText="تعديل" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" Font-Size="Small" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" DeleteCommand="deleteDonorProfile" DeleteCommandType="StoredProcedure" SelectCommand="select * from Donors" UpdateCommand="update Donors  set  Donor_Name = @Donor_Name ,Donor_Blood_Id = @Donor_Blood_Id,Donor_LastTime = @Donor_LastTime ,Donor_FirstPhone = @Donor_FirstPhone , Donor_SecondPhone = @Donor_SecondPhone ,Donor_Address_Id = @Donor_Address_Id, City_Id = @City_Id , Donor_Email = @Donor_Email , Donor_Age = @Donor_Age ,Donor_Weight = @Donor_Weight ,Type_Contact = @Type_Contact , Time_Contact = @Time_Contact ,Donor_Password = @Donor_Password , Donor_Gender = @Donor_Gender
	where Donor_Id = @Donor_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Donor_Id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Donor_Name" />
                        <asp:Parameter Name="Donor_Blood_Id" />
                        <asp:Parameter Name="Donor_LastTime" />
                        <asp:Parameter Name="Donor_FirstPhone" />
                        <asp:Parameter Name="Donor_SecondPhone" />
                        <asp:Parameter Name="Donor_Address_Id" />
                        <asp:Parameter Name="City_Id" />
                        <asp:Parameter Name="Donor_Email" />
                        <asp:Parameter Name="Donor_Age" />
                        <asp:Parameter Name="Donor_Weight" />
                        <asp:Parameter Name="Type_Contact" />
                        <asp:Parameter Name="Time_Contact" />
                        <asp:Parameter Name="Donor_Password" />
                        <asp:Parameter Name="Donor_Gender" />
                        <asp:Parameter Name="Donor_Id" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
                <br />
                &nbsp;&nbsp;&nbsp;
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:DropDownList ID="drpCity" runat="server" Width="160px" Height="20px" DataSourceID="SqlDataSourceC" DataTextField="City_Name" DataValueField="City_Id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceC" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="select  City_Id , City_Name  from City
"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style5">المدينة&nbsp; &nbsp; </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtLastTime" runat="server" Height="20px" Width="160px" TextMode="Date" required="required"></asp:TextBox>
                        </td>
                        <td class="auto-style4">اخر تبرع</td>
                        <td class="auto-style4">
                            <asp:DropDownList ID="drpBloodType" runat="server" Width="160px" Height="20px" DataSourceID="SqlDataSourcebloodtype" DataTextField="Blood_Type" DataValueField="Blood_Id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourcebloodtype" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT [Blood_Id], [Blood_Type] FROM [Blood_Type]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style4">فصيله الدم</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtName" runat="server" Height="20px" Width="160px" required="required"></asp:TextBox>
                        </td>
                        <td class="auto-style4">اسم المتبرع</td>
                        
                    </tr>
                     <tr>
                        <td colspan="8">&nbsp;</td>
                    </tr>
                    <tr>
                       <td class="auto-style4">
                           <asp:DropDownList ID="drpGovernrate" runat="server" Height="20px" Width="160px" DataSourceID="SqlDataSourcegovernrate" DataTextField="Governrate" DataValueField="Address_Id">
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSourcegovernrate" runat="server" ConnectionString="<%$ ConnectionStrings:OurProjectBloodBankConnectionString %>" SelectCommand="SELECT * FROM [Address]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style5">المحافظة&nbsp; </td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtAge" runat="server" Height="20px" Width="160px" TextMode="Number" required="required"></asp:TextBox>
                        </td>
                        <td class="auto-style4">السن</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtPhone2" runat="server" Height="20px" Width="160px" TextMode="Number" required="required"></asp:TextBox>
                        </td>
                        <td class="auto-style4">رقم التليفون 2</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtPhone1" runat="server" Height="20px" Width="160px" TextMode="Number" required="required"></asp:TextBox>
                        </td>
                        <td class="auto-style4">رقم التليفون 1</td>

                    </tr>
                     <tr>
                        <td colspan="8">&nbsp;</td>
                    </tr>
                    <tr>
                         <td class="auto-style4">
                            <asp:TextBox ID="txtWeight" runat="server" Height="20px" Width="160px" TextMode="Number" required="required"></asp:TextBox>
                         </td>
                         <td class="auto-style5">الوزن&nbsp;&nbsp; </td>
                         <td class="auto-style4">
                           <asp:DropDownList ID="drpGender" runat="server" Height="20px" Width="160px">
                               <asp:ListItem>ذكر</asp:ListItem>
                               <asp:ListItem>انثى</asp:ListItem>
                           </asp:DropDownList>
                         </td>
                         <td class="auto-style4">النوع</td>
                         <td class="auto-style4">
                            <asp:TextBox ID="txtPhoneTime" runat="server" Height="20px" Width="160px" TextMode="Number" required="required"></asp:TextBox>
                         </td>
                         <td class="auto-style4">وقت الاتصال</td>
                         <td class="auto-style4">
                            <asp:DropDownList ID="drpTypeContact" runat="server" Width="160px" Height="20px" >
                                <asp:ListItem>اتصال</asp:ListItem>
                                <asp:ListItem>رسالة</asp:ListItem>
                            </asp:DropDownList>
                         </td>
                         <td class="auto-style4">نوع الاتصال</td>
                    </tr>
                     <tr>
                        <td colspan="8">&nbsp;</td>
                    </tr>
                     <tr>
                         <td class="auto-style4" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnInsert" runat="server" Height="30px" Text="ادخل" Width="160px" OnClick="btnInsert_Click" />
                         </td>
                         <td class="auto-style4">
                            <asp:TextBox ID="txtEmail"  runat="server" Height="20px" Width="160px" TextMode="Email" required="required"></asp:TextBox>
                         </td>
                         <td class="auto-style4">الايميل</td>
                         <td class="auto-style4">
                            <asp:TextBox ID="txtPassword" runat="server" Height="20px" Width="160px" required="required" TextMode="Password"></asp:TextBox>
                         </td>
                         <td class="auto-style4">الرقم السري </td>
                    </tr>
                    <tr>
                        <td colspan="8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Lbl" runat="server"></asp:Label>
                        </td>
                    </tr>
                    
                </table>
                
            </div></div>
        </asp:Content>