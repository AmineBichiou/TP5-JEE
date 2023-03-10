<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@include file="header.jsp" %>
<p></p>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h3>Home</h3>
        </div>
        <div class="card-body">
            <form action="chercher.do" method="get" style="display: flex; align-items: center;">
                <label>Keyword : </label>
                <input type="text" class="form-control w-25 ml-2" name="motCle" value="${model.motCle}" />
                <button type="submit" class="btn btn-primary ml-1">Search</button>
            </form>
            <table class="table table-striped">
                <tr>
                    <th>ID</th><th>Product Name</th><th>Price</th><th colspan="2" style="text-align: center">Actions</th>
                </tr>
                <c:forEach items="${model.produits}" var="p">
                    <tr>
                        <td>${p.idProduit }</td>
                        <td>${p.nomProduit }</td>
                        <td>${p.prix }</td>
                        <td><a onclick="return confirm('Are you sure ?')" href="supprimer.do?id=${p.idProduit }">Delete</a></td>
                        <td><a href="editer.do?id=${p.idProduit }">Edit</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
