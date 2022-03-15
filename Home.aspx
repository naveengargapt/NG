<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Home.aspx.cs" Inherits="Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #slideshow
        {
            position: relative;
            padding: 6 auto;
            width: 1024px;
            height: 224px;
        }
        #slideshow img
        {
            position: absolute;
            top: 0px;
            left: 0px;
            display: block;
        }
        #slideshow img.active
        {
            display: block;
        }
        .style1
        {
            width: 100%;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="scriptmanager" runat="server">
    </asp:ToolkitScriptManager>
    <div align="center">
        <table style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
            border-spacing: 0px">
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                    border-spacing: 0px">
                    <div id="slideshow" align="center">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/slide12.jpg" AlternateText="Slide 1"
                            Height="224px" Width="1024px" />
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="center">
                        <table style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                            border-spacing: 0px">
                            <tr>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 23%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div align="center" style="display: inline-block; width: 219px; margin-top: 10px;">
                                        <asp:Image ID="imgWebdevlopment" runat="server" ImageUrl="~/Images/web_dev.png" />
                                    </div>
                                    <div align="center" style="display: inline-block; width: 210px; margin-left: 10px">
                                        <h2 class="h2-font">
                                            Web Development
                                        </h2>
                                        <div align="center" style="display: inline-block; width: 210px; margin-left: 10px;
                                            margin-top: -8px">
                                            <p class="para">
                                                We offer a complete list of services to meet all your web programming services like
                                                portals, e-commerce, gateways etc. with effective support and maintenanace.
                                            </p>
                                        </div>
                                        <div align="center" style="display: inline-block; width: 210px; margin-left: 10px;
                                            margin-top: -8px">
                                        </div>
                                        <asp:ImageButton ID="btnReadMoreDevelopment" runat="server" AlternateText="Read More"
                                            ToolTip="Read More" ImageUrl="~/Images/read_more_icon_dcore_solutions_gurgao.png" />
                                    </div>
                                </td>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 2%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div style="height: 100px; margin-top: 20px; width: 1px; background-image: url('Images/separator_tall.png');
                                        background-repeat: repeat-y;">
                                    </div>
                                </td>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 23%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div align="center" style="display: inline-block; width: 219px; margin-top: 10px;">
                                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/seo_icon_dcore_solutions.png" />
                                    </div>
                                    <div align="center" style="display: inline-block; width: 210px; margin-left: 10px">
                                        <h2 class="h2-font">
                                            SEO
                                        </h2>
                                        <div align="center" style="display: inline-block; width: 210px; margin-left: 10px;
                                            margin-top: -8px">
                                            <p class="para">
                                                We have highly skilled and experienced professionals to handle your businesses.
                                                Our sole purpose is to help you, no matter what the size of your business is.</p>
                                        </div>
                                        <div align="center" style="display: inline-block; width: 210px; margin-left: 10px;
                                            margin-top: -8px">
                                        </div>
                                        <asp:ImageButton ID="ImageButton2" runat="server" AlternateText="Read More" ToolTip="Read More"
                                            ImageUrl="~/Images/read_more_icon_dcore_solutions_gurgao.png" />
                                    </div>
                                </td>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 2%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div style="height: 100px; margin-top: 20px; width: 1px; background-image: url('Images/separator_tall.png');
                                        background-repeat: repeat-y;">
                                    </div>
                                </td>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 23%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div align="center" style="display: inline-block; width: 219px; margin-top: 10px;">
                                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/erp_icon_dcore_solutions.png" />
                                    </div>
                                    <div align="center" style="display: inline-block; width: 210px; margin-left: 10px">
                                        <h2 class="h2-font">
                                            ERP
                                        </h2>
                                        <div align="center" style="display: inline-block; width: 210px; margin-left: 10px;
                                            margin-top: -8px">
                                            <p class="para">
                                                We provide cost effective ERP Solutions that are developed and customized keeping
                                                in mind the individual requirements of clients and their areas of operation.</p>
                                        </div>
                                        <div align="center" style="display: inline-block; width: 210px; margin-left: 10px;
                                            margin-top: -8px">
                                        </div>
                                        <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Read More" ToolTip="Read More"
                                            ImageUrl="~/Images/read_more_icon_dcore_solutions_gurgao.png" />
                                    </div>
                                </td>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 2%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div style="height: 100px; margin-top: 20px; width: 1px; background-image: url('Images/separator_tall.png');
                                        background-repeat: repeat-y;">
                                    </div>
                                </td>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 23%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div align="center" style="display: inline-block; width: 219px; margin-top: 10px;">
                                        <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/24X7_support_icon_dcore_solutions.jpg" />
                                    </div>
                                    <div align="center" style="display: inline-block; width: 210px; margin-left: 10px">
                                        <h2 class="h2-font">
                                            24/7 Support
                                        </h2>
                                        <div align="center" style="display: inline-block; width: 210px; margin-left: 10px;
                                            margin-top: -8px">
                                            <p class="para">
                                                Knowledge Point Human Capital Experts ensures 24/7 availability to support our clients
                                                & business partners for their required solutions by either ways.
                                            </p>
                                        </div>
                                        <div align="center" style="display: inline-block; width: 210px; margin-left: 10px;
                                            margin-top: -8px">
                                        </div>
                                        <asp:ImageButton ID="ImageButton3" runat="server" AlternateText="Read More" ToolTip="Read More"
                                            ImageUrl="~/Images/read_more_icon_dcore_solutions_gurgao.png" />
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="center" style="margin-top: 2px">
                        <asp:Image ID="imgSeparator" runat="server" ImageUrl="~/Images/hr_shadw.jpg" />
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                    border-spacing: 0px">
                    <div align="center">
                        <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 100%;
                            border-collapse: collapse; border-spacing: 0px">
                            <tr>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 49%; border-collapse: collapse;
                                    border-spacing: 0px">
                                    <div align="left" style="display: inline-block; width: 496px; margin-left: 13px;
                                        margin-right: 1px">
                                        <h2 class="h2-font">
                                            Who are we
                                        </h2>
                                    </div>
                                    <div align="left" style="display: inline-block; width: 490px; margin-left: 15px;
                                        margin-top: -8px">
                                        <p class="para">
                                            Knowledge Point is an extremely professional, web and software solutions company,
                                            in India. Knowledge Point have highly motivated and proficient development experts
                                            for Software and Website development. We are able to combine the traditional and
                                            the contemporary with effortless ease to promote the best interests of our customers.
                                            Selecting the best possible concept for each web solution is what we specialize
                                            in and what our mission is.
                                        </p>
                                    </div>
                                    <div align="right" style="display: inline-block; width: 490px; margin-left: 10px;
                                        margin-top: -8px">
                                        <a href="aboutus.aspx" title="See more" style="border: none">
                                            <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/see_more_icon_dcore_solutions.jpg" /></a>
                                    </div>
                                </td>
                                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 49%; border-collapse: collapse;
                                    border-spacing: 0px" align="center">
                                    <table class="style1">
                                        <tr>
                                            <td>
                                                <h2 class="h2-font">
                                                    Website templates</h2>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="justify">
                                                <a target="_blank" href="#">
                                                    <img src="thumbs/demo1_thumb.jpg" /></a>
                                            </td>
                                            <td valign="top" align="justify">
                                                <a href="#" target="_blank">
                                                    <img src="thumbs/demo2_thumb.jpg" style="margin-right: 15px;" /></a>
                                            </td>
                                            <td valign="top" align="justify">
                                                <a href="#" target="_blank">
                                                    <img src="thumbs/demo3_thumb.jpg" /></a>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <%--     <tr>
                                <td colspan="2"><h2 class="h2-font">&nbsp; Our Clients</h2>
                                </td></tr>--%>
                            </tr>
                            <%--    <tr>
                            <td colspan="2"><marquee onmouseover="this.stop()" onmouseout="this.start()" ><a href="http://www.zadglobal.net" target="_blank"><img src="logos/zadglobal_logo.jpg" height="50" /></a>&nbsp;&nbsp;<a href="http://www.dcsschools.com" target="_blank"><img src="logos/Dcore_smar_school_logo_form.jpg" height="50"/></a>&nbsp;&nbsp;<a href="http://www.yceducation.com" target="_blank"><img src="logos/yceducation_logo.jpg"  height="50" width="130px" /></a>&nbsp;&nbsp;<a href="http://www.efca.co.in" target="_blank"><img src="logos/efca_logo.jpg"  height="50" /></a>&nbsp;&nbsp;<img src="logos/igma_logo.jpg"  height="50"/>&nbsp;&nbsp;<img src="logos/zsoft_logo.jpg" height="50" />&nbsp;&nbsp;<img src="logos/gnet_plus_logo.jpg" height="50" /></marquee></td>
                            </tr>--%>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div align="center" style="border: thin solid #000000">
        <asp:Panel ID="Pnlreg" runat="server">
            <table width="50%" bgcolor="white">
                <tr>
                    <td>
                        <img src="Images/Header.jpg" alt="Header" height="100px" width="800px" />
                    </td>
                </tr>
                <tr>
                    <td bgcolor="White">
                        <table width="90%" align="center">
                            <tr>
                                <td colspan="2" align="center">
                                    <h2 class="h2-font">
                                        Registration Form
                                    </h2>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Branch"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rdbranch" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Selected="True">Gurgaon</asp:ListItem>
                                        <asp:ListItem>Sonipat</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Lblcourse" runat="server" Text="Course"></asp:Label>
                                </td>
                                <td>
                                    <asp:CheckBoxList ID="Ddlcourse" runat="server" Width="350px" Font-Bold="True" RepeatColumns="4"
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem>C</asp:ListItem>
                                        <asp:ListItem>C++</asp:ListItem>
                                        <asp:ListItem>Java</asp:ListItem>
                                        <asp:ListItem>PHP</asp:ListItem>
                                        <asp:ListItem>Servlet</asp:ListItem>
                                        <asp:ListItem>JSP</asp:ListItem>
                                        <asp:ListItem>EJB</asp:ListItem>
                                        <asp:ListItem>JPA</asp:ListItem>
                                        <asp:ListItem>Hibernate</asp:ListItem>
                                        <asp:ListItem>C#</asp:ListItem>
                                        <asp:ListItem>ASP.net</asp:ListItem>
                                        <asp:ListItem>VB.net</asp:ListItem>
                                        <asp:ListItem>ADO.net</asp:ListItem>
                                        <asp:ListItem>Sql Server</asp:ListItem>
                                        <asp:ListItem>Oracle</asp:ListItem>
                                        <asp:ListItem>MySQL</asp:ListItem>
                                        <asp:ListItem>Tally</asp:ListItem>
                                        <asp:ListItem>Busy</asp:ListItem>
                                        <asp:ListItem>Basic</asp:ListItem>
                                        <asp:ListItem>DTP</asp:ListItem>
                                    </asp:CheckBoxList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Lblname" runat="server" Text="Name"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Specify"
                                        ControlToValidate="txtname"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtname" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Lblph" runat="server" Text="Phone No."></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Specify"
                                        ControlToValidate="Txtph"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="Txtph" runat="server" Width="150px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="Btnsubmit" runat="server" Text="Submit" OnClick="Btnsubmit_Click" />
                                    <asp:Button ID="Btnclose" runat="server" Text="Close" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Label ID="Lblresult" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <%--<tr>
                    <td>
                        <img src="Images/Footer.jpg" alt="Header" height="100px" width="800px" />
                    </td>
                </tr>--%>
            </table>
        </asp:Panel>
    </div>
    <asp:ModalPopupExtender ID="mde" runat="server" TargetControlID="Image6" PopupControlID="Pnlreg"
        CancelControlID="Btnclose">
    </asp:ModalPopupExtender>
</asp:Content>
