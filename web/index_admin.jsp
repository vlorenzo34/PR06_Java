<%-- 
    Document   : index
    Created on : 12-abr-2016, 12:36:39
    Author     : Daniel
--%>

<%@page import="model.Consultas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Clientes"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:p="http://primefaces.org/ui">
    <h:head>
        <title>Panel Administrador</title>
        <link rel="stylesheet" href="css/style.css">
    </h:head>
    <h:body>
        Bienvenido 
        <%
            HttpSession sesion = request.getSession();
            String admin = (String)sesion.getAttribute("admin");
            out.println(admin);
        %>
        <br/>
        <a href="crear_producto.xhtml">Crear producto</a>
        <br/>
        <%
            ArrayList<Clientes> lista = new ArrayList<Clientes>();
            
            Consultas con = new Consultas();
            
            con.MostrarClientes(lista);
        %>
        <table>
            <th>Nombre cliente</th>
            <th>Apellidos cliente</th>
            <th>Correo cliente</th>
            <th>Password cliente</th>
        <%
            for(Clientes cliente:lista){    
        %>
        <tr>
            <td>
                <% out.println(cliente.getNombre()); %>
            </td>
            <td>
                <% out.println(cliente.getApellidos()); %>
            </td>
            <td>
                <% out.println(cliente.getEmail()); %>
            </td>
            <td>
                <% out.println(cliente.getPassword()); %>
            </td>
            <td>
                <a href="#">Modificar</a>
            </td>
            <td>
                <a href="#">Eliminar</a>
            </td>
        </tr>
        
        <%
            }
        %>
        
        </table>
    </h:body>
</html>

