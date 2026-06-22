package Controlador;

import Modelos.producto;
import ModelosDAO.productoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "productoControlador", urlPatterns = {"/productoControlador"})
public class productoControlador extends HttpServlet {
    
    String listar = "vistas/listarProducto.jsp";
    producto prduct = new producto();
    productoDAO producDAO = new productoDAO();

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet productoControlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet productoControlador at " + request.getContextPath() + "</h1>");
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
        
        if (accion == null) accion = "listado";
        
        switch(accion){
            case "listado" -> acceso = "vistas/listarProducto.jsp";
            case "ingresar" -> acceso = "vistas/ingresarProducto.jsp";
            case "actualizar" -> {
                int idProducto = Integer.parseInt(request.getParameter("idProducto"));
                producto pro = producDAO.listarunproducto(idProducto);
                request.setAttribute("lista", pro);
                acceso = "vistas/actualizarProducto.jsp";
            }
            case "borrar" -> {
                int idProducto = Integer.parseInt(request.getParameter("idProducto"));
                producDAO.borrar(idProducto);
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
        request.setCharacterEncoding("UTF-8");
        String accion = request.getParameter("accion");
    
        switch (accion) {
            case "Guardar" -> {
                String Cantidad = request.getParameter("Cantidad");
                String Marca = request.getParameter("Marca");
                String Talla = request.getParameter("Talla");
                String Descripcion = request.getParameter("Descripcion");
                String precio = request.getParameter("precio");
                
                prduct.setCantidad(Cantidad);
                prduct.setMarca(Marca);
                prduct.setTalla(Talla);
                prduct.setDescripcion(Descripcion);
                prduct.setPrecio(precio);
                
                producDAO.agregar(prduct);
                response.sendRedirect("productoControlador?accion=listado");
            }
        
            case "Actualizar" -> {
                int idProducto = Integer.parseInt(request.getParameter("idProducto"));
                String Cantidad = request.getParameter("Cantidad");
                String Marca = request.getParameter("Marca");
                String Talla = request.getParameter("Talla");
                String Descripcion = request.getParameter("Descripcion");
                String precio = request.getParameter("precio");
                
                prduct.setIdProducto(idProducto); 
                prduct.setCantidad(Cantidad);
                prduct.setMarca(Marca);
                prduct.setTalla(Talla);
                prduct.setDescripcion(Descripcion);
                prduct.setPrecio(precio);
                
                producDAO.actualizar(prduct);
                response.sendRedirect("productoControlador?accion=listado");
            }
        }
    }
   
    @Override
    public String getServletInfo() {
        return "Controlador para la gestión de Productos";
    }
}