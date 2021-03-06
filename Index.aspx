﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="birthdaybumps.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <title>BirthdayBumps</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="helps you to find the B'Days of your favourite Facebook friends and their Relationship Status in a single click.
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
    <script type="text/javascript">
        if (window.location.hash && window.location.hash == '#_=_') {
            window.location.hash = '';
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">


        <!-- topbar starts -->
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="index.aspx">
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
                                <h1>Birthday Bumps <small>helps you to find the B'Days of your favourite Facebook friends and their Relationship Status in a single click.</small></h1>
                                <p>Do you wanna know who will be your new Valentine this year ? What are you waitin for go and check it out!</p>

                                <p class="center">
                                    <asp:Label ID="lblCode" runat="server" Text="" CssClass="label label-default" Visible="false"></asp:Label>
                                    <%--<asp:Button ID="Button1" runat="server" Text="Login to Facebook" OnClick="Button1_Click" CssClass="btn btn-primary btn-primary" />--%>
                                </p>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>

                    <div class="row-fluid sortable">

                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>Today's Birthday
                                    <asp:Label ID="Label1" runat="server" Text="" /></asp:Label></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView1" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView1_PageIndexChanging"
                                            GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>

                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>

                            </div>
                        </div>
                        <!--/span-->

                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>Upcoming Birthday(s)
                                    <asp:Label ID="Label5" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView5" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView5_PageIndexChanging"
                                            GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>

                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <!--/row-->

                    <div class="row-fluid sortable">
                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>Favourite Birthday(s)
                                    <asp:Label ID="Label6" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView6" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView6_PageIndexChanging"
                                            GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>

                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>

                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>Single
                                    <asp:Label ID="Label2" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView2" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView2_PageIndexChanging"
                                            GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <!--/row-->

                    <div class="row-fluid sortable">
                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>It's Complicated
                                    <asp:Label ID="Label3" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView3" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView3_PageIndexChanging"
                                            GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>

                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>Married
                                    <asp:Label ID="Label4" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView4" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView4_PageIndexChanging"
                                            AutoGenerateColumns="false" GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <!--/row-->

                    <div class="row-fluid sortable">
                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>In a Relationship
                                    <asp:Label ID="Label7" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel7" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView7" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView7_PageIndexChanging"
                                            GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>

                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>Engaged
                                    <asp:Label ID="Label8" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel8" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView8" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView8_PageIndexChanging"
                                            AutoGenerateColumns="false" GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <!--/row-->

                    <div class="row-fluid sortable">
                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>In an Open Relationship
                                    <asp:Label ID="Label9" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel9" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView9" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView9_PageIndexChanging"
                                            GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>

                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>Separated
                                    <asp:Label ID="Label10" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel10" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView10" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView10_PageIndexChanging"
                                            AutoGenerateColumns="false" GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <!--/row-->

                    <div class="row-fluid sortable">
                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>Divorced
                                    <asp:Label ID="Label11" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel11" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView11" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView11_PageIndexChanging"
                                            GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>

                        <div class="box span6">
                            <div class="box-header well" data-original-title>
                                <h2>Widowed
                                    <asp:Label ID="Label12" runat="server" Text="" /></h2>
                                <div class="box-icon">
                                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                                </div>
                            </div>
                            <div class="box-content">
                                <asp:UpdatePanel ID="UpdatePanel12" runat="server" UpdateMode="Always">
                                    <ContentTemplate>
                                        <asp:GridView ID="GridView12" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                            AllowPaging="True" EmptyDataText="No Records Found" OnPageIndexChanging="GridView12_PageIndexChanging"
                                            AutoGenerateColumns="false" GridLines="None">
                                            <AlternatingRowStyle CssClass="active"></AlternatingRowStyle>
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#DataBinder.Eval(Container.DataItem, "picture.data.url") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="name" HeaderText="Name" />
                                                <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                                <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                            </Columns>

                                            <RowStyle CssClass="success"></RowStyle>
                                        </asp:GridView>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%--<div class="pagination pagination-centered">
                                    <ul>
                                        <li><a href="#">Prev</a></li>
                                        <li class="active">
                                            <a href="#">1</a>
                                        </li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <!--/row-->




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
                <p class="pull-left">&copy; <a href="https://www.facebook.com/arun.antony.9655" target="_blank">Arun Antony</a> 2014</p>
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




    </form>
</body>
</html>
