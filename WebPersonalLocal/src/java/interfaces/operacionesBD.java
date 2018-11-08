package interfaces;

import java.util.ArrayList;

/**
 * @author jorgecespedestapia
 */
public interface operacionesBD<T> {
    
    public boolean insert (T t);
    public boolean update (T t);
    public boolean delete (Object id);
    public T selectById (Object id);
    public ArrayList<T> selectAll();
    
}
