package Interfaces;

import Modelos.chat;
import java.util.List;

public interface chatCRUD {
    //define la lista obteniendo objetos de los productos
 public List<chat> listarchat();
 public boolean agregar (chat cht);
 public chat listarunchat(int idChat);
 public boolean actualizar (chat cht);
 public boolean borrar(int idChat);
    //Metodo para consultar los datos   
}
