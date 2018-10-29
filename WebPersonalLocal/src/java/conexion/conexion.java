package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

 /*
 * @author jorgecespedestapia
 */
public class conexion {
    
    private static conexion instancia = null;
    private Connection con;
    private static final String url ="jdbc:mysql://localhost:8889/BDPersonalLocal?zeroDateTimeBehavior=convertToNull";
    //private static final String driver="MySQL (Connector/J driver)";
    private static final String driver ="com.mysql.jdbc.Driver";
    private static final String usuario="root";
    private static final String clave="1234";
    
    private conexion(){
        try{
            Class.forName(driver);
            con=DriverManager.getConnection(url, usuario, clave);
        } catch(Exception ex){
            System.out.println("Error: "+ex.getMessage());
            //Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public synchronized static conexion conectar(){
        if (instancia==null) {
            instancia = new conexion();
        }
        return instancia;
    }
    
    public Connection getCon(){
        return con;
    }
    
    public void cerrarConexion(){
        instancia = null;
    }
    
}
