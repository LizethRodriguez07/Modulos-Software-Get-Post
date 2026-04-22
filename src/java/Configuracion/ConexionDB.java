package Configuracion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    //libreria de MariaDB
    private final String driver = "org.mariadb.jdbc.Driver";
    //Nombre de la base de datos
    private final String database = "gst_ventasonline";
    // servidor
    private final String hostname = "localhost";
    // puerto
    private final String puerto = "3306";
    // Nombre del ususario
    private final String usuario = "root";
    //Contraseña
    private final String password = "Rodriguez07";
    
    public Connection getConnection() {
        String url = "jdbc:mariadb://" + hostname + ":" + puerto + "/" + database + "?useSSL=false";
        Connection conexion;
        
        try {
            Class.forName(driver);
            conexion = DriverManager.getConnection(url, usuario, password);
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex.getMessage());
            return null;
        }   
        return conexion;
    }
    public void cerrarConexionDB(Connection conexion) {
         try {
             conexion.close();
         } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return;
         }  
         System.out.println("SE A CERRADO LA CONEXION");
        }
    
    
    public static void main(String[] args) {
        ConexionDB conectar = new ConexionDB();
        Connection connection;
        
        connection = conectar.getConnection();
        if (connection != null) {
        System.out.println("LA CONEXION A SIDO CORRECTA");    
        conectar.cerrarConexionDB(connection);
        } else {
            System.out.println("LA CONEXION ES NULA");
        }
    }
}
