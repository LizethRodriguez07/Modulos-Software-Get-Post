package Interfaces;

import Modelos.producto;
import java.util.List;

public interface productoCRUD {
    //define la lista obteniendo objetos de los productos
 public List<producto> listarproducto();
 public boolean agregar (producto pro);
 public producto listarunproducto(int idproducto);
 public boolean actualizar (producto pro);
 public boolean borrar(int idproducto);
    //Metodo para consultar los datos   
}
