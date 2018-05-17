<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@page session="true"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath }/assets/admin/plugins/images/favicon.png">
<title>Elite Admin - is a responsive admin template</title>
<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/bootstrap-extension/css/bootstrap-extension.css"
	rel="stylesheet">
<!-- Menu CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"
	rel="stylesheet">
<!-- toast CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/toast-master/css/jquery.toast.css"
	rel="stylesheet">
<!-- morris CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/morrisjs/morris.css"
	rel="stylesheet">
<!-- Dropify  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/dropify/dist/css/dropify.min.css">

<!-- animation CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/css/animate.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/css/style.css"
	rel="stylesheet">
<!-- color CSS -->
<link
	href="${pageContext.request.contextPath }/assets/admin/css/colors/default.css"
	id="theme" rel="stylesheet">

<link
	href="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/datatables/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/assets/admin/css/buttons.dataTables.min.css"
	rel="stylesheet" type="text/css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body>
	<!-- Preloader -->
	<div class="preloader">
		<div class="cssload-speeding-wheel"></div>
	</div>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top m-b-0">
			<div class="navbar-header">
				<a class="navbar-toggle hidden-sm hidden-md hidden-lg "
					href="javascript:void(0)" data-toggle="collapse"
					data-target=".navbar-collapse"><i class="ti-menu"></i></a>
				<div class="top-left-part">
					<a class="logo" href="${pageContext.request.contextPath }/admin/welcome.html"><b> <!--This is dark logo icon-->
							<img
							src="${pageContext.request.contextPath }/assets/admin/plugins/images/eliteadmin-logo.png"
							alt="home" class="dark-logo" /> <!--This is light logo icon--> <img
							src="${pageContext.request.contextPath }/assets/admin/plugins/images/eliteadmin-logo-dark.png"
							alt="home" class="light-logo" />
					</b><span class="hidden-xs"> <!--This is dark logo text--> <img
							src="${pageContext.request.contextPath }/assets/admin/plugins/images/eliteadmin-text.png"
							alt="home" class="dark-logo" /> <!--This is light logo text--> <img
							src="${pageContext.request.contextPath }/assets/admin/plugins/images/eliteadmin-text-dark.png"
							alt="home" class="light-logo" />
					</span></a>
				</div>
				<ul class="nav navbar-top-links navbar-left hidden-xs">
					<li><a href="javascript:void(0)"
						class="open-close hidden-xs waves-effect waves-light"><i
							class="icon-arrow-left-circle ti-menu"></i></a></li>
					<li>
						<form role="search" class="app-search hidden-xs">
							<input type="text" placeholder="Search..." class="form-control">
							<a href="#"><i class="fa fa-search"></i></a>
						</form>
					</li>
				</ul>
				<ul class="nav navbar-top-links navbar-right pull-right">

					<!-- /.Megamenu -->
					<li class="right-side-toggle"><a
						class="waves-effect waves-light" href="javascript:void(0)"><i
							class="ti-settings"></i></a></li>
					<!-- /.dropdown -->
				</ul>
			</div>
			<!-- /.navbar-header -->
			<!-- /.navbar-top-links -->
			<!-- /.navbar-static-side -->
		</nav>
		<!-- Left navbar-header -->
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse slimscrollsidebar">
				<div class="user-profile">
					<div class="dropdown user-pro-body">
						<div>
							<img
								src="${pageContext.request.contextPath }/assets/user/images/accounts/${sessionScope.user.photo }"
								alt="user-img" class="thumb-lg img-circle">
						</div>
						<a href="#" class="dropdown-toggle u-dropdown"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"> ${sessionScope.username } <span class="caret"></span></a>
						<ul class="dropdown-menu animated flipInY">
							<li><a href="${pageContext.request.contextPath }/admin/profile/ ${sessionScope.username }.html"><i class="ti-user"></i> My Profile</a></li>
							<li><a
								href="${pageContext.request.contextPath }/admin/process-logout.html"><i
									class="fa fa-power-off"></i> Logout</a></li>
						</ul>
					</div>
				</div>
				<ul class="nav" id="side-menu">
					<li class="sidebar-search hidden-sm hidden-md hidden-lg">
						<!-- input-group -->
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>
					<li class="nav-small-cap m-t-10">--- Main Menu</li>
					<li><a href="${pageContext.request.contextPath }/admin/welcome.html" class="waves-effect"><i
							data-icon=")" class="linea-icon linea-basic fa-fw"></i> <span
							class="hide-menu">Dashboard</span></a>
					</li>
					<li><a href="${pageContext.request.contextPath }/admin/supplier.html" class="waves-effect active"><i
							class="linea-icon linea-basic fa-fw" data-icon="v"></i> <span
							class="hide-menu"> Supplier <span class="fa arrow"></span>
								<span class="label label-rouded label-custom pull-right">2</span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="${pageContext.request.contextPath }/admin/supplier.html">Index</a></li>
							<li><a href="${pageContext.request.contextPath }/admin/supplier/add.html">Add new Supplier</a></li>

						</ul></li>
					<li><a href="${pageContext.request.contextPath }/admin/category.html" class="waves-effect active"><i
							class="linea-icon linea-basic fa-fw" data-icon="v"></i> <span
							class="hide-menu"> Category <span class="fa arrow"></span>
								<span class="label label-rouded label-custom pull-right">2</span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="${pageContext.request.contextPath }/admin/category.html">Index</a></li>
							<li><a href="${pageContext.request.contextPath }/admin/category/add.html">Add new Category</a></li>

						</ul></li>
					<li><a href="${pageContext.request.contextPath }/admin/brand.html" class="waves-effect active"><i
							class="linea-icon linea-basic fa-fw" data-icon="v"></i> <span
							class="hide-menu"> Brand <span class="fa arrow"></span>
								<span class="label label-rouded label-custom pull-right">2</span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="${pageContext.request.contextPath }/admin/brand.html">Index</a></li>
							<li><a href="${pageContext.request.contextPath }/admin/brand/add.html">Add new Brand</a></li>
						</ul></li>
					<li><a href="${pageContext.request.contextPath }/admin/product.html" class="waves-effect active"><i
							class="linea-icon linea-basic fa-fw" data-icon="v"></i> <span
							class="hide-menu"> Product <span class="fa arrow"></span>
								<span class="label label-rouded label-custom pull-right">2</span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="${pageContext.request.contextPath }/admin/product.html">Index</a></li>
							<li><a href="${pageContext.request.contextPath }/admin/product/add.html">Add new product</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- Left navbar-header end -->
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<!--content -->
				<tiles:insertAttribute name="content">

				</tiles:insertAttribute>
				<!-- content -->
				<!-- .right-sidebar -->
				<div class="right-sidebar">
					<div class="slimscrollright">
						<div class="rpanel-title">
							Service Panel <span><i class="ti-close right-side-toggle"></i></span>
						</div>
						<div class="r-panel-body">
							<ul>
								<li><b>Layout Options</b></li>
								<li>
									<div class="checkbox checkbox-info">
										<input id="checkbox1" type="checkbox" class="fxhdr"> <label
											for="checkbox1"> Fix Header </label>
									</div>
								</li>
								<li>
									<div class="checkbox checkbox-warning">
										<input id="checkbox2" type="checkbox" class="fxsdr"> <label
											for="checkbox2"> Fix Sidebar </label>
									</div>
								</li>
								<li>
									<div class="checkbox checkbox-success">
										<input id="checkbox4" type="checkbox" class="open-close">
										<label for="checkbox4"> Toggle Sidebar </label>
									</div>
								</li>
							</ul>
							<ul id="themecolors" class="m-t-20">
								<li><b>With Light sidebar</b></li>
								<li><a href="javascript:void(0)" theme="default"
									class="default-theme working">1</a></li>
								<li><a href="javascript:void(0)" theme="green"
									class="green-theme">2</a></li>
								<li><a href="javascript:void(0)" theme="gray"
									class="yellow-theme">3</a></li>
								<li><a href="javascript:void(0)" theme="blue"
									class="blue-theme">4</a></li>
								<li><a href="javascript:void(0)" theme="purple"
									class="purple-theme">5</a></li>
								<li><a href="javascript:void(0)" theme="megna"
									class="megna-theme">6</a></li>
								<li><b>With Dark sidebar</b></li>
								<br />
								<li><a href="javascript:void(0)" theme="default-dark"
									class="default-dark-theme">7</a></li>
								<li><a href="javascript:void(0)" theme="green-dark"
									class="green-dark-theme">8</a></li>
								<li><a href="javascript:void(0)" theme="gray-dark"
									class="yellow-dark-theme">9</a></li>
								<li><a href="javascript:void(0)" theme="blue-dark"
									class="blue-dark-theme">10</a></li>
								<li><a href="javascript:void(0)" theme="purple-dark"
									class="purple-dark-theme">11</a></li>
								<li><a href="javascript:void(0)" theme="megna-dark"
									class="megna-dark-theme">12</a></li>
							</ul>

						</div>
					</div>
				</div>
				<!-- /.right-sidebar -->
			</div>
			<!-- /.container-fluid -->
			<footer class="footer text-center"> 2017 &copy; Elite Admin
				brought to you by themedesigner.in </footer>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/bootstrap/dist/js/tether.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/bootstrap/dist/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/bootstrap-extension/js/bootstrap-extension.min.js"></script>
	<!-- Menu Plugin JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
	<!--slimscroll JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/waves.js"></script>
	<!--Counter js -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/counterup/jquery.counterup.min.js"></script>
	<!--Morris JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/morrisjs/morris.js"></script>
	<!-- Custom Theme JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/custom.min.js"></script>
	<!-- Sparkline chart JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/jquery-sparkline/jquery.charts-sparkline.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/js/dashboard1.js"></script>
	<!-- Sparkline chart JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/jquery-sparkline/jquery.charts-sparkline.js"></script>
	<!--Style Switcher -->
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/datatables/jquery.dataTables.min.js"></script>
	<script>
    $(document).ready(function() {
        $('#myTable').DataTable();
        $(document).ready(function() {
            var table = $('#example').DataTable({
                "columnDefs": [{
                    "visible": false,
                    "targets": 2
                }],
                "order": [
                    [2, 'asc']
                ],
                "displayLength": 25,
                "drawCallback": function(settings) {
                    var api = this.api();
                    var rows = api.rows({
                        page: 'current'
                    }).nodes();
                    var last = null;

                    api.column(2, {
                        page: 'current'
                    }).data().each(function(group, i) {
                        if (last !== group) {
                            $(rows).eq(i).before(
                                '<tr class="group"><td colspan="5">' + group + '</td></tr>'
                            );

                            last = group;
                        }
                    });
                }
            });

            // Order by the grouping
            $('#example tbody').on('click', 'tr.group', function() {
                var currentOrder = table.order()[0];
                if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                    table.order([2, 'desc']).draw();
                } else {
                    table.order([2, 'asc']).draw();
                }
            });
        });
    });
    $('#example23').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
    </script>
	<script
		src="${pageContext.request.contextPath }/assets/admin/plugins/bower_components/dropify/dist/js/dropify.min.js"></script>
	<script>
    $(document).ready(function() {
        // Basic
        $('.dropify').dropify();

        // Translated
        $('.dropify-fr').dropify({
            messages: {
                default: 'Glissez-déposez un fichier ici ou cliquez',
                replace: 'Glissez-déposez un fichier ou cliquez pour remplacer',
                remove: 'Supprimer',
                error: 'Désolé, le fichier trop volumineux'
            }
        });

        // Used events
        var drEvent = $('#input-file-events').dropify();

        drEvent.on('dropify.beforeClear', function(event, element) {
            return confirm("Do you really want to delete \"" + element.file.name + "\" ?");
        });

        drEvent.on('dropify.afterClear', function(event, element) {
            alert('File deleted');
        });

        drEvent.on('dropify.errors', function(event, element) {
            console.log('Has Errors');
        });

        var drDestroy = $('#input-file-to-destroy').dropify();
        drDestroy = drDestroy.data('dropify')
        $('#toggleDropify').on('click', function(e) {
            e.preventDefault();
            if (drDestroy.isDropified()) {
                drDestroy.destroy();
            } else {
                drDestroy.init();
            }
        })
    });
    </script>

</body>


<!-- Mirrored from eliteadmin.themedesigner.in/demos/eliteadmin-ecommerce/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Jun 2017 08:50:57 GMT -->
</html>
