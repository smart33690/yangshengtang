<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>数据统计后台</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="./bootstrap-paginator.js"></script>

</head>
<body>
<table  class="table table-bordered" align="center" width="50%">
    <caption style="text-align: center;font-size: 50px"><b>养生堂h5测试数据统计</b></caption>
    <tr>
        <th>编号</th>
        <th>名字</th>
        <th>测试结果</th>
        <th>测试时间</th>
    </tr>
    <c:forEach items="${list }" var="user">
        <tr>
            <td>${user.id }</td>
            <td>${user.name }</td>
            <td>${user.result }</td>
            <td>${user.timeStr }</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
