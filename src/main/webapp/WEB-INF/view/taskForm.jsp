<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="common/header.jsp"/>

<body>

<jsp:include page="common/nav.jsp"/>

<div class="container">

    <div class="row" style="padding-top: 100px">
        <div class="col-md-12">
            <h1>
                <c:choose>
                    <c:when test="${empty task.id}">
                        Add new task
                    </c:when>
                    <c:otherwise>
                        Edit task
                    </c:otherwise>
                </c:choose>
            </h1>
            <form:form method="POST" action="/add" modelAttribute="task">
                <form:hidden path="id"/>
                <form:hidden path="dateCreated"/>
                <div class="form-group row">
                    <form:label path="name" class="col-2 col-form-label">Name</form:label>
                    <div class="col-10">
                        <form:input path="name" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="comment" class="col-2 col-form-label">Comment</form:label>
                    <div class="col-10">
                        <form:input path="comment" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="priority" class="col-2 col-form-label">Priority</form:label>
                    <div class="col-10">
                        <form:input path="priority" class="form-control"/>
                    </div>
                </div>
                <div class="form-group row">
                    <form:label path="deadline" class="col-2 col-form-label">Deadline</form:label>
                    <div class="col-10">
                        <form:input path="deadline" class="form-control" type="datetime-local"/>
                    </div>
                </div>
                <input type="submit" value="Save" class="btn btn-primary"/>
            </form:form>
        </div>
    </div>
</div>
</body>
