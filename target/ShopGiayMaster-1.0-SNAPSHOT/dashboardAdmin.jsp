<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 12/7/2021
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assents/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assents/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Light Bootstrap Dashboard - Free Bootstrap 4 Admin Dashboard by Creative Tim</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assents/cssadmin/bootstrap.min.css" rel="stylesheet" />
    <link href="assents/cssadmin/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assents/cssadmin/demo.css" rel="stylesheet" />
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>

<body>
<div class="wrapper">
    <div class="sidebar" data-image="assents/img/sidebar-5.jpg">
        <!--
    Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

    Tip 2: you can also add an image using data-image tag
-->
        <div class="sidebar-wrapper" style="background: limegreen">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    Shop A3H
                </a>
            </div>
            <ul class="nav">
                <li class="nav-item active">
                    <a class="nav-link" href="dashboardAdmin.jsp">
                        <i class="nc-icon nc-chart-pie-35"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="createProductAdmin.jsp">
                        <i class="nc-icon nc-circle-09"></i>
                        <p>Table Product</p>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="tableAdmin.jsp">
                        <i class="nc-icon nc-notes"></i>
                        <p>Table Category</p>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="./updateProductAdmin.jsp">
                        <i class="nc-icon nc-pin-3"></i>
                        <p>Maps</p>
                    </a>
                </li>
                <li>
                    <a class="nav-link" href="./notifications.jsp">
                        <i class="nc-icon nc-bell-55"></i>
                        <p>Notifications</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#pablo"> Dashboard </a>
                <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item">
                            <a href="#" class="nav-link" data-toggle="dropdown">
                                <i class="nc-icon nc-palette"></i>
                                <span class="d-lg-none">Dashboard</span>
                            </a>
                        </li>
                        <li class="dropdown nav-item">
                            <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                <i class="nc-icon nc-planet"></i>
                                <span class="notification">5</span>
                                <span class="d-lg-none">Notification</span>
                            </a>
                            <ul class="dropdown-menu">
                                <a class="dropdown-item" href="#">Notification 1</a>
                                <a class="dropdown-item" href="#">Notification 2</a>
                                <a class="dropdown-item" href="#">Notification 3</a>
                                <a class="dropdown-item" href="#">Notification 4</a>
                                <a class="dropdown-item" href="#">Another notification</a>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nc-icon nc-zoom-split"></i>
                                <span class="d-lg-block">&nbsp;Search</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#pablo">
                                <span class="no-icon">Account</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="no-icon">Dropdown</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                                <div class="divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logoutAdmin">
                                <span class="no-icon">Log out</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card ">
                            <div id="chart_div" style="width: 1200px; height: 500px;margin-left: 20px"></div>
                            <%--                            <div class="card-header ">--%>
                            <%--                                <h4 class="card-title">Số lượng sản phẩm theo danh mục</h4>--%>
                            <%--                                <p class="card-category">Last Campaign Performance</p>--%>
                            <%--                            </div>--%>
                            <%--                            <div class="card-body ">--%>
                            <%--                                <div id="chartPreferences" class="ct-chart ct-perfect-fourth"></div>--%>
                            <%--                                <div class="legend">--%>
                            <%--                                    <i class="fa fa-circle text-info"></i> Open--%>
                            <%--                                    <i class="fa fa-circle text-danger"></i> Bounce--%>
                            <%--                                    <i class="fa fa-circle text-warning"></i> Unsubscribe--%>
                            <%--                                </div>--%>
                            <%--                                <hr>--%>
                            <%--                                <div class="stats">--%>
                            <%--                                    <i class="fa fa-clock-o"></i> Campaign sent 2 days ago--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                        </div>
                    </div>
                    <%--                    <div class="col-md-8">--%>
                    <%--                        <div class="card ">--%>
                    <%--&lt;%&ndash;                            <div id="chart_div"></div>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                            <div class="card-header ">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                <h4 class="card-title">Users Behavior</h4>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                <p class="card-category">24 Hours performance</p>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                            <div class="card-body ">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                <div id="chartHours" class="ct-chart"></div>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                            <div class="card-footer ">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                <div class="legend">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                    <i class="fa fa-circle text-info"></i> Open&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                    <i class="fa fa-circle text-danger"></i> Click&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                    <i class="fa fa-circle text-warning"></i> Click Second Time&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                <hr>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                <div class="stats">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                    <i class="fa fa-history"></i> Updated 3 minutes ago&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card ">
                            <div id="piechart" style="width: 900px; height: 500px;"></div>
                            <%--                            <div class="card-header ">--%>
                            <%--                                <h4 class="card-title">2017 Sales</h4>--%>
                            <%--                                <p class="card-category">All products including Taxes</p>--%>
                            <%--                            </div>--%>
                            <%--                            <div class="card-body ">--%>
                            <%--                                --%>
                            <%--                                <div id="chartActivity" class="ct-chart"></div>--%>
                            <%--                            </div>--%>
                            <%--                            <div class="card-footer ">--%>
                            <%--                                <div class="legend">--%>
                            <%--                                    <i class="fa fa-circle text-info"></i> Tesla Model S--%>
                            <%--                                    <i class="fa fa-circle text-danger"></i> BMW 5 Series--%>
                            <%--                                </div>--%>
                            <%--                                <hr>--%>
                            <%--                                <div class="stats">--%>
                            <%--                                    <i class="fa fa-check"></i> Data information certified--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav>
                    <ul class="footer-menu">
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Blog
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-center">
                        ©
                        <script>
                            document.write(new Date().getFullYear())
                        </script>
                        <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                    </p>
                </nav>
            </div>
        </footer>
    </div>
</div>
<!--   -->

<%--<div id="chart_div" style="width: 1200px; height: 500px;margin-left: 20px"></div>--%>
</body>
<script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'category');
        data.addColumn('number', 'Quantity');
        data.addRows([
            <c:forEach items="${reportPie}" var="repP">
            ['${repP[0]}',${repP[1]}],
            </c:forEach>
        ]);

        var options = {
            title: 'Số Lượng Sản Phẩm Được Mua'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
    }
</script>
<script type="text/javascript">
    google.charts.load('current', {packages: ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawTopX);

    function drawTopX() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Thời gian');
        data.addColumn('number', 'Tổng sản phẩm');
        data.addColumn('number', 'Doanh thu (nghìn VND)');
        data.addRows([
            <c:forEach items="${reportColumn}" var="repC">
            ['${repC[0]}',${repC[1]}, ${repC[2]}],
            </c:forEach>
        ]);

        var options = {
            chart: {
                title: 'Doanh Thu Sản Phẩm',
                'titleTextStyle': {
                    'text-align': 'center',
                }
            },
            axes: {
                x: {
                    0: {side: 'top'}
                }
            },
            hAxis: {
                title: 'Ngày',
                viewWindow: {
                    min: [7, 30, 0],
                    max: [17, 30, 0]
                }
            }
        };

        var materialChart = new google.charts.Bar(document.getElementById('chart_div'));
        materialChart.draw(data, options);
    }
</script>
<!--   Core JS Files   -->
<script src="assents/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assents/js/core/popper.min.js" type="text/javascript"></script>
<script src="assents/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assents/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="assents/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assents/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assents/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assents/js/demo.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // Javascript method's body can be found in assents/js/demos.js
        demo.initDashboardPageCharts();

        demo.showNotification();

    });
</script>

</html>


