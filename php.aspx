<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="php.aspx.cs" Inherits="php" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center" style="margin: 2px">
        <table style="vertical-align: top; width: 1020px;">
            <tr>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 23%; border-collapse: collapse;
                    border-spacing: 0px">
                    <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 100%;
                        border-collapse: collapse; border-spacing: 0px">
                        <tr>
                            <td style="vertical-align: top">
                                <div align="left" style="width: 217px; margin-right: 2px; margin-top: 4px; margin-bottom: 7px;
                                    margin-left: 22px">
                                    <asp:Image ID="imgAboutUs" runat="server" ImageUrl="~/Images/php_mysql_development.jpg"
                                        CssClass="div-round" AlternateText="PHP MySQL" ToolTip="PHP MySQL" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="vertical-align: top; padding: 0px; margin: 0px; width: 77%; border-collapse: collapse;
                    border-spacing: 0px">
                    <table cellspacing="1" style="vertical-align: top; padding: 0px; margin: 0px; width: 100%;
                        border-collapse: collapse; border-spacing: 0px">
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                <div align="left" style="margin: 3px; padding: 3px">
                                    <div align="left">
                                        <h2 class="h2-font">
                                        PHP and MySQL
                                        </h2>
                                    </div>
                                    <div style="width: 99%; display: inline-block; height: 2px; background-color: #da7c08;
                                        margin-right: 2px;">
                                    </div>
                                    <p class="para">
                                       PHP is a programming language designed to generate web pages interactively on the computer serving them, called a web server . Unlike HTML, where the web browser uses tags and markup to generate a page, PHP code runs between the requested page and the web server, adding to and changing the basic HTML output. For example, PHP code could be used to display a counter of visitors to a site.<br /><br />
PHP, in less than 20 lines of code, can store the IP address from which a page request comes in a separate file, and then display the number of unique IP addresses that visited a particular site. The person requesting the web page doesn't know that PHP generated the page, because the counter text is part of the standard HTML markup language that the PHP code generated.<br /><br />
PHP makes web development easy, because all the code you need is contained within the PHP framework. This means that there's no reason for you to reinvent the wheel each time you sit down to develop a PHP program; that would be something you'd have to do if you were using a compiled language like C.

                                        <br />
                                        <br />

                                        While PHP is great for developing web functionality, it is not a database. The database of choice for PHP developers is MySQL, which acts like a filing clerk for PHP-processed user information. MySQL automates the most common tasks related to storing and retrieving specific user information based on your supplied criteria.<br />
                                        <br />MySQL is easily accessed from PHP, and they're commonly used together as they work well hand in hand. An added benefit is that PHP and MySQL run on various computer types and operating systems, including Mac OS X, Windows-based PCs, and Linux.
<br />
                                        <br />
                                        <b><span class="para">Advantages of Using PHP with MySQL:</span></b>
                                       </p> 
                                       <ul class="para"><li>Logically paired up</li><li>Open source</li><li>Fast processing</li></ul><p class="para">
                                       
                                      Knowledge Point offers a highly experienced team of PHP developers with expertise in designing, developing, integrating and maintaining custom PHP applications. In addition to custom PHP applications, our expertise extends to open source tools like Joomla, Drupal. To achieve maximum usability we use a combination of custom development and modifications of standard templates to create the desired functionality. Open source tools where we can provide development expertise include:.
                                       </p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td style="vertical-align: top; padding: 0px; margin: 0px; width: 100%; border-collapse: collapse;
                                border-spacing: 0px; list-style-image: url('Images/arrow_bullet.jpg');">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>