<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Book" %><%--
  Created by IntelliJ IDEA.
  User: Ерасыл Сайлаубай
  Date: 11.06.2023
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>

</head>
<body>
    <%@include file="navbar.jsp"%>
    <div class="container mt-3">
        <div class="row">
            <div class="col-6 mx-auto">
               <%@include file = "addform.jsp"%>
            </div>
        </div>
    </div>
</body>
</html>
