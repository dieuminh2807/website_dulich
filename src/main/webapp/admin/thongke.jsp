<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type = "text/javascript" src = "/admin/gstatic/loader.js">
</script>
<script type="text/javascript">
    google.charts.load('current', {packages: ['corechart', 'line']});
</script>
<div class="container">
    <div class="row">
        <div class="col-12" id="thongkeChart"></div>
    </div>
</div>
<script language="JavaScript">
    function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Tháng');
        data.addColumn('number', 'Số lần đặt');
        data.addRows([
            <c:forEach items="${requestScope.soLanDat}" var="thongkesolan" varStatus="loop">
                ['${thongkesolan.key}', ${thongkesolan.value}] ${not loop.last ? ',' : ''}
            </c:forEach>

        ]);

        // Set chart options
        var options = {
            'title': 'Doanh thu hàng tháng',
            hAxis: {
                title: 'Tháng'
            },
            vAxis: {
                title: 'VNĐ'
            },
            'width': 1000,
            'height': 500
        };
        var chart = new google.visualization.LineChart(document.getElementById('thongkeChart'));
        chart.draw(data, options);
    }

    google.charts.setOnLoadCallback(drawChart);
</script>