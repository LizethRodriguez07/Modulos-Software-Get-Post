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
    //intancioamiento de conexion
    ConexionDB  conectar = new ConexionDB();
    Connection conexion;
    PreparedStatement ps;
    ResultSet rs;
    //instanciamiento de funcionario
    pedidos pedid = new pedidos();
    
@Override //se trae la interfase CRUD
    public List<pedidos> listarpedidos(){
        //se trae los registros de la tabla funcionario de la base de datos
        ArrayList<pedidos>listapedidos = new ArrayList<>();
        String sql = "SELECT * FROM pedidos";
        try {
            conexion = conectar.getConnection();
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            //permite recorer la infromacion del registro
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
    }
        return listapedidos;
}
    //nuevo metodo para insertar
    @Override
    public boolean agregar(pedidos pedid){
        String sql = "INSERT INTO pedidos(fechPedido, nomCliente, totalPg, medioPago, descriPcion, descriPcion, direCcion, selecEstado)VALUES(?,?,?,?,?,?,?,?,?)";
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
            ps.setString(8, pedid.getSelecEstado());
            
            int resultado = ps.executeUpdate();
            return resultado > 0;
        }catch (SQLException e) {
            System.err.println("Error al agregar" +e);
        return false;
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
    }
    catch (SQLException e) {
        System.err.println("Error al Buscar por idPago: " +e);
    }
    return pedid;
}
@Override
public boolean actualizar(pedidos pedid) {
    String sql = "UPDATE pedidos SET fechaPedido=?, nomClientes=?, totalPg=?, medioPago=?, descriPcion=?, teleFono=?, direCcion=?, selecEstado=? WHERE idP=?";
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
        ps.setString(8, pedid.getSelecEstado());
        ps.executeUpdate();
            return true;
    } catch (SQLException e) {
        System.err.println("Error al Actualizar: " +e);
    return false;
    }  
}

@Override
public boolean borrar(int idP) {
    String sql = "DELETE FROM detallpago WHERE idP = idP";
    try {
        conexion = conectar.getConnection();
        ps = conexion.prepareStatement(sql);
        //Asigna el id "idProducto" en parametro 
        ps.setInt(1, idP);
        // ejecuta la actualizacion
        ps.executeUpdate();
        
        return true;
        } catch (SQLException e) {
        System.err.println("Error al Borrar: " +e);
        return false;
        } 
    }
    
}
