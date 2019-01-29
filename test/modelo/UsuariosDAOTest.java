/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author JOSE
 */
public class UsuariosDAOTest {
    
    public UsuariosDAOTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of insertarUsuarios method, of class UsuariosDAO.
     */
    @Test
    public void testInsertarUsuarios() throws Exception {
        System.out.println("insertarUsuarios");
        Usuarios u = null;
        UsuariosDAO instance = new UsuariosDAO();
        int expResult = 0;
        int result = instance.insertarUsuarios(u);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of actualizarUsuarios method, of class UsuariosDAO.
     */
    @Test
    public void testActualizarUsuarios() throws Exception {
        System.out.println("actualizarUsuarios");
        Usuarios u = null;
        UsuariosDAO instance = new UsuariosDAO();
        int expResult = 0;
        int result = instance.actualizarUsuarios(u);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerUsusario method, of class UsuariosDAO.
     */
    @Test
    public void testObtenerUsusario_Usuarios() throws Exception {
        System.out.println("obtenerUsusario");
        Usuarios user = null;
        UsuariosDAO instance = new UsuariosDAO();
        Usuarios expResult = null;
        Usuarios result = instance.obtenerUsusario(user);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerUsusario method, of class UsuariosDAO.
     */
    @Test
    public void testObtenerUsusario_String() throws Exception {
        System.out.println("obtenerUsusario");
        String nombreusuario = "";
        UsuariosDAO instance = new UsuariosDAO();
        Usuarios expResult = null;
        Usuarios result = instance.obtenerUsusario(nombreusuario);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
