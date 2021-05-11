<%
	// < %  % >  estos simbolos son para escribir en java, se llama Scriplet, puede haber mas de una linea
	// Esto es codigo Java, se ejecuta en el Servidor, no en el Navegador
	String pagina = request.getParameter("page");
	
	// si queremos pintar un valor por pantalla usamos <%= % >

%>

 <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
   <div class="container-fluid">
     <a class="navbar-brand" href="#">MI WEB</a>
     <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
     <div class="collapse navbar-collapse" id="navbarNavDropdown">
       <ul class="navbar-nav">
         <li class="nav-item">
           <a class="nav-link <%= ( pagina.equals("login") ) ? "active" : "" %>" 
              href="index.jsp?page=login">Login</a>
         </li>
         <li class="nav-item">
           <a class="nav-link <%= ( pagina.equals("participantes") ) ? "active" : "" %>" 
              href="participantes.jsp?page=participantes">Participantes</a>
         </li>
         <li class="nav-item">
           <a class="nav-link <%= ( pagina.equals("formulario") ) ? "active" : "" %>" 
              href="formulario.jsp?page=formulario">Formulario Alta</a>
         </li>
       </ul>
     </div>
   </div>
 </nav>
 
 <hr>
 	parametro page <%=request.getParameter("page") %>
 <hr>