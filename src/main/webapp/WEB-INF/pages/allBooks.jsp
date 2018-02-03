<%--
  Created by IntelliJ IDEA.
  User: Владимир
  Date: 01.02.2018
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <title>TestTask Books</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel='stylesheet' href='${pageContext.request.contextPath}/resources/core/styles.css'>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

</head>
<body>
<div class="container myrow-container" style="margin-left: 150px;">
    <div class="panel">
        <div class="panel-heading" style="background-color:#786455">
            <h3 class="panel-title ">
                <div align="left"><a id="createBook" class="aCreateBook" href="createBook">Create new Book</a></div>
            </h3>
        </div>
        <div class="panel-body" >

            <c:if test="${empty booksList}">
                There are no Books
            </c:if>
            <c:if test="${not empty booksList}">
                <form action="searchBook">
                    <div class="row">
                        <div class="col-md-2">Search books:</div>
                        <div class="col-md-2"><input type="text" name="searchName" id="searchName"
                                                     placeholder="  search book"/></div>
                        <div class="col-md-2"><input class="btn btn-xs" type='submit' value='Search'/></div>
                    </div>
                    <br>
                </form>

                <table class="table table-hover table-bordered" >
                    <thead style="background-color: #b39b89;">
                    <tr>
                        <th>Id</th>
                        <th>Author</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>ISBN</th>
                        <th>Date of placement</th>
                        <th>Print Year</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${booksList}" var="book">
                        <tr>
                            <th><c:out value="${book.id}"/></th>
                            <th><c:out value="${book.author}"/></th>
                            <th>
                                <a id="${book.id}" href="${book.adress}">
                                    <c:out value="${book.title}"/>
                                </a>
                            </th>

                            <th style="font-size: 80%">
                                <c:out value="${book.description}"/>
                            </th>
                            <th><c:out value="${book.isbn}"/></th>
                            <th>
                                <c:out value="${book.dateOfCreation.format(formatter)}"/>
                            </th>
                            <th><c:out value="${book.printYear}"/></th>
                            <th><a class="aEdit" href="editBook?id=<c:out value='${book.id}'/>">Edit</a></th>
                            <th><a class="aDelete" href="deleteBook?id=<c:out value='${book.id}'/>">Delete</a></th>
                            <c:if test="${book.readAlready==true}">
                                <th>Прочитано</th>
                            </c:if>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
        <div align="center" class="panel-footer" style="background-color:#786455" id="pagination">
            <c:url value="/" var="prev">

                <c:param name="page" value="${page-1}"/>
            </c:url>

            <c:if test="${page > 1}">
                <a href="<c:out value="${prev}" />" class="pn prev">Prev</a>
            </c:if>

            <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                <c:choose>
                    <c:when test="${page == i.index}">
                        <span>${i.index}</span>
                    </c:when>
                    <c:otherwise>
                        <c:url value="/" var="url">
                            <c:param name="page" value="${i.index}"/>
                        </c:url>
                        <a href='<c:out value="${url}" />'>${i.index}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:url value="/" var="next">
                <c:param name="page" value="${page + 1}"/>
            </c:url>
            <c:if test="${page + 1 <= maxPages}">
                <a href='<c:out value="${next}" />' class="pn next">Next</a>
            </c:if>
        </div>
    </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/core/skript.js"></script>
</body>
</html>
