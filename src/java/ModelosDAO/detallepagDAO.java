package ModelosDAO;

import Configuracion.ConexionDB;
import Modelos.detallepag;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Interfaces.detallepagCRUD;

public class detallepagDAO implements detallepagCRUD{
    //intancioamiento de conexion
    ConexionDB  conectar = new ConexionDB();
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    
@Override //se trae la interfase CRUD
    public List<detallepag> listardetallepag(){
        ArrayList<detallepag> listadetallepag = new ArrayList<>();
        String sql = "SELECT * FROM detallpago";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                detallepag detPg = new detallepag();
                detPg.setIdPago(rs.getInt("idPago"));
                detPg.setIdCliente(rs.getString("idCliente"));
                detPg.setIdPedido(rs.getString("idPedido"));
                detPg.setFechRecb(rs.getString("fechRecb"));
                detPg.setTcanPago(rs.getString("tcanPago"));
                detPg.setEstadoPago(rs.getString("estadoPago"));
                listadetallepag.add(detPg);
            }
        } catch (SQLException e) {
            System.err.println("ERROR AL LISTAR: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar: " + e);
            }
        }
        return listadetallepag;
    }
    
    //nuevo metodo para insertar
    @Override
   public boolean agregar(detallepag dpg){
        String sql = "INSERT INTO detallpago(idCliente, idPedido, fechRecb, tcanPago, estadoPago) VALUES(?,?,?,?,?)";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, dpg.getIdCliente());
            ps.setString(2, dpg.getIdPedido());
            ps.setString(3, dpg.getFechRecb());
            ps.setString(4, dpg.getTcanPago());
            ps.setString(5, dpg.getEstadoPago());
            
            int resultado = ps.executeUpdate();
            return resultado > 0;
        } catch (SQLException e) {
            System.err.println("Error al agregar: " + e);
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar: " + e);
            }
        }   
    }
   
   
    @Override
public detallepag listarundetallepag(int idPago) {
        String sql = "SELECT * FROM detallpago WHERE idPago= ?";
        detallepag dpg = new detallepag();
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, idPago);
            rs = ps.executeQuery();
            if (rs.next()) {
                dpg.setIdPago(rs.getInt("idPago"));
                dpg.setIdCliente(rs.getString("idCliente"));
                dpg.setIdPedido(rs.getString("idPedido"));
                dpg.setFechRecb(rs.getString("fechRecb"));
                dpg.setTcanPago(rs.getString("tcanPago"));
                dpg.setEstadoPago(rs.getString("estadoPago"));
            }
        } catch (SQLException e) {
            System.err.println("Error al Buscar por idPago: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar: " + e);
            }
        }
        return dpg;
    }

@Override
public boolean actualizar(detallepag dpg) {
        
        String sql = "UPDATE detallpago SET idCliente=?, idPedido=?, fechRecb=?, tcanPago=?, estadoPago=? WHERE idPago=?";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            
            ps.setString(1, dpg.getIdCliente());
            ps.setString(2, dpg.getIdPedido());
            ps.setString(3, dpg.getFechRecb());
            ps.setString(4, dpg.getTcanPago());
            ps.setString(5, dpg.getEstadoPago());
        
            ps.setInt(6, dpg.getIdPago());
            
            int resultado = ps.executeUpdate();
            return resultado > 0;
        } catch (SQLException e) {
            System.err.println("Error al Actualizar en detallepagDAO: " + e);
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


@Override
public boolean borrar(int idPago) {
        String sql = "DELETE FROM detallpago WHERE idPago = ?";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, idPago);
            int resultado = ps.executeUpdate();
            
            return resultado > 0;
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
