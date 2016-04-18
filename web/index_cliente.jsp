<%-- 
    Document   : index
    Created on : 12-abr-2016, 12:36:39
    Author     : Daniel
--%>

<%@page import="model.Consultas"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Productos"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:p="http://primefaces.org/ui">
    <h:head>
        <title>Inicio</title>
        <link rel="stylesheet" href="css/style.css">
    </h:head>
    <h:body>
        Hola 
        <%
            HttpSession sesion = request.getSession();
            String mail = (String)sesion.getAttribute("mail");
            out.println(mail);
        %>
        <br/>
        <br/>
        <%
            ArrayList<Productos> lista = new ArrayList<Productos>();
            
            Consultas con = new Consultas();
            
            con.MostrarProductos(lista);
        %>
        <table>
            <th>Nombre</th>
            <th>Descipcion</th>
            <th>Precio</th>
        <%
            for(Productos cliente:lista){    
        %>
        <tr>
            <td>
                <% out.println(cliente.getNombre()); %>
            </td>
            <td>
                <% out.println(cliente.getDescripcion()); %>
            </td>
            <td>
                <% out.println(cliente.getPrecio()); %>
            </td>
        </tr>
        
        <%
            }
        %>
        
        </table>
    </h:body>
</html>

