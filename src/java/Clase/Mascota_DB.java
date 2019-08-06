/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clase;

import java.sql.*;
import java.util.*;
import Conexion.Conexion;
public class Mascota_DB {
            // Traer todo los productos
    public static ArrayList<Mascota> obtenerMascotasHabilitados(){
       
        ArrayList<Mascota> lista = new ArrayList<Mascota>();
            Connection cn;
            Conexion con = new Conexion();
            cn = con.conectar();
            
            CallableStatement cs = null;
            ResultSet rs = null;
            
            try{
                cs=cn.prepareCall("CALL MOSTRAR_MASCOTAS_HABILITADOS");
                rs=cs.executeQuery();
                while(rs.next()){
                    Mascota m = new Mascota
                            (rs.getString("Codigo_M"),  
                            rs.getString("Nombre_M"), 
                            rs.getString("Sexo_M"), 
                            rs.getString("Edad_M"), 
                            rs.getString("Raza_M"),
                            rs.getString("usuario"),
                            rs.getString("Estado_M"));
                    lista.add(m);
                }
                
            }catch(Exception e){
                System.out.println(e);
            }
            
        return lista;
    }
    

      
    public static ArrayList<Mascota> obtenerMascotasInhabilitados(){
      
        ArrayList<Mascota> lista = new ArrayList<Mascota>();
            Connection cn;
            Conexion con = new Conexion();
            cn = con.conectar();
            
            CallableStatement cs = null;
            ResultSet rs = null;
            
            try{
                cs=cn.prepareCall("CALL MOSTRAR_MASCOTAS_INHABILITADOS");
                rs=cs.executeQuery();
                while(rs.next()){
                    Mascota m = new Mascota
                            (rs.getString("Codigo_M"),  
                            rs.getString("Nombre_M"), 
                            rs.getString("Sexo_M"), 
                            rs.getString("Edad_M"), 
                            rs.getString("Raza_M"),
                            rs.getString("usuario"),
                            rs.getString("Estado_M"));
                    lista.add(m);
                }
                
            }catch(Exception e){
                System.out.println(e);
            }
            
        return lista;
    }

    public static boolean insertarMascota(Mascota m){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL REGISTRAR_MASCOTA (?,?,?,?,?)");

            
            
            cs.setString(1, m.getNombre());
            cs.setString(2, m.getSexo());
            cs.setString(3, m.getEdad());
            cs.setString(4, m.getRaza());
            cs.setString(5, m.getCodigoCliente());
       
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean actualizarMascota(Mascota m){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL MODIFICAR_MASCOTA (?,?,?,?,?,?)");
            cs.setString(1, m.getCodigoM());
           cs.setString(2, m.getNombre());
            cs.setString(3, m.getSexo());
            cs.setString(4, m.getEdad());
            cs.setString(5, m.getRaza());
            cs.setString(6, m.getCodigoCliente());
           
            cs.executeUpdate();
            
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean eliminarMascota(Mascota m){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL ELIMINAR_MASCOTA (?)");
            cs.setString(1, m.getCodigoM());

            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static boolean recuperarMascota(Mascota m){
        boolean resp = false;
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            CallableStatement cs = cn.prepareCall("CALL RECUPERAR_MASCOTA (?)");
            cs.setString(1, m.getCodigoM());
            
            int i = cs.executeUpdate();
            
            if(i==1)
                resp = true;
            else
                resp = false;
            
        }catch(Exception e){System.out.println(e);}
        return resp;
    }
    
    public static ArrayList<Mascota> listarMascotaPorCodigo(String Codigo){
        ArrayList<Mascota> lista=new ArrayList<>();
       
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            
            CallableStatement cs = cn.prepareCall("CALL MOSTRAR_MASCOTAS_HABILITADOS (?)");
            cs.setString(1, Codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                 Mascota m = new Mascota();
                m.setCodigoM(rs.getString(1));
                m.setNombre(rs.getString(2));
                m.setSexo(rs.getString(3));
                m.setEdad(rs.getString(4));
                m.setRaza(rs.getString(5));
                m.setCodigoCliente(rs.getString(6));
                m.setEstado_M(rs.getString(7));
                lista.add(m);
            }
        }catch(Exception e){System.out.println(e);}
        return lista;
    }
    public static Mascota listarMascotaPorCodigo2(String Codigo){
        Mascota m = new Mascota();
       
        
        Connection cn;
        Conexion con = new Conexion();
        cn = con.conectar();
        
        try{
            
            CallableStatement cs = cn.prepareCall("CALL BUSCAR_MASCOTA_CODIGO (?)");
            cs.setString(1, Codigo);
            ResultSet rs = cs.executeQuery();
            while(rs.next()){
                m.setCodigoM(rs.getString("Codigo_M"));           
                m.setNombre(rs.getString("Nombre_M"));
                m.setSexo(rs.getString("Sexo_M"));
                m.setEdad(rs.getString("Edad_M"));
                m.setRaza(rs.getString("Raza_M"));
                m.setCodigoCliente(rs.getString("Codigo_U"));
                
               
            }
        }catch(Exception e){System.out.println(e);}
        return m;
    }
    

    
}