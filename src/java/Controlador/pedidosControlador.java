package Controlador;

import java.io.IOException;
import Modelos.pedidos;
import ModelosDAO.pedidosDAO;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class pedidosControlador extends HttpServlet {
String listar = "vistas/listarPedidos.jsp";
   pedidos pedd = new pedidos();
   pedidosDAO pedDAO = new pedidosDAO();
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
            out.println("<title>Servlet pedidosControlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet pedidosControlador at " + request.getContextPath() + "</h1>");
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
        case "listado" -> acceso = "vistas/listarPedidos.jsp";
        case "ingresar" -> acceso = "vistas/ingresarPedidos.jsp";
        case "actualizar" -> {
        int idP = Integer.parseInt(request.getParameter("idP"));
            
            pedidos pedid = pedDAO.listarunpedidos(idP);
            request.setAttribute("lista", pedid); //cambie
            acceso = "vistas/actualizarPedidos.jsp";
        }
        case "borrar" -> {
            int idP = Integer.parseInt(request.getParameter("idP"));
            pedDAO.borrar(idP);
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
            String fechaPedido = request.getParameter("fechaPedido");
            String nomCliente = request.getParameter("nomCliente");
            String totalPg = request.getParameter("totalPg");
            String medioPago = request.getParameter("medioPago");
            String descriPcion = request.getParameter("descriPcion");
            String teleFono = request.getParameter("teleFono");
            String direCcion = request.getParameter("direCcion");
            String selecEstado = request.getParameter("selecEstado");
            
            pedd.setFechaPedido(fechaPedido);
            pedd.setNomCliente(nomCliente);
            pedd.setTotalPg(totalPg);
            pedd.setMedioPago(medioPago);
            pedd.setDescriPcion(descriPcion);
            pedd.setTeleFono(teleFono);
            pedd.setDireCcion(direCcion);
            pedd.setSelecEstado(selecEstado);
            
            //Metodo DAO para que guarde
            pedDAO.agregar(pedd);
            //redireccion por response
            response.sendRedirect("pedidosControlador?accion=listado");
            }
        
        case "Actualizar" -> {
            String fechaPedido = request.getParameter("fechaPedido");
            String nomCliente = request.getParameter("nomCliente");
            String totalPg = request.getParameter("totalPg");
            String medioPago = request.getParameter("medioPago");
            String descriPcion = request.getParameter("descriPcion");
            String teleFono = request.getParameter("teleFono");
            String direCcion = request.getParameter("direCcion");
            String selecEstado = request.getParameter("selecEstado");
            
            pedd.setFechaPedido(fechaPedido);
            pedd.setNomCliente(nomCliente);
            pedd.setTotalPg(totalPg);
            pedd.setMedioPago(medioPago);
            pedd.setDescriPcion(descriPcion);
            pedd.setTeleFono(teleFono);
            pedd.setDireCcion(direCcion);
            pedd.setSelecEstado(selecEstado);
            
            //Metodo DAO para que guarde
            pedDAO.actualizar(pedd);
            //redireccion por response
            response.sendRedirect("pedidosControlador?accion=listado");
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
