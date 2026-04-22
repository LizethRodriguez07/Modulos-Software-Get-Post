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

public class productoDAO implements productoCRUD{
    //intancioamiento de conexion
    ConexionDB  conectar = new ConexionDB();
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    //instanciamiento de funcionario
    producto pro = new producto();
    
@Override //se trae la interfase CRUD
    public List<producto> listarproducto(){
        //se trae los registros de la tabla funcionario de la base de datos
        ArrayList<producto>listaproducto = new ArrayList<>();
        String sql = "SELECT * FROM producto";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            //permite recorer la infromacion del registro
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
    }
        return listaproducto;
}
    //nuevo metodo para insertar
    @Override
    public boolean agregar(producto pro){
        String sql = "INSERT INTO producto(Cantidad, Marca, Talla, Descripcion, precio)VALUES(?,?,?,?,?)";
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
        }catch (SQLException e) {
            System.err.println("Error al agregar" +e);
        return false;
        }   
    }
    @Override
public producto listarunproducto(int idproducto) {
    String sql = "SELECT * FROM producto WHERE idproducto= ?";
    try {
        conexion = conectar.getConnection();
        ps = conexion.prepareStatement(sql);
        ps.setInt(1, idproducto);
        rs = ps.executeQuery();
        if (rs.next()) {
            pro.setIdProducto(rs.getInt("idproducto"));
            pro.setCantidad(rs.getString("Cantidad"));
            pro.setMarca(rs.getString("Marca"));
            pro.setTalla(rs.getString("Talla"));
            pro.setDescripcion(rs.getString("Descripcion"));
            pro.setPrecio(rs.getString("precio"));
        }
    }
    catch (SQLException e) {
        System.err.println("Error al Buscar por idproducto: " +e);
    }
    return pro;
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
        ps.executeUpdate();
            return true;
    } catch (SQLException e) {
        System.err.println("Error al Actualizar: " +e);
    return false;
    }  
}

@Override
public boolean borrar(int idproducto) {
    String sql = "DELETE FROM producto WHERE idproducto = idproducto";
    try {
        conexion = conectar.getConnection();
        ps = conexion.prepareStatement(sql);
        //Asigna el id "idProducto" en parametro 
        ps.setInt(1, idproducto);
        // ejecuta la actualizacion
        ps.executeUpdate();
        
        return true;
        } catch (SQLException e) {
        System.err.println("Error al Borrar: " +e);
        return false;
        } 
    }
}
            

