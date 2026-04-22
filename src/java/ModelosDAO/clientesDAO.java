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
    //intancioamiento de conexion
    ConexionDB  conectar = new ConexionDB();
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    //instanciamiento de funcionario
    clientes c = new clientes();
    
    @Override //se trae la interfase CRUD
    public List<clientes> listarcliente(){
        //se trae los registros de la tabla funcionario de la base de datos
        ArrayList<clientes>listacliente = new ArrayList<>();
        String sql = "SELECT * FROM clientes";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            //permite recorer la infromacion del registro
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
        System.err.println("ERROR AL LISTAR: " + e);
    }
        return listacliente;
}

//nuevo metodo para insertar
    @Override
    public boolean agregar(clientes c){
        String sql = "INSERT INTO clientes(nombre,apellido,cedula,celular,email,departamento,municipio,direccion)VALUES(?,?,?,?,?,?,?,?)";
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
        }catch (SQLException e) {
            System.err.println("Error al agregar" +e);
        return false;
        }   
    }
    
@Override
public clientes listaruncliente(String nombre) {
    String sql = "SELECT * FROM clientes WHERE nombre= ?";
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
    }
    catch (SQLException e) {
        System.err.println("Error al Buscar por nombre: " +e);
    }
    return c;
}
@Override
public boolean actualizar(clientes c) {
    String sql = "UPDATE clientes SET apellido=?, cedula=?, celular=?, email=?, departamento=?, municipio=?, direccion=? WHERE nombre=?";
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
        ps.setInt(9, c.getId());
        ps.executeUpdate();
            return true;
    } catch (SQLException e) {
        System.err.println("Error al Actualizar: " +e);
    return false;
    }  
}

@Override
public boolean borrar(String nombre) {
    String sql = "DELETE FROM clientes WHERE nombre = nombre";
    try {
        conexion = conectar.getConnection();
        ps = conexion.prepareStatement(sql);
        //Asigna el String "nombre" en parametro 
        ps.setString(1, nombre);
        // ejecuta la actualizacion
        ps.executeUpdate();
        
        return true;
        } catch (SQLException e) {
        System.err.println("Error al Borrar: " +e);
        return false;
        } 
    }
}
