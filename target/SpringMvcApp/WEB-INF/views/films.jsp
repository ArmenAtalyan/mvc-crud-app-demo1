<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Films page</title>
</head>
<body>
<h2>Films</h2>
<table>
    <tr>
        <th>id</th>
        <th>title</th>
        <th>year</th>
        <th>genre</th>
        <th>watched</th>
        <th>action</th>
    </tr>
    <c:forEach var="film" items="${filmList}">
        <h3>
            <tr>
                <td>${film.id}</td>
                <td>${film.title}</td>
                <td>${film.year}</td>
                <td>${film.genre}</td>
                <td>${film.watched}</td>
                <td>
                    <a href="/edit/${film.id}">edit</a>
                    <a href="/delete/${film.id}">delete</a>
                </td>
            </tr>
        </h3>
    </c:forEach>
</table>

<h3>Add</h3>
<c:url value="/add" var="add"/>
<h3>
    <a href="${pageContext.request.contextPath}/add">Add new film</a>
</h3>
</body>
</html>
