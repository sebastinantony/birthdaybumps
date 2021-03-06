﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="birthdaybumps.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>BirthdayBumps</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Find the B'Days of your favourite Facebook friends and their Relationship Status in a single click.
Do you wanna know who will be your new Valentine this year ? What are you waitin for go and check it out!">
    <meta name="author" content="Arun Antony">

    <!-- The styles -->
    <link href="css/bootstrap-cerulean.css" rel="stylesheet">
    <style type="text/css">
        body
        {
            padding-bottom: 40px;
        }

        .sidebar-nav
        {
            padding: 9px 0;
        }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/charisma-app.css" rel="stylesheet">
    <link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
    <link href='css/fullcalendar.css' rel='stylesheet'>
    <link href='css/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='css/chosen.css' rel='stylesheet'>
    <link href='css/uniform.default.css' rel='stylesheet'>
    <link href='css/colorbox.css' rel='stylesheet'>
    <link href='css/jquery.cleditor.css' rel='stylesheet'>
    <link href='css/jquery.noty.css' rel='stylesheet'>
    <link href='css/noty_theme_default.css' rel='stylesheet'>
    <link href='css/elfinder.min.css' rel='stylesheet'>
    <link href='css/elfinder.theme.css' rel='stylesheet'>
    <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='css/opa-icons.css' rel='stylesheet'>
    <link href='css/uploadify.css' rel='stylesheet'>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
	  <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="img/favicon.ico">
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-41062683-3', 'apphb.com');
        ga('send', 'pageview');

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!-- topbar starts -->
            <div class="navbar">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <a class="brand" href="Login.aspx">
                            <img alt="Charisma Logo" src="img/logo20.png" />
                            <span>BirthdayBumps</span></a>

                        <!-- theme selector starts -->
                        <div class="btn-group pull-right theme-container">
                            <%--<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="icon-tint"></i><span class="hidden-phone">Change Theme / Skin</span>
                                <span class="caret"></span>
                            </a>--%>
                            <ul class="dropdown-menu" id="themes">
                                <li><a data-value="classic" href="#"><i class="icon-blank"></i>Classic</a></li>
                                <li><a data-value="cerulean" href="#"><i class="icon-blank"></i>Cerulean</a></li>
                                <li><a data-value="cyborg" href="#"><i class="icon-blank"></i>Cyborg</a></li>
                                <li><a data-value="redy" href="#"><i class="icon-blank"></i>Redy</a></li>
                                <li><a data-value="journal" href="#"><i class="icon-blank"></i>Journal</a></li>
                                <li><a data-value="simplex" href="#"><i class="icon-blank"></i>Simplex</a></li>
                                <li><a data-value="slate" href="#"><i class="icon-blank"></i>Slate</a></li>
                                <li><a data-value="spacelab" href="#"><i class="icon-blank"></i>Spacelab</a></li>
                                <li><a data-value="united" href="#"><i class="icon-blank"></i>United</a></li>
                            </ul>
                        </div>
                        <!-- theme selector ends -->

                        <!-- user dropdown starts -->
                        <%--<div class="btn-group pull-right">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="icon-user"></i><span class="hidden-phone">admin</span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Profile</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Logout</a></li>
                        </ul>
                    </div>--%>
                        <!-- user dropdown ends -->

                        <%--<div class="top-nav nav-collapse">
                        <ul class="nav">
                            <li><a href="#">Visit Site</a></li>
                            <li>
                                <form class="navbar-search pull-left">
                                    <input placeholder="Search" class="search-query span2" name="query" type="text">
                                </form>
                            </li>
                        </ul>
                    </div>--%>
                        <!--/.nav-collapse -->
                    </div>
                </div>
            </div>
            <!-- topbar ends -->
            <div class="container-fluid">
                <div class="row-fluid">

                    <!-- left menu starts -->

                    <!--/span-->
                    <!-- left menu ends -->

                    <noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="//en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>

                    <div id="content" class="span10">
                        <!-- content starts -->

                        <div class="row-fluid">
                            <div class="box span12">
                                <div class="box-header well">
                                    <h2><i class="icon-info-sign"></i>Featuring the all new - Birthday Bumps!</h2>
                                    <div class="box-icon">
                                        <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                        <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                        <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                    </div>
                                </div>
                                <div class="box-content">
                                    <h1>Birthday Bumps <small> helps you to find the B'Days of your favourite Facebook friends and their Relationship Status in a single click.</small></h1>
                                    <p>Do you wanna know who will be your new Valentine this year ? What are you waitin for go and check it out!</p>

                                    <p class="center">
                                        <asp:Label ID="lblCode" runat="server" Text="" CssClass="label label-default" Visible="false"></asp:Label>
                                        <asp:Button ID="Button1" runat="server" Text="Login to Facebook" OnClick="Button1_Click" CssClass="btn btn-primary btn-primary" />
                                    </p>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- content ends -->
                    </div>
                    <!--/#content.span10-->
                </div>
                <!--/fluid-row-->

                <hr>

                <div class="modal hide fade" id="myModal">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <h3>Settings</h3>
                    </div>
                    <div class="modal-body">
                        <p>Ah! I know you are looking for some interesting features right here. </p>
                        <p>No worries and wait for the forthcoming releases!</p>
                    </div>
                    <div class="modal-footer">
                        <a href="#" class="btn" data-dismiss="modal">Close</a>
                        <a href="#" class="btn btn-primary" data-dismiss="modal">I'll Wait and See!</a>
                    </div>
                </div>

                <footer>
                    <p class="pull-left">&copy; <a href="https://www.facebook.com/arun.antony.9655" target="_blank">Arun Antony </a>2014</p>
                    <p class="pull-right">Powered by: <a href="https://appharbor.com/">AppHarbor</a></p>
                </footer>

            </div>
            <!--/.fluid-container-->

            <!-- external javascript
	================================================== -->
            <!-- Placed at the end of the document so the pages load faster -->

            <!-- jQuery -->
            <script src="js/jquery-1.7.2.min.js"></script>
            <!-- jQuery UI -->
            <script src="js/jquery-ui-1.8.21.custom.min.js"></script>
            <!-- transition / effect library -->
            <script src="js/bootstrap-transition.js"></script>
            <!-- alert enhancer library -->
            <script src="js/bootstrap-alert.js"></script>
            <!-- modal / dialog library -->
            <script src="js/bootstrap-modal.js"></script>
            <!-- custom dropdown library -->
            <script src="js/bootstrap-dropdown.js"></script>
            <!-- scrolspy library -->
            <script src="js/bootstrap-scrollspy.js"></script>
            <!-- library for creating tabs -->
            <script src="js/bootstrap-tab.js"></script>
            <!-- library for advanced tooltip -->
            <script src="js/bootstrap-tooltip.js"></script>
            <!-- popover effect library -->
            <script src="js/bootstrap-popover.js"></script>
            <!-- button enhancer library -->
            <script src="js/bootstrap-button.js"></script>
            <!-- accordion library (optional, not used in demo) -->
            <script src="js/bootstrap-collapse.js"></script>
            <!-- carousel slideshow library (optional, not used in demo) -->
            <script src="js/bootstrap-carousel.js"></script>
            <!-- autocomplete library -->
            <script src="js/bootstrap-typeahead.js"></script>
            <!-- tour library -->
            <script src="js/bootstrap-tour.js"></script>
            <!-- library for cookie management -->
            <script src="js/jquery.cookie.js"></script>
            <!-- calander plugin -->
            <script src='js/fullcalendar.min.js'></script>
            <!-- data table plugin -->
            <script src='js/jquery.dataTables.min.js'></script>

            <!-- chart libraries start -->
            <script src="js/excanvas.js"></script>
            <script src="js/jquery.flot.min.js"></script>
            <script src="js/jquery.flot.pie.min.js"></script>
            <script src="js/jquery.flot.stack.js"></script>
            <script src="js/jquery.flot.resize.min.js"></script>
            <!-- chart libraries end -->

            <!-- select or dropdown enhancer -->
            <script src="js/jquery.chosen.min.js"></script>
            <!-- checkbox, radio, and file input styler -->
            <script src="js/jquery.uniform.min.js"></script>
            <!-- plugin for gallery image view -->
            <script src="js/jquery.colorbox.min.js"></script>
            <!-- rich text editor library -->
            <script src="js/jquery.cleditor.min.js"></script>
            <!-- notification plugin -->
            <script src="js/jquery.noty.js"></script>
            <!-- file manager library -->
            <script src="js/jquery.elfinder.min.js"></script>
            <!-- star rating plugin -->
            <script src="js/jquery.raty.min.js"></script>
            <!-- for iOS style toggle switch -->
            <script src="js/jquery.iphone.toggle.js"></script>
            <!-- autogrowing textarea plugin -->
            <script src="js/jquery.autogrow-textarea.js"></script>
            <!-- multiple file upload plugin -->
            <script src="js/jquery.uploadify-3.1.min.js"></script>
            <!-- history.js for cross-browser state change on ajax -->
            <script src="js/jquery.history.js"></script>
            <!-- application script for Charisma demo -->
            <script src="js/charisma.js"></script>

            <!-- AddThis Smart Layers BEGIN -->
            <!-- Go to //www.addthis.com/get/smart-layers to customize -->
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52fb22592ad11826"></script>
            <script type="text/javascript">
                addthis.layers({
                    'theme': 'transparent',
                    'share': {
                        'position': 'right',
                        'numPreferredServices': 5
                    },
                    'whatsnext': {},
                    'recommended': {}
                });
                addthis.toolbox('#addthis_buttons', {}, { 'url': 'https://birthdaybumps.apphb.com' });
            </script>
            <!-- AddThis Smart Layers END -->



        </div>
    </form>
</body>
</html>
