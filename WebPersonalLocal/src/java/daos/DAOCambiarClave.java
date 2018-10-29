package daos;

import conexion.conexion;
import dtos.DTOusuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author jorgecespedestapia
 */
public class DAOCambiarClave {
    private static final String sql_cambiar_clave ="update tbusuario set clave=? where correo=?";
    private static PreparedStatement pstm = null;
    private static ResultSet res = null;
    private static conexion con = conexion.conectar();
    
    public boolean actualizarClave(DTOusuario usuario){
        boolean resultado = false;
        
        try {
            pstm = con.getCon().prepareStatement(sql_cambiar_clave);
            pstm.setString(1, usuario.getClave());
            pstm.setString(2, usuario.getCorreo());
            res = pstm.executeQuery();
            
            if(res.next()){
                resultado = true;
            }
        } catch (Exception e) {
            System.out.println("Error: "+e.getMessage());
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
