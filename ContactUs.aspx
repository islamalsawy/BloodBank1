<%@ Page Title="" Language="C#" MasterPageFile="~/akshara.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="banner">
        <div class="container">
            <h1>
               يسعدنا تلقى استفساراتكم ومقترحاتكم 
            </h1>
            <h3>
               فريق بنك الدم</h3>
        </div>
    </div>
    <div class="contact padding100">
        <div class="container" >
            <div class="row" >
                <div class="col-md-8" >
                    <div id="main-contact-form" class="contact-form" dir="rtl">
                        <!-- form -->
                        <form role="form" action="contact.php" method="post">
                        <div class="form-group">
                            <label class="sr-only" for="contact-name" dir="rtl">
                                Name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="contact-name form-control" required="required" placeholder="الإسم"></asp:TextBox>
&nbsp;</div>
                        <div class="form-group">
                            <label class="sr-only" for="contact-email">
                                Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="contact-subject form-control" TextMode="Email" placeholder="الإيميل" required="required"></asp:TextBox>
&nbsp;</div>
                        <div class="form-group" dir="rtl">
                            <label class="sr-only" for="contact-subject">
                                Subject</label>
                            <asp:TextBox ID="txtSub" runat="server" CssClass="contact-name form-control" required="required" placeholder="الموضوغ"></asp:TextBox>
&nbsp;</div>
                        <div class="form-group" dir="rtl">
                            <label class="sr-only" for="contact-message">
                                Message</label>
                            <asp:TextBox ID="txtCont" runat="server" CssClass="contact-name form-control" TextMode="MultiLine" required="required" placeholder="المحتوى" Columns="9" Height="150px"></asp:TextBox>
&nbsp;</div>
                        </form>
                        <!-- ./form -->
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" OnClick="Button1_Click" Text="أرسل" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblMSg" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="col-md-4">
                </div>
            </div>
        </div>
    </div>
</asp:Content>

