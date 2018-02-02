<%--
  Created by IntelliJ IDEA.
  User: Владимир
  Date: 01.02.2018
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TestTask Books</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel='stylesheet' href='${pageContext.request.contextPath}/resources/core/styles.css'>
</head>
<body class=".container-fluid" style="background-color:whitesmoke">
<div class="container myrow-container" style="margin-left: 150px;">
    <div class="panel panel-success">
        <div class="panel-heading" style="background-color:#786455">
            <h3 class="panel-title" style="color: #d1cbbc">
                Book Details
            </h3>
        </div>
        <div class="panel-body">

            <form:form id="UserRegisterForm" cssClass="form-horizontal" modelAttribute="book" method="post"
                       action="saveBook">

                <div id="hiddenAuthor" class="form-group">
                    <div class="control-label col-xs-3"><form:label path="author">Author</form:label></div>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" required="required"  path="author" value="${book.author}"/>
                    </div>
                </div>

                <div class="form-group">
                    <form:hidden path="id" value="${book.id}"/>
                    <form:label path="title" cssClass="control-label col-xs-3">Title</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" required="required" path="title" value="${book.title}"/>
                    </div>
                </div>
                <div class="form-group">
                    <form:label path="description" cssClass="control-label col-xs-3">Description</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" required="required" path="description" value="${book.description}"/>
                    </div>
                </div>
                <div class="form-group">
                    <form:label path="isbn" cssClass="control-label col-xs-3">ISBN</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" required="required" path="isbn" value="${book.isbn}"/>
                    </div>
                </div>
                <div class="form-group">
                    <form:label path="printYear" cssClass="control-label col-xs-3">Print Year</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" required="required" path="printYear" value="${book.printYear}"/>
                    </div>
                </div>
                <div class="form-group">
                    <form:label path="adress" cssClass="control-label col-xs-3">Address</form:label>
                    <div class="col-xs-6">
                        <form:input cssClass="form-control" required="required" path="adress" value="${book.adress}"/>
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-4">
                        </div>
                        <div class="col-xs-4">
                            <input type="submit" id="createBook" class="btn btn-primary" value="Create"/>
                        </div>
                        <div class="col-xs-4">
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>
