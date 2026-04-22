package ModelosDAO;

import Configuracion.ConexionDB;
import Modelos.chat;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Interfaces.chatCRUD;

public class chatDAO implements chatCRUD {
    //intancioamiento de conexion
    ConexionDB  conectar = new ConexionDB();
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    //instanciamiento de funcionario
    chat cht = new chat();
    
@Override //se trae la interfase CRUD
    public List<chat> listarchat(){
        //se trae los registros de la tabla funcionario de la base de datos
        ArrayList<chat>listachat = new ArrayList<>();
        String sql = "SELECT * FROM chatonline";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            //permite recorer la infromacion del registro
            while (rs.next()){
            chat cha = new chat();
            cha.setIdChat(rs.getInt("idChat"));
            cha.setClienteChat(rs.getString("clienteChat"));
            cha.setMensajeria(rs.getString("Mensajeria"));
            cha.setEstadoChat(rs.getString("estadoChat"));
            
            listachat.add(cha);
        }
    } catch (SQLException e) {
        System.err.println("ERROR AL LISTAR: " + e);
    }
        return listachat;
}
    //nuevo metodo para insertar
    @Override
    public boolean agregar(chat cht){
        String sql = "INSERT INTO chatonline(clienteChat, Mensajeria, estadoChat)VALUES(?,?,?)";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            ps.setString(1, cht.getClienteChat());
            ps.setString(2, cht.getMensajeria());
            ps.setString(3, cht.getEstadoChat());
            
            int resultado = ps.executeUpdate();
            return resultado > 0;
        }catch (SQLException e) {
            System.err.println("Error al agregar" +e);
        return false;
        }   
    }
    @Override
public chat listarunchat(int idChat) {
    String sql = "SELECT * FROM chatonline WHERE idChat= ?";
    try {
        conexion = conectar.getConnection();
        ps = conexion.prepareStatement(sql);
        ps.setInt(1, idChat);
        rs = ps.executeQuery();
        if (rs.next()) {
            cht.setIdChat(rs.getInt("idChat"));
            cht.setClienteChat(rs.getString("clienteChat"));
            cht.setMensajeria(rs.getString("Mensajeria"));
            cht.setEstadoChat(rs.getString("estadoChat"));
        }
    }
    catch (SQLException e) {
        System.err.println("Error al Buscar por idproducto: " +e);
    }
    return cht;
}
@Override
public boolean actualizar(chat cht) {
    String sql = "UPDATE producto SET clienteChat=?, Mensajeria=?, estadoChat=? WHERE idChat=?";
    try {
        conexion = conectar.getConnection();
        ps = conexion.prepareStatement(sql);
        ps.setString(1, cht.getClienteChat());
        ps.setString(2, cht.getMensajeria());
        ps.setString(3, cht.getEstadoChat());
            
        ps.executeUpdate();
            return true;
    } catch (SQLException e) {
        System.err.println("Error al Actualizar: " +e);
    return false;
    }  
}

@Override
public boolean borrar(int idChat) {
    String sql = "DELETE FROM chat WHERE idChat = idChat";
    try {
        conexion = conectar.getConnection();
        ps = conexion.prepareStatement(sql);
        //Asigna el id "idProducto" en parametro 
        ps.setInt(1, idChat);
        // ejecuta la actualizacion
        ps.executeUpdate();
        
        return true;
        } catch (SQLException e) {
        System.err.println("Error al Borrar: " +e);
        return false;
        } 
    }
}
