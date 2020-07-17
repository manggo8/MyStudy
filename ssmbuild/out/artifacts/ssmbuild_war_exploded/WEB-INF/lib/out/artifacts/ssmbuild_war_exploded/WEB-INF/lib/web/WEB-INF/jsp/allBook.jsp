<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 2020/6/16
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <a href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
    <a href="${pageContext.request.contextPath}/book/allBook">显示全部</a>
</div>
<div>
    <form action="${pageContext.request.contextPath}/book/queryBook" method="post">
        <input type="text" name="queryBookName" placeholder="请输入书籍名称">
        <input type="submit" value="查询">
    </form>
</div>
    <table border="1px">
        <thead>
            <tr>
                <th>书籍编号</th>
                <th>书籍名称</th>
                <th>书籍数量</th>
                <th>书籍详情</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${list}">
                <tr>
                    <td>${book.bookID}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.detail}</td>
                    <td>
                        <span style="color: red;">${error}</span>
                        <a href="${pageContext.request.contextPath}/book/toUpdate?id=${book.bookID}">修改</a> | &nbsp;| &nbsp;
                        <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
