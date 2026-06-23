package ModelosDAO;

import Configuracion.ConexionDB;
import Modelos.clientes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Interfaces.clientesCRUD;

public class clientesDAO implements clientesCRUD {
    
    // Instanciamiento de la configuración de la base de datos
    ConexionDB conectar = new ConexionDB();
    
    @Override // Trae los registros de la tabla clientes de la base de datos
    public List<clientes> listarcliente(){
        ArrayList<clientes> listacliente = new ArrayList<>();
        String sql = "SELECT * FROM clientes";
        
        // Declaración local de variables 
        Connection conexion = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()){
                clientes clit = new clientes();
                clit.setNombre(rs.getString("nombre"));
                clit.setApellido(rs.getString("apellido"));
                clit.setCedula(rs.getString("cedula"));
                clit.setCelular(rs.getString("celular"));
                clit.setEmail(rs.getString("email"));
                clit.setDepartamento(rs.getString("departamento"));
                clit.setMunicipio(rs.getString("municipio"));
                clit.setDireccion(rs.getString("direccion"));
                listacliente.add(clit);
            }
        } catch (SQLException e) {
            System.err.println("ERROR AL LISTAR CLIENTES: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos en listarcliente: " + e);
            }
        }
        return listacliente;
    }

    @Override // Método para insertar un nuevo cliente
    public boolean agregar(clientes c){
        String sql = "INSERT INTO clientes(nombre, apellido, cedula, celular, email, departamento, municipio, direccion) VALUES(?,?,?,?,?,?,?,?)";
        
        Connection conexion = null;
        PreparedStatement ps = null;
        
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, c.getNombre());
            ps.setString(2, c.getApellido());
            ps.setString(3, c.getCedula());
            ps.setString(4, c.getCelular());
            ps.setString(5, c.getEmail());
            ps.setString(6, c.getDepartamento());
            ps.setString(7, c.getMunicipio());
            ps.setString(8, c.getDireccion());
            
            int resultado = ps.executeUpdate();
            return resultado > 0;
        } catch (SQLException e) {
            System.err.println("Error al agregar cliente: " + e);
            return false;
        } finally {
           try {
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos en agregar cliente: " + e);
            }
        }
    }
    
    @Override // Busca un único cliente filtrado por nombre
    public clientes listaruncliente(String nombre) {
        String sql = "SELECT * FROM clientes WHERE nombre = ?";
        clientes c = new clientes();
        
        Connection conexion = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, nombre);
            rs = ps.executeQuery();
            if (rs.next()) {
                c.setNombre(rs.getString("nombre"));
                c.setApellido(rs.getString("apellido"));
                c.setCedula(rs.getString("cedula"));
                c.setCelular(rs.getString("celular"));
                c.setEmail(rs.getString("email"));
                c.setDepartamento(rs.getString("departamento"));
                c.setMunicipio(rs.getString("municipio"));
                c.setDireccion(rs.getString("direccion"));
            }
        } catch (SQLException e) {
            System.err.println("Error al Buscar por nombre: " + e);
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos en listaruncliente: " + e);
            }
        }
        return c;
    }

    @Override // Modifica los datos basándose en la coincidencia del nombre
    public boolean actualizar(clientes c) {
        String sql = "UPDATE clientes SET apellido=?, cedula=?, celular=?, email=?, departamento=?, municipio=?, direccion=? WHERE nombre=?";
        
        Connection conexion = null;
        PreparedStatement ps = null;
        
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, c.getApellido());
            ps.setString(2, c.getCedula());
            ps.setString(3, c.getCelular());
            ps.setString(4, c.getEmail());
            ps.setString(5, c.getDepartamento());
            ps.setString(6, c.getMunicipio());
            ps.setString(7, c.getDireccion());
            ps.setString(8, c.getNombre());
            
            int resultado = ps.executeUpdate();
            return resultado > 0; // Retorna true si realmente modificó filas en la base de datos
            
        } catch (SQLException e) {
            System.err.println("Error al Actualizar en clientesDAO: " + e);
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos en actualizar cliente: " + e);
            }
        }
    }

    @Override // Elimina el registro que coincida con el nombre
    public boolean borrar(String nombre) {
        String sql = "DELETE FROM clientes WHERE nombre = ?";
        
        Connection conexion = null;
        PreparedStatement ps = null;
        
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, nombre);
            
            int resultado = ps.executeUpdate();
            return resultado > 0; // Devuelve true si eliminó al cliente de forma exitosa
            
        } catch (SQLException e) {
            System.err.println("Error al Borrar cliente: " + e);
            return false;
        } finally {
            try {
                if (ps != null) ps.close();
                if (conexion != null) conexion.close();
            } catch (SQLException e) {
                System.err.println("Error al cerrar recursos en borrar cliente: " + e);
            }
        }
    }
}
