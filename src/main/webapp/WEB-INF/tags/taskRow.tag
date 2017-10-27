<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ attribute name="task" type="com.sda.demo.tasks.model.Task" required="true" %>
<%@ attribute name="id" type="java.lang.Integer" required="true" %>
<%@ taglib prefix="date" uri="/WEB_INF/tld/localDate.tld" %>

<tr>
    <th scope="row">${id}</th>
    <td>${task.name}</td>
    <td>${date:formatLocalDate(task.dateCreated, "d-MM-yyyy")}</td>
    <td>
        <a href="/details?id=${task.id}">
            <button type="button" class="btn btn-default">Details</button>
        </a>
        <a href="/edit?id=${task.id}">
            <button type="button" class="btn btn-info">Edit</button>
        </a>
        <a href="/delete?id=${task.id}">
            <button type="button" class="btn btn-danger">Delete</button>
        </a>
    </td>
</tr>