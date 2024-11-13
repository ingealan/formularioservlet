package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

// Implementamos el path de acceso al Servlet
@WebServlet("/ingresar")
public class Servlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Le decimos al servidor que tipo de contenido me va a devolver
        resp.setContentType("text/html");

        // Recibimos parámetros por medio de get
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
      //Implmentar una variable para guardar los lenguajes de progaramacion
        String[] lenguajes = req.getParameterValues("lenguajes");
        String idioma = req.getParameter("idioma");
        String pais = req.getParameter("pais");
        String[] roles = req.getParameterValues("roles");
        boolean habilitar = req.getParameter("habilitar")!=null && req.getParameter("habilitar").equals("on");
        // Implementamos la variable PrintWriter
        PrintWriter out = resp.getWriter();

        // Creo la plantilla HTML
        out.print("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset=\"utf-8\">");
        out.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
        out.println("<title>Datos de Usuario</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Manejo de formularios</h1>");
        out.println("<ul>");
        out.println("<li>Usuario: " + username + "</li>");
        out.println("<li>Password: " + password + "</li>");
        out.println("<li>Email: " + email + "</li>");

        out.println("<ul>Lenguajes: ");
        Arrays.asList(lenguajes).forEach(lenguaje -> {
            out.println("<li>" + lenguaje + "</li>");
        });
        out.println("</ul>");
        out.println("<li>Idioma: " + idioma + "</li>");
        out.println("<li>Pais: " + pais + "</li>");

        out.println("<ul>Roles: ");
        Arrays.asList(roles).forEach(rol -> {
            out.println("<li>" + rol + "</li>");
        });
        out.println("</ul>");
        out.println("<li>Habilitar: " + habilitar + "</li>");
        out.println("</ul>");
        out.println("</body>");
        out.println("</html>");
    }
}
