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
        <h1>
            <c:if test="${producto.id == 0}">
                Nuevo Producto
            </c:if>
            <c:if test="${producto.id != 0}">

                Editar Producto
            </c:if>

        </h1>
        <form action="Inicio" method="post">
            <input type="hidden" name="id" value="${producto.id}"/>
            <table>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="descripcion" value="${producto.descripcion}"></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="text" name="cantidad" value="${producto.cantidad}"></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="${producto.precio}"></td>
                </tr>

                <tr>
                    <td>Categoria</td>
                    <td><input type="text" name="categoria" value="${producto.categoria}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
