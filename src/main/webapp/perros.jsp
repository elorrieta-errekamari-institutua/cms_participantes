<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="plantillas/cabecera.jsp"/>
<jsp:include page="plantillas/menu.jsp"/>

 <main class="container">
    <h1>Listado Perros</h1>
    
     <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">nombre</th>
            <th scope="col">raza</th>
            <th scope="col">historia</th>            
          </tr>
        </thead>
        <tbody>
             
	        <c:forEach var="p" items="${perros}">
	          <tr>
	            <th scope="row">${p.id}</th>	           
	            <td>${p.nombre}</td>
	            <td>${p.raza}</td>
	            <td>${p.historia}</td>
	          </tr>
	         </c:forEach> 
	         
        <!-- terminamos de recorrer -->
        </tbody>
      </table>
            
</main> 

<jsp:include page="plantillas/footer.jsp"/>