package daos;

import conexion.conexion;
import dtos.DTOusuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;

/**
 *
 * @author jorgecespedestapia
 */
public class DAOlogin {
    
    private static final String sql_select = "select * from TBUSUARIO where correo=? and clave=?";
    private static PreparedStatement pstm=null;
    private static ResultSet res = null;
    private static conexion con = conexion.conectar();
    
    public boolean validarLogin(DTOusuario usuario){
        boolean resultado = false;
        try {
            pstm = con.getCon().prepareStatement(sql_select);
            pstm.setString(1, usuario.getCorreo());
            pstm.setString(2, usuario.getClave());
            res = pstm.executeQuery();
            if(res.next()){
                resultado = true;
            }
        } catch (Exception e) {
            System.out.println("Error: "+ e.getMessage());
        }
        finally{
            try {
                if(res!=null)res.close();
                if(pstm!=null)pstm.close();
                if(con!=null)con.cerrarConexion();
            } catch (Exception e) {
                System.out.println("Error: "+e.getMessage());
            }
            return resultado;
        }
    }
    
}
