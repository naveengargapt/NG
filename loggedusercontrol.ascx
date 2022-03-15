<%@ Control Language="C#" AutoEventWireup="true" CodeFile="loggedusercontrol.ascx.cs"
    Inherits="loggedusercontrol" %>
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
        <li><a href="updatejobs.aspx" class="parent" title="Administrator Home"><span>Admin
            Home</span></a>
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
        <li><a href="updatejobs.aspx" class="parent"><span>Add New Job</span></a></li>
        <li><a href="managejobs.aspx" class="parent" title="Manage Already Added Jobs"><span>
            Manage Jobs</span></a></li>
        <li><a href="careers.aspx" class="paraent" title="View Current Opening(s)"><span>View
            Jobs</span></a></li>
               <li><a href="Registration_Report.aspx" class="paraent" title="View Resiatration(s) Report"><span>Report
            </span></a></li>
        <li class="last"><a href="login.aspx"><span>Logout</span></a></li>
    </ul>
</div>
<div id="copyright" style="display: none">
    Copyright &copy; 2012 <a href="http://apycom.com/">Apycom jQuery Menus</a></div>