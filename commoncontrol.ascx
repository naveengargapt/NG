<%@ Control Language="C#" AutoEventWireup="true" CodeFile="commoncontrol.ascx.cs"
    Inherits="commoncontrol" %>
<link href="menu.css" type="text/css" rel="Stylesheet" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="menu.js"></script>
<style type="text/css">
    div#copyright
    {
        font: 11px 'Trebuchet MS';
        color: #FFF;
        text-indent: 30px;
        padding: 300px 0 0 0;
    }
    div#copyright a
    {
        color: #0080ff;
    }
    div#copyright a:hover
    {
        color: #F00000;
    }
    div#menu
    {
        top: 40px;
        left: 0px;
        width: 100%;
    }
</style>
<div id="menu">
    <ul class="menu">
        <li><a href="Home.aspx" class="parent" title="Home"><span>Home</span></a>
            <%--<div>
                                        <ul>
                                            <li><a href="#" class="parent"><span>Sub Item 1</span></a>
                                                <div>
                                                    <ul>
                                                        <li><a href="#" class="parent"><span>Sub Item 1.1</span></a>
                                                            <div>
                                                                <ul>
                                                                    <li><a href="#"><span>Sub Item 1.1.1</span></a></li>
                                                                    <li><a href="#"><span>Sub Item 1.1.2</span></a></li>
                                                                </ul>
                                                            </div>
                                                        </li>
                                                        <li><a href="#"><span>Sub Item 1.2</span></a></li>
                                                        <li><a href="#"><span>Sub Item 1.3</span></a></li>
                                                        <li><a href="#"><span>Sub Item 1.4</span></a></li>
                                                        <li><a href="#"><span>Sub Item 1.5</span></a></li>
                                                        <li><a href="#"><span>Sub Item 1.6</span></a></li>
                                                        <li><a href="#" class="parent"><span>Sub Item 1.7</span></a>
                                                            <div>
                                                                <ul>
                                                                    <li><a href="#"><span>Sub Item 1.7.1</span></a></li>
                                                                    <li><a href="#"><span>Sub Item 1.7.2</span></a></li>
                                                                </ul>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>
                                            <li><a href="#"><span>Sub Item 2</span></a></li>
                                            <li><a href="#"><span>Sub Item 3</span></a></li>
                                        </ul>
                                    </div>--%>
        </li>
        <li><a href="aboutus.aspx" class="parent" title="Know about us"><span>About Us</span></a></li>
   <%--     <li><a href="ourteam.aspx" class="parent" title="Our Team"><span>Our Team</span></a></li>--%>
        <li><a href="#" class="parent" title="Our Services"><span>Services</span></a>
            <div>
                <ul>
                    <li><a href="erp.aspx" title="ERP Solutions"><span>ERP</span></a></li>
                    <li><a href="seo.aspx" title="Search Engine Optimization"><span>SEO</span></a></li>
                    <li><a href="webdevelopment.aspx" title="Web Development"><span>Web Development</span></a>
                    </li>
                    <li><a href="softwaredevelopment.aspx" title="Software Development"><span>Software Development</span></a>
                    </li>
                    <li><a href="webdesigning.aspx" title="Web Designing"><span>Web Designing</span></a></li>
                    <li><a href="webhosting.aspx" title="Web Hosting"><span>Web Hosting</span></a></li>
                    <li><a href="testing.aspx" title="Testing"><span>Testing</span></a></li>
                </ul>
            </div>
        </li>
        <li><a href="#" class="parent" title="Technologies"><span>Technologies</span> </a>
            <div>
                <ul>
                    <li><a href="dotnettechnologies.aspx" title=".NET"><span>.NET</span> </a></li>
                    <li><a href="java.aspx" title="JAVA/J2EE"><span>JAVA</span> </a></li>
                    <li><a href="php.aspx" title="PHP and MySQL"><span>PHP/MySQL</span> </a></li>
                    <li><a href="python.aspx" title="Python"><span>Python</span> </a></li>
                </ul>
            </div>
        </li>
        <li><a href="#" title="Live project training" class="parent"><span>Training</span></a>
            <div>
                <ul>
                    <li><a href="dotnettraining.aspx" title=".NET Training"><span>.NET</span></a></li>
                    <li><a href="javatraining.aspx" title="JAVA Training"><span>JAVA</span></a></li>
                    <li><a href="#" title="Python Training"><span>Python</span></a></li>
                </ul>
            </div>
        </li>
     <%--   <li><a href="ourclients.aspx" title="Our Clients"><span>Our Clients</span></a></li>--%>
     <%--   <li><a href="products.aspx" title="Products"><span>Products</span></a></li>--%>
        <li><a href="#" title="Online Examination"><span>Online Exam</span></a>
        <div>
        <ul>
        <li>
        <a href="OnlineExam_subjective/OnlineHome.aspx" title="Subjective"><span>Subjective</span></a>
        </li>
        <li>
        <a href="OnlineExam/OnlineHome.aspx" title="Objective"><span>Objective</span></a>
         <%-- <a href="OnlineExam2/OnlineHome.aspx" title="Online Examination 5020"><span>Online Exam 3</span></a>--%>
        </li>
        </ul>
        </div>
        
        </li>
        <li class="last"><a href="contactus.aspx" title="Contact us"><span>Contacts</span></a></li>
    </ul>
</div>
<div id="copyright" style="display: none">
    Copyright &copy; 2012 <a href="http://apycom.com/">Apycom jQuery Menus</a></div>