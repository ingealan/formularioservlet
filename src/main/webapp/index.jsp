<%-- Incluimos el tag del page --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- importamos la libreria utilMap --%>
<%@page import="java.util.Map"%>
<%-- Incluimos un scriptles para llamar a los errores --%>
<%
Map<String,String> errores = (Map<String, String>) request.getAttribute("errores");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manejo de Formulario</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
<h1>Manejo de Formulario</h1>
<%-- Implementamos una condicion para saber si exiten errores o no --%>
    <%-- Eso quiere decir si errores esta vacio o no --%>
<%
if(errores!=null && errores.size()>0){


%>
<ul>
    <%
        //Listamos los errores
        for (String error:errores.values()){%>
    <li>
        <%=errores%>
    </li>
    <%
        }
    %>
</ul>
<%
    }
%>
<div>

    <form action="/formu/ingresar" method="post">
        <label for="username">Ingrese el usuario</label>
        <input type="text" name="username" id="username" placeholder="Usuario" >

        <label for="password">Ingrese la contraseña</label>
        <input type="password" name="password" id="password" placeholder="Contraseña" >

        <label for="email">Ingrese el email</label>
        <input type="email" name="email" id="email" placeholder="alguien@example.com" >

       <!--Lenguajes de programacion-->
        <div>
            <label for="lenguajes">Lenguajes de programacion</label>
            <div>
            <select name="lenguajes" id="lenguajes" multiple>
                <option value="Java" selected>JAVA SE</option>
                <option value="jakartaee" selected>JAKARTA EE</option>
                <option value="php" selected>PHP</option>
                <option value="laravel" >LARAVEL</option>
                <option value="springboot">SPRING BOOT</option>
            </select>
            </div>
            <div>
                <!--Select para idioma-->
                <div>
                    <label>Seleccione el idioma</label>
                    <div>
                        <input type="radio" name="idioma" value="es">
                        <label>Español</label>
                    </div>
                    <div>
                        <input type="radio" name="idioma" value="en">
                        <label>Ingles</label>
                    </div>
                    <div>
                        <input type="radio" name="idioma" value="ru">
                        <label>Ruso</label>
                    </div>
                </div>
            </div>
            <div>
                <!--Select para nacionalidad-->
                <div>
                    <label>Nacionalidad</label>
                    <div>
                        <select name="pais" id="pais">
                            <option value="">Seleccione un pais</option>
                            <option value="EC">ECUADOR</option>
                            <option value="PE">PERU</option>
                            <option value="CO">COLOMBIA</option>
                            <option value="CH">CHILE</option>
                            <option value="AR">ARGENTINA</option>
                        </select>
                    </div>
                </div>
                <!--Select para roles-->
                    <div>
                        <label> Roles</label>
                        <div>
                            <input type="checkbox" name="roles" value="ROLE_ADMIN">
                            <label>Administrador</label>
                        </div>
                        <div>
                            <input type="checkbox" name="roles" value="ROLE_USER">
                            <label>Usuario</label>
                        </div>
                        <div>
                        <input type="checkbox" name="roles" value="ROLE_DIGIT">
                        <label>Digitador</label>
                    </div>
                    </div>
                <!--checkbox para habilitar el usuario-->
                <div>
                    <label for="habilitar">Habilitar</label>
                    <div>
                        <input type="checkbox" name="habilitar" id="habilitar" checked>
                    </div>
                </div>

            </div>
        </div>

        <button type="submit">Enviar</button>
    </form>
</div>
</body>
</html>
