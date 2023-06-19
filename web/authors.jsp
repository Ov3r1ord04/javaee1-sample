<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.techorda.db.Book" %>
<%@ page import="kz.bitlab.techorda.db.Author" %><%--
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
  <div class="container mt-5">
    <div class="row">
      <h4 class="text-center">
        <%=siteName%>
      </h4>
    </div>
  </div>
  <div class="row mt-3">
    <div class="col-12">
      <!-- Button trigger modal -->
      <button type="button" class="btn btn-success btn-sm" data-bs-toggle="modal" data-bs-target="#addAuthor">
        + Add Author
      </button>


      <div class="modal fade" id="addAuthor" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg ">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <%@ page import="kz.bitlab.techorda.db.Author" %>
              <form action="/add-author" method = "POST">
                <div class="row">
                  <div class="col-12">
                    <label>FIRST NAME: </label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <input type="text" class="form-control" name="first_name">
                  </div>
                </div>

                <div class="row mt-3">
                  <div class="col-12">
                    <label>LAST NAME: </label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <input type="text" class="form-control" name="last_name">
                  </div>
                </div>

                <div class="row mt-3">
                  <div class="col-12">
                    <label>INSTAGRAM: </label>
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-12">
                    <input type="text" class="form-control" name="instagram">
                  </div>
                </div>

                <div class="row mt-3">
                  <div class="col-12">
                    <button class="btn btn-success">ADD AUTHOR</button>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row mt-3">
    <div class="col-12">
      <table class="table table-striped table-hover">
        <thead>
        <tr>
          <th>ID</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Instagram</th>
        </tr>
        </thead>
        <tbody>
        <%
          ArrayList<Author> authors = (ArrayList<Author>)request.getAttribute("avtory");

          if(authors != null){
            for(Author author : authors){
        %>
        <tr>
          <td><%=author.getId()%></td>
          <td><%=author.getFirst_name()%></td>
          <td><%=author.getLast_name()%></td>
          <td><%=author.getInstagram()%></td>
          <td>
            <a class="btn btn-success btn-sm" href="/">Details</a>
          </td>

        </tr>
        <%
            }
          }
        %>
        </tbody>
      </table>
    </div>
  </div>
</div>

</body>
</html>
