package Controlador;

import Modelos.detallepag;
import ModelosDAO.detallepagDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class detallepagControlador extends HttpServlet {
    String listar = "vistas/listarDpg.jsp";
   detallepag detPg = new detallepag();
   detallepagDAO dpagoDAO = new detallepagDAO();

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
            out.println("<title>Servlet detallepagControlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet detallepagControlador at " + request.getContextPath() + "</h1>");
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
        case "listado" -> acceso = "vistas/listarDpg.jsp";
        case "ingresar" -> acceso = "vistas/ingresarDpg.jsp";
        case "actualizar" -> {
        int idPago = Integer.parseInt(request.getParameter("idPago"));
            
            detallepag dpg = dpagoDAO.listarundetallepag(idPago);
            request.setAttribute("lista", dpg); //cambie
            acceso = "vistas/actualizarDpg.jsp";
        }
        case "borrar" -> {
            int idPago = Integer.parseInt(request.getParameter("idPago"));
            dpagoDAO.borrar(idPago);
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
            String idCliente = request.getParameter("idCliente");
            String idPedido = request.getParameter("idPedido");
            String fechRecb = request.getParameter("fechRecb");
            String tcanPago = request.getParameter("tcanPago");
            String estadoPago = request.getParameter("estadoPago");
            
            detPg.setIdCliente(idCliente);
            detPg.setIdPedido(idPedido);
            detPg.setFechRecb(fechRecb);
            detPg.setTcanPago(tcanPago);
            detPg.setEstadoPago(estadoPago);
            
            
            //Metodo DAO para que guarde
            dpagoDAO.agregar(detPg);
            //redireccion por response
            response.sendRedirect("detallepagControlador?accion=listado");
            }
        
        case "Actualizar" -> {
            String idCliente = request.getParameter("idCliente");
            String idPedido = request.getParameter("idPedido");
            String fechRecb = request.getParameter("fechRecb");
            String tcanPago = request.getParameter("tcanPago");
            String estadoPago = request.getParameter("estadoPago");
            
            detPg.setIdCliente(idCliente);
            detPg.setIdPedido(idPedido);
            detPg.setFechRecb(fechRecb);
            detPg.setTcanPago(tcanPago);
            detPg.setEstadoPago(estadoPago);
            
            //Metodo DAO para que guarde
            dpagoDAO.actualizar(detPg);
            //redireccion por response
            response.sendRedirect("detallepagControlador?accion=listado");
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
