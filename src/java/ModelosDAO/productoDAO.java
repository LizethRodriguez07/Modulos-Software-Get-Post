package ModelosDAO;

import Configuracion.ConexionDB;
import Modelos.producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Interfaces.productoCRUD;

public class productoDAO implements productoCRUD {
    // Instanciamiento de conexion
    ConexionDB conectar = new ConexionDB();
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    
    @Override 
    public List<producto> listarproducto(){
        ArrayList<producto> listaproducto = new ArrayList<>();
        String sql = "SELECT * FROM producto";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                producto prduct = new producto();
                prduct.setIdProducto(rs.getInt("idproducto"));
                prduct.setCantidad(rs.getString("Cantidad"));
                prduct.setMarca(rs.getString("Marca"));
                prduct.setTalla(rs.getString("Talla"));
                prduct.setDescripcion(rs.getString("Descripcion"));
                prduct.setPrecio(rs.getString("precio"));
                listaproducto.add(prduct);
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
        return listaproducto;
    }
    
    @Override
    public boolean agregar(producto pro){
        String sql = "INSERT INTO producto(Cantidad, Marca, Talla, Descripcion, precio) VALUES(?,?,?,?,?)";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, pro.getCantidad());
            ps.setString(2, pro.getMarca());
            ps.setString(3, pro.getTalla());
            ps.setString(4, pro.getDescripcion());
            ps.setString(5, pro.getPrecio());
            
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
                System.err.println("Error al cerrar recursos: " + e);
            }
        }   
    }
    
    @Override
    public producto listarunproducto(int idProducto) {
        String sql = "SELECT * FROM producto WHERE idproducto = ?";
        
        producto prduct = new producto(); 
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, idProducto);
            rs = ps.executeQuery();
            if (rs.next()) {
                prduct.setIdProducto(rs.getInt("idproducto"));
                prduct.setCantidad(rs.getString("Cantidad"));
                prduct.setMarca(rs.getString("Marca"));
                prduct.setTalla(rs.getString("Talla"));
                prduct.setDescripcion(rs.getString("Descripcion"));
                prduct.setPrecio(rs.getString("precio"));
            }
        } catch (SQLException e) {
            System.err.println("Error al Buscar por idproducto: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos: " + e);
            }
        }
        return prduct; // Retorna el objeto local limpio
    }

    @Override
    public boolean actualizar(producto pro) {
        String sql = "UPDATE producto SET Cantidad=?, Marca=?, Talla=?, Descripcion=?, precio=? WHERE idproducto=?";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, pro.getCantidad());
            ps.setString(2, pro.getMarca());
            ps.setString(3, pro.getTalla());
            ps.setString(4, pro.getDescripcion());
            ps.setString(5, pro.getPrecio());
            ps.setInt(6, pro.getIdProducto());
            
            int resultado = ps.executeUpdate();
            return resultado > 0; // Es mejor validar si realmente modificó filas afectando la BD
         } catch (SQLException e) {
            System.err.println("Error al Actualizar en productoDAO: " + e);
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
    public boolean borrar(int idproducto) {
        String sql = "DELETE FROM producto WHERE idproducto = ?";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, idproducto);
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
