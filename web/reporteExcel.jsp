<%-- 
    Document   : reporteExcel
    Created on : 30/09/2019, 20:04:02
    Author     : maxim
--%>
<%@page import="utilerias.Conversiones, java.util.Date" %>
<%@page contentType="application/vnd.ms-excel"%>
<%
    String nombreArchivo="reporte.xls";
    response.setHeader("Content-Disposition", "inline; filename="+nombreArchivo);
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte de Excel</title>
    </head>
    <body>
        <h1>reporte de excel</h1>
        <br>
        <table border="1">
            <tr>
                <th>Curso</th>
                <th>Descripcion</th>
                <th>Fecha inicio</th>
            </tr>
            <tr>
                <td>1.Fundamentos de Java</td>
                <td>Aprenderemos de la sintaxis basica de java</td>
                <td><%=Conversiones.format( new Date() )%></td>
            </tr>
            <tr>
                <td>2.Programacion con java</td>
                <td>Pondremos en practica conceptos de
                la programacion orientada a objetos
                </td>
                <td><%=Conversiones.format(new Date())%></td>
            </tr>
        </table>
    </body>
</html>
