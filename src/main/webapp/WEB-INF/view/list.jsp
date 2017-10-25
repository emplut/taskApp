<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%--@elvariable id="task" type="com.sda.demo.tasks.model.Task"--%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="common/header.jsp"/>

<body>

<jsp:include page="common/nav.jsp"/>

<div class="container">

    <div class="row" style="padding-top: 100px">

        <div class="col-md-12">
            <h1>Tasks list</h1>
            <table class="table">
                <thead>
                <tr>
                    <th>id</th>
                    <th>Task Name</th>
                    <th>Comment</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="task" items="${tasks}" varStatus="iter">
                        <tag:taskRow task="${task}" id="${iter.index + 1}"/>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <%--new task button--%>
        <div class="col-md-12">
            <a href="/new">
                <button type="button" class="btn btn-success">New Task</button>
            </a>
        </div>

        <hr>
    </div>

</div><!-- /.container -->
</body>
</html>