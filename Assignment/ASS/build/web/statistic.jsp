<%-- 
    Document   : statistic
    Created on : Mar 12, 2024, 10:46:14 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <body>
        <%@include file="tabar.jsp"%>
        <div 
            id="myChart" style="width:100%; max-width:800px; height:500px; margin-top: 50px">
        </div>

        <script>
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
                const data = google.visualization.arrayToDataTable([
                    ['Contry', 'Mhl'],
            <c:forEach items="${requestScope.listHash}" var="c">
                    ['${c.key}', ${c.value}],
            </c:forEach>
                ]);

                const options = {
                    title: 'Statistic Products'
                };

                const chart = new google.visualization.PieChart(document.getElementById('myChart'));
                chart.draw(data, options);
            }
        </script>
    </body>
</html>
