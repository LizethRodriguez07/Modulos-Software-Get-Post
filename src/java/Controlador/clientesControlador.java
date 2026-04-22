package Controlador;

import Modelos.clientes;
import ModelosDAO.clientesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "clientesControlador", urlPatterns = {"/clientesControlador"})
public class clientesControlador extends HttpServlet {
   String listar = "vistas/listar.jsp";
   clientes clit = new clientes();
   clientesDAO clientDAO = new clientesDAO();
   

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet clientesControlador</title>");
            out.println("</head>");
            out.println("<body>");           
            out.println("<h1>Servlet clientesControlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        String acceso;
        String accion = request.getParameter("accion");
    
        if (accion ==null) accion = "listado";
        
    switch(accion){
        case "listado"-> acceso = "vistas/listar.jsp";
        case "ingresar" -> acceso = "vistas/ingresar.jsp";
        case "actualizar" -> {
            String nombre = request.getParameter("nombre");
            clientes c = clientDAO.listaruncliente(nombre);
            request.setAttribute("lista", c); //cambie
            acceso = "vistas/actualizar.jsp";
        }
        case "borrar" -> {
            String nombre = request.getParameter("nombre");
            clientDAO.borrar(nombre);
            acceso = listar;
        }
        default -> acceso = listar;
    }
    RequestDispatcher cargarvistas = request.getRequestDispatcher(acceso);
    cargarvistas.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        String accion = request.getParameter("accion");    
 
    switch (accion) {
        case "Guardar" -> {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String cedula = request.getParameter("cedula");
            String celular = request.getParameter("celular");
            String email = request.getParameter("email");
            String departamento = request.getParameter("departamento");
            String municipio = request.getParameter("municipio");
            String direccion = request.getParameter("direccion");
            clit.setNombre(nombre);
            clit.setApellido(apellido);
            clit.setCedula(cedula);
            clit.setCelular(celular);
            clit.setEmail(email);
            clit.setDepartamento(departamento);
            clit.setMunicipio(municipio);
            clit.setDireccion(direccion);
            
            //Metodo DAO para que guarde
            clientDAO.agregar(clit);
            //redireccion por response
            response.sendRedirect("clientesControlador?accion=listado");
            }
        
        case "Actualizar" -> {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String cedula = request.getParameter("cedula");
            String celular = request.getParameter("celular");
            String email = request.getParameter("email");
            String departamento = request.getParameter("departamento");
            String municipio = request.getParameter("municipio");
            String direccion = request.getParameter("direccion");
            clit.setNombre(nombre);
            clit.setApellido(apellido);
            clit.setCedula(cedula);
            clit.setCelular(celular);
            clit.setEmail(email);
            clit.setDepartamento(departamento);
            clit.setMunicipio(municipio);
            clit.setDireccion(direccion);
            
            //Metodo DAO para que guarde
            clientDAO.actualizar(clit);
            //redireccion por response
            response.sendRedirect("clientesControlador?accion=listado");
        }
    }
}
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}