package ModelosDAO;

import Configuracion.ConexionDB;
import Modelos.pedidos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Interfaces.pedidosCRUD;

public class pedidosDAO implements pedidosCRUD{
    // Instanciamiento de conexión original intacto
    ConexionDB  conectar = new ConexionDB();
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    // Instanciamiento de funcionario original intacto
    pedidos pedid = new pedidos();
    
    @Override // Se trae la interfaz CRUD
    public List<pedidos> listarpedidos(){
        ArrayList<pedidos> listapedidos = new ArrayList<>();
        String sql = "SELECT * FROM pedidos";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                pedidos pedd = new pedidos();
                pedd.setIdP(rs.getInt("idP"));
                pedd.setFechaPedido(rs.getString("fechaPedido"));
                pedd.setNomCliente(rs.getString("nomCliente"));
                pedd.setTotalPg(rs.getString("totalPg"));
                pedd.setMedioPago(rs.getString("medioPago"));
                pedd.setDescriPcion(rs.getString("descriPcion"));
                pedd.setTeleFono(rs.getString("teleFono"));
                pedd.setDireCcion(rs.getString("direCcion"));
                pedd.setSelecEstado(rs.getString("selecEstado"));
                listapedidos.add(pedd);
            }
        } catch (SQLException e) {
            System.err.println("ERROR AL LISTAR: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos: " + e);
            }
        }
        return listapedidos;
    }

    // Nuevo método para insertar CORREGIDO sin alterar variables
    @Override
    public boolean agregar(pedidos pedid){
        // CORRECCIÓN: Nombres de columnas mapeados idénticos al SELECT y exactamente 8 signos de interrogación
        String sql = "INSERT INTO pedidos(fechaPedido, nomCliente, totalPg, medioPago, descriPcion, teleFono, direCcion, selecEstado) VALUES(?,?,?,?,?,?,?,?)";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            
            // Inyección de datos respetando tu variable 'pedid'
            ps.setString(1, pedid.getFechaPedido());
            ps.setString(2, pedid.getNomCliente());
            ps.setString(3, pedid.getTotalPg());
            ps.setString(4, pedid.getMedioPago());
            ps.setString(5, pedid.getDescriPcion());
            ps.setString(6, pedid.getTeleFono());
            ps.setString(7, pedid.getDireCcion());
            ps.setString(8, pedid.getSelecEstado());
            
            int resultado = ps.executeUpdate();
            return resultado > 0;
        } catch (SQLException e) {
            System.err.println("Error al agregar: " + e);
            return false;
        } finally {
            // CORRECCIÓN: Liberación de canales de datos para evitar bloqueos en el pool de conexiones
            try {
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos en agregar: " + e);
            }
        }   
    }
    
    @Override
    public pedidos listarunpedidos(int idP) {
        String sql = "SELECT * FROM pedidos WHERE idP= ?";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, idP);
            rs = ps.executeQuery();
            if (rs.next()) {
                pedid.setIdP(rs.getInt("idP"));
                pedid.setFechaPedido(rs.getString("fechaPedido"));
                pedid.setNomCliente(rs.getString("nomCliente"));
                pedid.setTotalPg(rs.getString("totalPg"));
                pedid.setMedioPago(rs.getString("medioPago"));
                pedid.setDescriPcion(rs.getString("descriPcion"));
                pedid.setTeleFono(rs.getString("teleFono"));
                pedid.setDireCcion(rs.getString("direCcion"));
                pedid.setSelecEstado(rs.getString("selecEstado"));
            }
        } catch (SQLException e) {
            System.err.println("Error al Buscar por idPago: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos: " + e);
            }
        }
        return pedid;
    }

    @Override
    public boolean actualizar(pedidos pedid) {
    String sql = "UPDATE pedidos SET fechaPedido=?, nomCliente=?, totalPg=?, medioPago=?, descriPcion=?, teleFono=?, direCcion=?, selecEstado=? WHERE idP=?";
    try {
        conexion = conectar.getConnection();
        ps = conexion.prepareStatement(sql);
        ps.setString(1, pedid.getFechaPedido());
        ps.setString(2, pedid.getNomCliente());
        ps.setString(3, pedid.getTotalPg());
        ps.setString(4, pedid.getMedioPago());
        ps.setString(5, pedid.getDescriPcion());
        ps.setString(6, pedid.getTeleFono());
        ps.setString(7, pedid.getDireCcion());
        
        // SOLUCIÓN: Asegurar que se inyecte el método correcto en la posición 8
        ps.setString(8, pedid.getSelecEstado()); 
        
        ps.setInt(9, pedid.getIdP());
        
        ps.executeUpdate();
        return true;
    } catch (SQLException e) {
        System.err.println("Error al Actualizar: " + e);
        return false;
    }
}


    @Override
    public boolean borrar(int idP) {
        String sql = "DELETE FROM pedidos WHERE idP = ?";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, idP);
            
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.err.println("Error al Borrar: " + e);
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos: " + e);
            }
        } 
    }
}