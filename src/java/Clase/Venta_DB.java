/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clase;
import java.sql.*;
import java.util.*;
import Conexion.Conexion;
/**
 *
 * @author Daniel
 */
public class Venta_DB {
    public static boolean insertarVenta(Venta v){
        boolean resp = false;
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL REGISTRAR_VENTA (?,?,?)");
            cs.setString(1, v.getCliente());
            cs.setDouble(2, v.getTotal());
            cs.setString(3, v.getMascota());
            
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static ArrayList<Venta> ObtenerVentas(){
        ArrayList<Venta> lista = new ArrayList<Venta>();
        Connection cn;
        Conexion con = new Conexion();
        cn=con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_VENTA");
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                Venta v = new Venta();
                v.setCodigoVenta(rs.getString("Codigo_V"));
                v.setCodigoCliente(rs.getString("Codigo_U")); 
                v.setCliente(rs.getString("CLIENTE"));
                v.setTotal(rs.getDouble("Total")); 
                v.setFecha(rs.getString("Fecha")); 
                v.setMascota(rs.getString("Mascota")); 
              
                
                lista.add(v);
            } 
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }
    
    public static boolean eliminarVenta(Venta v){
        boolean resp = false;
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL ELIMINAR_VENTA (?)");
            cs.setString(1, v.getCodigoVenta());
            int i = cs.executeUpdate();
            
            if(i == 1){
                resp = true;
            }else{
                resp = false;
            }
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
        public static ArrayList<Venta> listarVentaPorCodigo(String Codigo){
        ArrayList<Venta> lista=new ArrayList<>();
       
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_VENTAS_POR_CODIGO (?)");
            cs.setString(1, Codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                 Venta v = new Venta();
                v.setCodigoVenta(rs.getString(1));
                v.setCodigoCliente(rs.getString(2));
                v.setMascota(rs.getString(5));
               

              
                lista.add(v);
            }
        }catch(Exception e){System.out.println(e);}
        return lista;
    }
        

    
}
