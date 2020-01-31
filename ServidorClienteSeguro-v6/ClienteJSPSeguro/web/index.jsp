<%-- 
    Document   : index
    Created on : 11-abr-2019, 18:52:09
    Author     : link
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Seguro</title>
    </head>
    <body>
        <h1>Hola Seguro</h1>    <%-- start web service invocation --%><hr/>
    <%
    try {
	org.me.serviciowebseguro.ServicioWebSeguro_Service service = new org.me.serviciowebseguro.ServicioWebSeguro_Service();
	org.me.serviciowebseguro.ServicioWebSeguro port = service.getServicioWebSeguroPort();
	 // TODO initialize WS operation arguments here
	java.lang.String name = "2º DAMS 2018-2019";
	// TODO process result here
	java.lang.String result = port.hello(name);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>

    </body>
</html>
