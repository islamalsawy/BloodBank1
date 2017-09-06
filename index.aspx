<%@ Page Title="" Language="C#" MasterPageFile="akshara.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="preview_dotnet_templates_akshara_multi_master_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!-- Carousel -->
    <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target='#carousel-example-generic' data-slide-to='0' class='active'>
                <asp:Image ID="Image1" runat="server" ImageUrl="img/Blood_Donation-3.jpg"
                    Width="50px" Height="50px" CssClass="img-circle" /></li>
            <li data-target='#carousel-example-generic' data-slide-to='1'>
                <asp:Image ID="Image2" runat="server" ImageUrl="img/Blood_Donation-2.jpg"
                    Width="50px" Height="50px" CssClass="img-circle" /></li>
          
            <li data-target='#carousel-example-generic' data-slide-to='2'>
                <asp:Image ID="Image3" runat="server" ImageUrl="img/Blood_Donation-1.jpg"
                    Width="50px" Height="50px" CssClass="img-circle" /></li>
        </ol>
       <%-- ~/preview/dotnet-templates/akshara-multi-master/--%>
<%--        ~/preview/dotnet-templates/--%>
        <%--akshara-multi-master--%>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active one">
                <!-- <img src="#" alt="" /> -->
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1 >
                            تبرع تنقذ <br /> <br /> <span class="yellow">حياة </span></h1>
                        <div class="">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="~/login.aspx">تسجيل دخول</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-clear btn-sm btn-min-block " NavigateUrl="~/registeration.aspx">تسجيل متبرع جديد</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item two">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            كل <b class="yellow">ثلاث دقائق</b> هناك <b class="yellow">مريض</b><br /><br />
                            <span class="span">يحتاج لنقل دم</span></h1>
                        <div class="">
                            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="~/bloodtype.aspx">بحث عن فصيلة دم</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="~/Donar.aspx">بحث عن متبرع</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item three">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            لماذا<b class="yellow"> أتبرع</b> ؟ </h1><br/><br/><br/><br/><br/><br/>
                        <div class="">
                            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="~/FAQ.aspx">الأسئلة الشائعة</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink6" runat="server" CssClass="btn btn-clear btn-sm btn-min-block" NavigateUrl="#services">لماذ أتبرع؟</asp:HyperLink></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                href="#carousel-example-generic" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                </span></a>
    </div>
    <!-- Carousel -->
    <!-- Service Section -->
  -<section id="services" class="padding100">
    <div class="text-center" > <h1 >لماذا<b class="yellow" > أتبرع؟</b></h1><br /></div>
       <div class="video-container" >  
     <iframe width="1345" height="480" src="https://www.youtube.com/embed/paTqxvuXpbQ" frameborder="0" allowfullscreen></iframe></div>
      
        <%--<div class="container">
            <div class="row">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span><strong>F</strong>eatures</span></h2>
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-laptop animated wow fadeInDown"></i>
                    <div class="sc-inner">
                        <h4>
                            Responsive Design</h4>
                        <p>
                            Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                            an update when new items arrive!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-support animated wow fadeInDown" data-wow-delay="0.2s"></i>
                    <div class="sc-inner">
                        <h4>
                            Quick Support</h4>
                        <p>
                            Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                            an update when new items arrive!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-paper-plane-o animated wow fadeInDown" data-wow-delay="0.4s"></i>
                    <div class="sc-inner">
                        <h4>
                            Mailchimp Newsletter</h4>
                        <p>
                            Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                            an update when new items arrive!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-pie-chart animated wow fadeInUp" data-wow-delay="0.6s"></i>
                    <div class="sc-inner">
                        <h4>
                            Awesome Stats</h4>
                        <p>
                            Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                            an update when new items arrive!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-puzzle-piece animated wow fadeInUp" data-wow-delay="0.8s"></i>
                    <div class="sc-inner">
                        <h4>
                            Easy update</h4>
                        <p>
                            Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                            an update when new items arrive!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-youtube-play animated wow fadeInUp" data-wow-delay="0.10s"></i>
                    <div class="sc-inner">
                        <h4>
                            Video Support</h4>
                        <p>
                            Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                            an update when new items arrive!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
        </div>--%>
        
    </section>
    <!-- ./ End Service Section -->
    <%--<!-- Page Content -->
    <section class="service-info padding100">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h4>
                        Creative design</h4>
                    <p>
                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                        Want more Bootstrap themes & templates ?
                    </p>
                    <ul>
                        <li><i class="fa fa-check"></i>Fully Responsive with bootstrap framework</li>
                        <li><i class="fa fa-check"></i>Clean Code with HTML5 & CSS3</li>
                        <li><i class="fa fa-check"></i>Working Contact Form with PHP Script</li>
                        <li><i class="fa fa-check"></i>Dropbox login form \\\\</li>
                        <li><i class="fa fa-check"></i>Best for mobiles and business sites & landing page.</li>
                    </ul>
                    <a href="#download" class="btn btn-download app"><i class="fa fa-android"></i><strong>
                        Download App</strong> <span>Click to download</span> </a>
                </div>
                <!-- ./ app info box -->
                <div class="col-md-6">
                    <img src="~/preview/dotnet-templates/akshara-multi-master/img/2.png"  runat="server" class="img-responsive" alt="" />
                </div>
                <!-- ./ app info box -->
            </div>
        </div>
    </section>--%>
    <!-- /.container -->
    <!-- Products Section -->
    <section id="products" class="products-list padding100">
       
          <div class="container">    
           <div class="row">  
                  <div class="section-title col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">             
             <h2 class="animated wow fadeInLeft" data-wow-delay="0.4s">
                        مقابل كل وحدة <span class="common">دم </span>تساهم في انقاذ حياة ثلاثة أشخاص
                        </h2>                   
                </div>
            </div>
            <!-- ./end row -->
            <div class="row">
                <div class="col-sm-12 animated wow fadeInUp" data-wow-delay="0.6s">
                    <div id="screens" class="owl-carousel">
                        <div>
                            <img src="img/s1.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="img/s4.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="img/s2.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="img/s5.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="img/s3.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="img/s6.jpg" class="img-responsive" alt="screens">
                        </div>
                        <div>
                            <img src="img/s7.jpg" class="img-responsive" alt="screens">
                        </div>
                         <div>
                            <img src="img/s8.jpg" class="img-responsive" alt="screens">
                        </div>
                         <div>
                            <img src="img/s9.jpg" class="img-responsive" alt="screens">
                        </div>
                    </div>
                    <!-- ./ end slider -->
                </div>
            </div>
            <!-- ./ end row -->
        </div>
    </section>
    <!-- Download Section -->
    <section id="download" class="padding100">
        <div class="container">
            <div class="row">
                <div class="section-title col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2">
                    <h2 class="animated wow fadeInLeft" data-wow-delay="0.4s">
                        هل تبحث عن    <span class="common"> فصيلة أو متبرع</span></h2>
                    
                </div>
            </div>
            <!-- ./end row -->
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text-center">
                    <div class="download-wrap animated wow fadeInLeft" data-wow-delay="0.4s">
                        <a href="bloodtype.aspx" class="btn btn-download app wow fadeInUp"
                                data-wow-delay="0.2s"><i ></i><strong></strong> <span style="font-family: 'Monotype Koufi'; font-size: large">
                                   ابحث عن فصيلة</span> </a><a href="Donar.aspx" class="btn btn-download window wow fadeInUp"
                                        data-wow-delay="0.2s"><i ></i><strong></strong>
                                        <span style="font-family: 'Monotype Koufi'; font-size: large">ابحث عن متبرع</span> </a>
                    </div>
                </div>
            </div>
            <!-- ./end row -->
        </div>
    </section>
    <!--End Download Section end-->
</asp:Content>

