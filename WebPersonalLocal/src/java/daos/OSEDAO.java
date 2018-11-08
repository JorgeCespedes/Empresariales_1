package daos;

import conexion.conexion;
import interfaces.operacionesBD;
import dtos.OSE;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 * @author jorgecespedestapia
 */
public class OSEDAO implements operacionesBD<OSE>{
    
    private static final String sql_insert ="insert into TBOSE values (?,?,?,?)";
    
    private static final String sql_selectAll ="select * from TBOSE";
    
    private static PreparedStatement pstm = null;
    private static ResultSet res = null;
    private final conexion con = conexion.conectar();
    
    public void cerrarConexiones(){
        try {
            if(res!=null)res.close();
            if(pstm!=null)pstm.close();
            if(con!=null)con.cerrarConexion();
        } catch (Exception ex) {
            Logger.getLogger(OSEDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
    @Override
    public boolean insert(OSE t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(OSE t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public OSE selectById(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<OSE> selectAll() {
        ArrayList<OSE> listaOSE = new ArrayList<>();
        try {
            pstm = con.getCon().prepareStatement(sql_selectAll);
            res = pstm.executeQuery();
            
            while(res.next()){
                listaOSE.add(new OSE(res.getInt(1), res.getString(2), res.getString(3), res.getInt(4), res.getInt(5)));
            }
        } catch (Exception e) {
            System.out.println("Error Select All " + e.getMessage());
            
        } finally{
            cerrarConexiones();
        }
        return listaOSE;
    }
       
}
