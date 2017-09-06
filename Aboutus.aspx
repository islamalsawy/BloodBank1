<%@ Page Title="" Language="C#" MasterPageFile="akshara.master"
    AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>

<script runat="server">

    
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-bottom: 15px;
            text-align: right;
        }
        .auto-style4 {
            color: red;
            font-size: 16px;
            text-decoration: underline;
        }
        .auto-style5 {
            margin-top: 0;
            margin-bottom: 0;
            font-size: 16px;
            color: inherit;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
     
            <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="auto-style5" align="center">
                             نبذه عنا </div>
                    </div>
                    <div style="padding-top: 5px" class="panel-body">
                        &nbsp;<div style="margin-top: 5px" class="auto-style2" dir="rtl" lang="ar" >
                                <!-- Button -->
                                
                
                                <p class="auto-style4"><strong>أهداف المشروع</strong></p>
                                <ul>
                                    <li dir="rtl" lang="ar">أن يصبح المشروع هو المرجع الاول لخدمة مستشفيات و الأهالي فى مجال التبرع بالدم<br />
                                        <br /></li>
                                </ul>
                                 <p class="auto-style4"><strong>فكرة المشروع</strong></p>
                                <ul>
                                    <li dir="rtl" lang="ar">إيجاد متبرع بالدم للمحتاجين عن طريق الاتصال بأرقام ثابته للمتبرعين و الذى بدوره سيقوم بالدخول الى قاعدة البيانات المركزيه الخاصه بالمشروع على موقع الانترنت لتوفير المتبرعين بالدم فى الحال.</li>
                                    <li dir="rtl" lang="ar">في حال عدم توافر فصائل دم في قاعدة بيانات المشروع يمكن البحث عن فصائل الدم المتاحة في المستشفيات وبنوك الدم المسجلة في المشروع في مختلف المحافظات. <br />
                                        <br /></li>
                                </ul>
                               <p class="auto-style4"> 
                                   <strong>مميزات مشروع بنك الدم الخيرى الحالى</strong></p>
                                <ul>
                                    <li>تسجيل بيانات المتبرعين على موقع الكترونى يتيح سهولة البحث و دقه اكثر في النظام</li>
                                    <li>التعاون بين كيانات من الجمعيات الخيريه و التعاون مع &quot;الجروبات&quot; الشبابيه التطوعيه </li>
                                    <li>القيام بحملات دوريّه لزيادة عدد المتبرعين بالدم بالتعاون بين الجمعيات المشاركه.</li>
                                    <li dir="rtl">&nbsp;تحقيق الاكتفاء الذاتى لجميع احتياجات التبرع بالدم
                                
                                    </li>
                                    <li dir="rtl">وجود اكبر قاعدة بيانات مركزبه على مستوى الجمهورية
                                        <br />
                                        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br /></li>
                                </ul>
                            </div>
                        <div id="loginform" class="form-horizontal" role="form">
                           
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="signupbox" style="display: none; margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Sign Up                     Sign Up</div>
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
  
  
</asp:Content>


