<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>
            SEGUNDO PARCIAL TEM-742
            <br>
            Nombre: JUAN EFRAIN PAUCARA CASAS
            <br>
            CI: 7050746
        </h2>
        <h1>Productos</h1>
        
         <a href="Inicio?action=add">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descricpion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${productos}">
          

                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('esta seguro de elimianr el registro?'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
