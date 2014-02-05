<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="birthdaybumps.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <title>Birthday Bumps</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!--link rel="stylesheet/less" href="less/bootstrap.less" type="text/css" /-->
    <!--link rel="stylesheet/less" href="less/responsive.less" type="text/css" /-->
    <!--script src="js/less-1.3.3.min.js"></script-->
    <!--append ‘#!watch’ to the browser URL, then refresh the page. -->

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="img/favicon.png">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <nav class="navbar navbar-default" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                            <a class="navbar-brand" href="#">BirthDay Bumps</a>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="active">
                                    <a href="#">Link</a>
                                </li>
                                <li>
                                    <a href="#">Link</a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">Action</a>
                                        </li>
                                        <li>
                                            <a href="#">Another action</a>
                                        </li>
                                        <li>
                                            <a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Separated link</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">One more separated link</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <form class="navbar-form navbar-left" role="search">
                                <div class="form-group">
                                    <input type="text" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-default">Submit</button>
                            </form>
                            <ul class="nav navbar-nav navbar-right">
                                <li>
                                    <a href="#">Link</a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">Action</a>
                                        </li>
                                        <li>
                                            <a href="#">Another action</a>
                                        </li>
                                        <li>
                                            <a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>

                    </nav>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <h3 class="text-center">h3. Lorem ipsum dolor sit amet.
			</h3>
                    <asp:Label ID="lblCode" runat="server" Text="" CssClass="label label-default" Visible="false"></asp:Label>

                    <%--<asp:Button ID="btnToken" runat="server" Text="Exchange for Authorization code" OnClick="btnToken_Click" CssClass="btn btn-primary btn-large" />--%>

                    <asp:Label ID="lblAccessToken" runat="server" Text="" CssClass="label label-default" Visible="false"></asp:Label>

                    <asp:Button ID="btnFriends" runat="server" Text="Get Friends Birthday Dates" OnClick="btnFriends_Click" CssClass="btn btn-primary btn-large" />

                    <asp:Label ID="lblResult" runat="server" Text="Label" CssClass="label label-default"></asp:Label>
                    <span class="label label-default">Label</span>
                    <div class="alert alert-success alert-dismissable">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4>Alert!
				</h4>
                        <strong>Warning!</strong> Best check yo self, you're not looking too good. <a href="#" class="alert-link">alert link</a>
                    </div>
                    <div class="progress progress-striped active">
                        <div class="progress-bar progress-success">
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-4 column">
                            <h3>Todays Birthday
					</h3>
                            <asp:GridView ID="GridView1" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="name" HeaderText="Name" />
                                    <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                    <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                </Columns>
                            </asp:GridView>
                            <ul class="pagination pagination-sm">
                                <li>
                                    <a href="#">Prev</a>
                                </li>
                                <li>
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">4</a>
                                </li>
                                <li>
                                    <a href="#">5</a>
                                </li>
                                <li>
                                    <a href="#">Next</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 column">
                            <h3>Up Coming Birthday
					</h3>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>#
								</th>
                                        <th>Product
								</th>
                                        <th>Payment Taken
								</th>
                                        <th>Status
								</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>01/04/2012
								</td>
                                        <td>Default
								</td>
                                    </tr>
                                    <tr class="active">
                                        <td>1
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>01/04/2012
								</td>
                                        <td>Approved
								</td>
                                    </tr>
                                    <tr class="success">
                                        <td>2
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>02/04/2012
								</td>
                                        <td>Declined
								</td>
                                    </tr>
                                    <tr class="warning">
                                        <td>3
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>03/04/2012
								</td>
                                        <td>Pending
								</td>
                                    </tr>
                                    <tr class="danger">
                                        <td>4
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>04/04/2012
								</td>
                                        <td>Call in to confirm
								</td>
                                    </tr>
                                </tbody>
                            </table>
                            <ul class="pagination pagination-sm">
                                <li>
                                    <a href="#">Prev</a>
                                </li>
                                <li>
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">4</a>
                                </li>
                                <li>
                                    <a href="#">5</a>
                                </li>
                                <li>
                                    <a href="#">Next</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 column">
                            <h3>Favorite birthday
					</h3>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>#
								</th>
                                        <th>Product
								</th>
                                        <th>Payment Taken
								</th>
                                        <th>Status
								</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>01/04/2012
								</td>
                                        <td>Default
								</td>
                                    </tr>
                                    <tr class="active">
                                        <td>1
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>01/04/2012
								</td>
                                        <td>Approved
								</td>
                                    </tr>
                                    <tr class="success">
                                        <td>2
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>02/04/2012
								</td>
                                        <td>Declined
								</td>
                                    </tr>
                                    <tr class="warning">
                                        <td>3
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>03/04/2012
								</td>
                                        <td>Pending
								</td>
                                    </tr>
                                    <tr class="danger">
                                        <td>4
								</td>
                                        <td>TB - Monthly
								</td>
                                        <td>04/04/2012
								</td>
                                        <td>Call in to confirm
								</td>
                                    </tr>
                                </tbody>
                            </table>
                            <ul class="pagination pagination-sm">
                                <li>
                                    <a href="#">Prev</a>
                                </li>
                                <li>
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">4</a>
                                </li>
                                <li>
                                    <a href="#">5</a>
                                </li>
                                <li>
                                    <a href="#">Next</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <h3 class="text-center">Relationship Status Report
			</h3>
                    <div class="progress progress-striped active">
                        <div class="progress-bar progress-success">
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-4 column">
                            <h3>Single - Ready to Mingle :)
					</h3>
                            <asp:GridView ID="GridView2" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="name" HeaderText="Name" />
                                    <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                    <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                </Columns>
                            </asp:GridView>
                            <ul class="pagination pagination-sm">
                                <li>
                                    <a href="#">Prev</a>
                                </li>
                                <li>
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">4</a>
                                </li>
                                <li>
                                    <a href="#">5</a>
                                </li>
                                <li>
                                    <a href="#">Next</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 column">
                            <h3>It's complicated - They have found there own pit 
					</h3>
                            <asp:GridView ID="GridView3" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="name" HeaderText="Name" />
                                    <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                    <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                </Columns>
                            </asp:GridView>
                            <ul class="pagination pagination-sm">
                                <li>
                                    <a href="#">Prev</a>
                                </li>
                                <li>
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                                <li>
                                    <a href="#">4</a>
                                </li>
                                <li>
                                    <a href="#">5</a>
                                </li>
                                <li>
                                    <a href="#">Next</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 column">
                            <h3>Married - Never look into these list (Danger)
                    </h3>
                            <asp:GridView ID="GridView4" runat="server" CssClass="table" AlternatingRowStyle-CssClass="active" RowStyle-CssClass="success"
                                AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="name" HeaderText="Name" />
                                    <asp:BoundField DataField="birthday" HeaderText="Birthday" />
                                    <asp:BoundField DataField="relationship_status" HeaderText="Status" />
                                </Columns>
                            </asp:GridView>
                        </div>

                    </div>
                    <div class="row clearfix">
                        <div class="col-md-4 column">
                            <address><strong>Twitter, Inc.</strong><br>
                                795 Folsom Ave, Suite 600<br>
                                San Francisco, CA 94107<br>
                                <abbr title="Phone">P:</abbr>
                                (123) 456-7890</address>
                        </div>
                        <div class="col-md-4 column">
                            <h2>Heading
					</h2>
                            <p>
                                Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
				
                            </p>
                            <p>
                                <a class="btn" href="#">View details »</a>
                            </p>
                        </div>
                        <div class="col-md-4 column">
                            <div class="jumbotron well">
                                <h1>Hello, world!
						</h1>
                                <p>
                                    This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
					
                                </p>
                                <p>
                                    <a class="btn btn-primary btn-large" href="#">Learn more</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
