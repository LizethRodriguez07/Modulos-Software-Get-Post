package Interfaces;

import Modelos.clientes;
import java.util.List;

public interface clientesCRUD {
    //define la lista obteniendo objetos de los clientes
    public List<clientes> listarcliente();
    public boolean agregar (clientes c);
    public clientes listaruncliente(String nombre);
    public boolean actualizar (clientes c);
    public boolean borrar(String nombre);
    //Metodo para consultar los datos
}