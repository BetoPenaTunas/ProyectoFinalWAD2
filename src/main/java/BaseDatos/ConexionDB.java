package BaseDatos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ConexionDB {
//    private static final String URL = "jdbc:postgresql://ec2-34-198-186-145.compute-1.amazonaws.com:5432/d8o9dch19sasro";
//    private static final String USERNAME = "lorqqkxmhewvef";
//    private static final String PASSWORD = "9e6cc2b3d0b93770ea4692a7b04d90853f6ff172da3044e84ecd2db5a1c228ec";

    private static final String URL = "jdbc:mysql://remotemysql.com:3306/GrpRKnYswJ";
    private static final String USERNAME = "GrpRKnYswJ";
    private static final String PASSWORD = "ZZZX7J2Vji";

    
    
    public static Connection getConexionDB(){
        Connection ConexionDB = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
//            String driverBDPostgreSQL="org.postgresql.Driver";
//            Class.forName(driverBDPostgreSQL);
            try {
//                ConexionDB=DriverManager.getConnection("jdbc:mysql://localhost:3306/sport", "root", "admin");
                ConexionDB=DriverManager.getConnection(URL, USERNAME, PASSWORD);

            } catch (SQLException ex) {
                Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            }
            System.out.println("EXITO AL CONECTAR CON LA BASE");
        } catch (ClassNotFoundException ex) {
            System.out.println("ERROR AL CONECTAR CON LA BASE");
        }
        return ConexionDB;
    }
}
