<jsp:include page="plantillas/cabecera.jsp"/>
<jsp:include page="plantillas/menu.jsp"/>

<main class="container">

	 <h1>Dar de Alta Nuevo Participantes</h1>
        <form action="#" class="w-50">

            <label for="nombre" class="form-label">Nombre:</label>
            <input type="text" 
                   name="nombre" 
                   id="nombre"
                   required 
                   autofocus 
                   class="form-control" 
                   placeholder="Nombre sin apellidos">

            <label for="apellidos" class="form-label">Apellidos:</label>
            <input type="text" 
                    name="apellidos" 
                    id="apellidos"
                    required                      
                    class="form-control" 
                    placeholder="escribe los 2 apellidos">

                    
            <label for="email" class="form-label">Email:</label>
            <input type="email" 
                    name="email"
                    id="email" 
                    required                      
                    class="form-control" 
                    placeholder="tu@correo.com">

            <input type="submit" value="Crear" class="btn btn-block btn-primary mt-4">
        </form>

</main> 

<jsp:include page="plantillas/footer.jsp"/>