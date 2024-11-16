<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%
Map<String, String> errores = (Map<String, String>) request.getAttribute("errores");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manejo de Formulario</title>
    <link rel="stylesheet" href="index.css">
    <style>
        .error-message {
            color: red;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
<h1>Manejo de Formulario</h1>
<div>
    <form action="/formular/ingresar" method="post">
        <!-- Campo Username -->
        <label for="username">Ingrese el usuario</label>
        <input type="text" name="username" id="username" placeholder="Usuario">
        <% if (errores != null && errores.containsKey("username")) { %>
        <p class="error-message"><%= errores.get("username") %></p>
        <% } %>

        <!-- Campo Password -->
        <label for="password">Ingrese la contraseña</label>
        <input type="password" name="password" id="password" placeholder="Contraseña">
        <% if (errores != null && errores.containsKey("password")) { %>
        <p class="error-message"><%= errores.get("password") %></p>
        <% } %>

        <!-- Campo Email -->
        <label for="email">Ingrese el email</label>
        <input type="email" name="email" id="email" placeholder="alguien@example.com">
        <% if (errores != null && errores.containsKey("email")) { %>
        <p class="error-message"><%= errores.get("email") %></p>
        <% } %>

        <!-- Campo Lenguajes -->
        <label for="lenguajes">Lenguajes de programación</label>
        <select name="lenguajes" id="lenguajes" multiple>
            <option value="Java" selected>JAVA SE</option>
            <option value="jakartaee" selected>JAKARTA EE</option>
            <option value="php" selected>PHP</option>
            <option value="laravel">LARAVEL</option>
            <option value="springboot">SPRING BOOT</option>
        </select>
        <% if (errores != null && errores.containsKey("lenguajes")) { %>
        <p class="error-message"><%= errores.get("lenguajes") %></p>
        <% } %>

        <!-- Campo Idioma -->
        <label>Seleccione el idioma</label>
        <div>
            <input type="radio" name="idioma" value="es">
            <label>Español</label>
            <input type="radio" name="idioma" value="en">
            <label>Inglés</label>
            <input type="radio" name="idioma" value="ru">
            <label>Ruso</label>
        </div>
        <% if (errores != null && errores.containsKey("idioma")) { %>
        <p class="error-message"><%= errores.get("idioma") %></p>
        <% } %>

        <!-- Campo País -->
        <label for="pais">Nacionalidad</label>
        <select name="pais" id="pais">
            <option value="">Seleccione un país</option>
            <option value="EC">ECUADOR</option>
            <option value="PE">PERÚ</option>
            <option value="CO">COLOMBIA</option>
            <option value="CH">CHILE</option>
            <option value="AR">ARGENTINA</option>
        </select>
        <% if (errores != null && errores.containsKey("pais")) { %>
        <p class="error-message"><%= errores.get("pais") %></p>
        <% } %>

        <!-- Campo Roles -->
        <label>Roles</label>
        <div>
            <input type="checkbox" name="roles" value="ROLE_ADMIN">
            <label>Administrador</label>
            <input type="checkbox" name="roles" value="ROLE_USER">
            <label>Usuario</label>
            <input type="checkbox" name="roles" value="ROLE_DIGIT">
            <label>Digitador</label>
        </div>
        <% if (errores != null && errores.containsKey("roles")) { %>
        <p class="error-message"><%= errores.get("roles") %></p>
        <% } %>

        <!-- Campo Habilitar -->
        <label for="habilitar">Habilitar</label>
        <input type="checkbox" name="habilitar" id="habilitar" checked>

        <button type="submit">Enviar</button>
    </form>
</div>
</body>
</html>

