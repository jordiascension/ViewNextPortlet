<%@include file="init.jsp" %>


<h1>Modificar Factura</h1>

<p>
	<a href='<portlet:renderURL/>'>Volver</a>
</p>

<portlet:actionURL name="modificarFactura" var="modificarFacturaURL"></portlet:actionURL>

<% 
   String num = renderRequest.getParameter("num");
   String cliente = renderRequest.getParameter("cliente");
   String importe = renderRequest.getParameter("importe");
%>
<form method="post" action="${modificarFacturaURL}">
  <div class="form-group">
    <label for="usr">num:</label>
  	<input type="text" class="form-control" name="<portlet:namespace />num" value="<%=num%>" readonly>
  </div>
  <div class="form-group">
    <label for="usr">cliente:</label>
  	<input type="text" class="form-control" name="<portlet:namespace />cliente" value="<%=cliente%>">
  </div>
  <div class="form-group">
    <label for="usr">importe:</label>
  	<input type="text" class="form-control" name="<portlet:namespace />importe" value="<%=importe%>">
  </div>
  <div class="text-center">
  	<button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>