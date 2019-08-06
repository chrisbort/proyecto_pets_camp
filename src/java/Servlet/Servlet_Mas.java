/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Clase.*;
import Conexion.Conexion;
import java.sql.*;
import java.text.*;
import java.util.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CHRISTIAN
 */
public class Servlet_Mas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
            String accion = request.getParameter("accion");
            
            if(accion.equals("insertar")){
                this.RegistrarMascota(request, response); 
            }
            if(accion.equals("actualizar")){
                this.ActualizarMascota(request, response); 
            }
            if(accion.equals("eliminar")){
                this.DarBajaMascota(request, response); 
            }
            if(accion.equals("recuperar")){
                this.DarAltaMascota(request, response); 
            }
            
           
        }
    }
    
    private void RegistrarMascota(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Mascota m = new Mascota();
      
        m.setNombre(request.getParameter("txtNombre"));
        m.setSexo(request.getParameter("txtSexo"));
        m.setEdad(request.getParameter("txtEdad"));
        m.setRaza(request.getParameter("txtRaza"));
        m.setCodigoCliente(request.getParameter("txtCodigoCliente"));
       
        
        boolean resp = Mascota_DB.insertarMascota(m);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha registrado una mascota correctamente'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al registrar mascota'"); 
        }
    }

    private void ActualizarMascota(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Mascota m = new Mascota();
        m.setCodigoM(request.getParameter("txtCodigo"));    
        m.setNombre(request.getParameter("txtNombre"));
        m.setSexo(request.getParameter("txtSexo"));
        m.setEdad(request.getParameter("txtEdad"));
        m.setRaza(request.getParameter("txtRaza"));
        m.setCodigoCliente(request.getParameter("txtCodigoCliente"));
        
        
        
        boolean resp = Mascota_DB.actualizarMascota(m);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha modificado la mascota correctamente' "); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al modificar la mascota'"); 
        }
    }
    
    private void DarBajaMascota(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Mascota m = new Mascota();
        m.setCodigoM(request.getParameter("CodigoM"));  
        
        boolean resp = Mascota_DB.eliminarMascota(m);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha eliminado la mascota "+m.getCodigoM()+"'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al eliminar la mascota'"); 
        }
    }
    private void DarAltaMascota(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Mascota m = new Mascota();
          m.setCodigoM(request.getParameter("CodigoM"));  
        
        boolean resp = Mascota_DB.recuperarMascota(m);
        if(resp){
            response.sendRedirect("mensaje.jsp?mens='Se ha recuperado la mascota "+m.getCodigoM()+"'"); 
        }else{
            response.sendRedirect("mensaje.jsp?mens='Error al recuperar la mascota'"); 
        }
    }
    
    
    
    
    
    
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
