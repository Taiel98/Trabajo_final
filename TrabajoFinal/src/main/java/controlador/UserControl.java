
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;
import modelo.UsuariosDAO;

/**
 *
 * @author Taiel98
 */
@WebServlet(name = "UserControl", urlPatterns = {"/UserControl"})
public class UserControl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsuariosDAO dao= new UsuariosDAO();
        String accion = request.getParameter("accion");
        boolean validar;
        if(accion.equals("Iniciar")){
            String mail = request.getParameter("mail");
            String contrasena = request.getParameter("contrasena");
            Usuario user = new Usuario(mail,contrasena);
            validar = dao.validar(user);
            if(validar == true){
                request.getSession().setAttribute("mail", mail);
                request.getRequestDispatcher("inicio.jsp").forward(request,response);
            }else{
                request.getRequestDispatcher("faq.html").forward(request,response);
            }
        }else if(accion.equals("Registrarse")){
            String nombre = request.getParameter("nombre");
            String mail = request.getParameter("mail");
            String clave = request.getParameter("clave");
            Usuario user = new Usuario(nombre,mail,clave);
            dao.registrar(user);
            request.getRequestDispatcher("index.html").forward(request, response);
        }else if(accion.equals("Modificar")){
            String nombre = request.getParameter("nombre");
            String mail = request.getParameter("mail");
            String clave = request.getParameter("clave");
            String mailviejo = request.getSession().getAttribute("mail").toString();
            Usuario user = new Usuario(nombre,mail,clave);
            dao.configurar(user, mailviejo);
            request.getSession().setAttribute("mail", mail);
            request.getRequestDispatcher("inicio.jsp").forward(request, response);
        }else if(accion.equals("Eliminar")){
            String mail = request.getSession().getAttribute("mail").toString();
            request.getRequestDispatcher("index.html").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request,response);
    }


}
