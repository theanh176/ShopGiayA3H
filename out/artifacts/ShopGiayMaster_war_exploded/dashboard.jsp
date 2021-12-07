<%--
  Created by IntelliJ IDEA.
  User: Nguyen Huu Hieu
  Date: 11/23/2021
  Time: 12:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>

<body>
<%--HEADER ADMIN--%>
<c:import url="/header.jsp"/>
<%--/HEADER ADMIN--%>

<h1 style="text-align: center; color: red">THỐNG KÊ 7 NGÀY GẦN NHẤT</h1>
<div id="piechart" style="width: 900px; height: 500px;"></div>

<div id="chart_div" style="width: 1200px; height: 500px;margin-left: 20px"></div>

<!--Div that will hold the pie chart-->

<%----------- Pie chart-----------%>
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
            title: 'Số lượng sản phẩm theo danh mục'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
    }
</script>
<%----------/Pie chart-------------%>


<script type="text/javascript">
    google.charts.load('current', {packages: ['corechart', 'bar']});
    google.charts.setOnLoadCallback(drawTopX);

    function drawTopX() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Thời gian');
        data.addColumn('number', 'Tổng sản phẩm');
        data.addColumn('number', 'Doanh thu (triệu VND)');
        data.addRows([
<c:forEach items="${reportColumn}" var="repC">
            ['${repC[0]}',${repC[1]}, ${repC[2]}],
            </c:forEach>
        ]);

        var options = {
            chart: {
                title: 'Doanh thu sản phẩm',
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
</body>
</html>
