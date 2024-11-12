package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//Necesitamos un path una llave o una key para acceder a el servlet
@WebServlet("/ingresar")
public class Servlet extends HttpServlet{
    //Sobreescribimos el metodo get
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Seteamos el setContextpath
        resp.setContentType("text/html");
        //Declaro e inicializo una variable tipo String
        String username = req.getParameter("username");
        //Declaro e inicializo una variable tipo String para traer el password
        String password = req.getParameter("password");
        //Declaro e inicializo una variable tipo String para traer el email
        String email = req.getParameter("email");


    }
}
