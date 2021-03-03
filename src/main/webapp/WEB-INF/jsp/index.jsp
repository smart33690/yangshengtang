<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>title</title>
</head>
<body>
<table border="1" align="center" width="50%">
    <table>
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
            <td>${user.age }</td>
        </tr>
    </c:forEach>
</table>
    <div id="example" style="text-align: center"> <ul id="pageLimit"></ul> </div>
    <script>
        $('#pageLimit').bootstrapPaginator({
            currentPage: 1,//当前的请求页面。
            totalPages: 20,//一共多少页。
            size:"normal",//应该是页眉的大小。
            bootstrapMajorVersion: 3,//bootstrap的版本要求。
            alignment:"right",
            numberOfPages:5,//一页列出多少数据。
            itemTexts: function (type, page, current) {//如下的代码是将页眉显示的中文显示我们自定义的中文。
                switch (type) {
                    case "first": return "首页";
                    case "prev": return "上一页";
                    case "next": return "下一页";
                    case "last": return "末页";
                    case "page": return page;
                }
            }
        });
    </script>
</body>
</html>
