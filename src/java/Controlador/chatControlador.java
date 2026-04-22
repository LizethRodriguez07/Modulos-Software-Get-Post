package Controlador;

import Modelos.chat;
import ModelosDAO.chatDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "chatControlador", urlPatterns = {"/chatControlador"})
public class chatControlador extends HttpServlet {
String listar = "vistas/listarChat.jsp";
   chat cha = new chat();
   chatDAO chaDAO = new chatDAO();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet chatControlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet chatControlador at " + request.getContextPath() + "</h1>");
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
        case "listado" -> acceso = "vistas/listarChat.jsp";
        case "ingresar" -> acceso = "vistas/ingresarChat.jsp";
        case "actualizar" -> {
        int idChat = Integer.parseInt(request.getParameter("idChat"));
            
            chat cht = chaDAO.listarunchat(idChat);
            request.setAttribute("lista", cht); //cambie
            acceso = "vistas/actualizarChat.jsp";
        }
        case "borrar" -> {
            int idChat = Integer.parseInt(request.getParameter("idChat"));
            chaDAO.borrar(idChat);
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
            String clienteChat = request.getParameter("clienteChat");
            String Mensajeria = request.getParameter("Mensajeria");
            String estadoChat = request.getParameter("estadoChat");
            
            cha.setClienteChat(clienteChat);
            cha.setMensajeria(Mensajeria);
            cha.setEstadoChat(estadoChat);
            
            //Metodo DAO para que guarde
            chaDAO.agregar(cha);
            //redireccion por response
            response.sendRedirect("chatControlador?accion=listado");
            }
    
        case "Actualizar" -> {
            String clienteChat = request.getParameter("clienteChat");
            String Mensajeria = request.getParameter("Mensajeria");
            String estadoChat = request.getParameter("estadoChat");
            
            cha.setClienteChat(clienteChat);
            cha.setMensajeria(Mensajeria);
            cha.setEstadoChat(estadoChat);
            
            //Metodo DAO para que guarde
            chaDAO.actualizar(cha);
            //redireccion por response
            response.sendRedirect("chatControlador?accion=listado");
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
