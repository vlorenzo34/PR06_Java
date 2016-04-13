<%-- 
    Document   : index
    Created on : 12-abr-2016, 12:36:39
    Author     : Daniel
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:p="http://primefaces.org/ui">
    <h:head>
        <title>pagina de dani</title>
       
    </h:head>
    <h:body>
        Hola 
        <%
            HttpSession sesion = request.getSession();
            String admin = (String)sesion.getAttribute("admin");
            out.println(admin);
        %>
        <br>
        Todo OKAY
    </h:body>
</html>

