/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author 
 */
public class ArticuloDAOTest {

    public ArticuloDAOTest() {
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
     * Test of actualizarProducto method, of class ArticulosDAO.
     */
    @Test
    public void testActualizarProducto() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("actualizarArticulo");
        Items item = new Items();
        ArticulosDAO instance = new ArticulosDAO();
        int expResult = 0;
        int result = instance.actualizarProducto(item);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of insertarProducto method, of class ArticulosDAO.
     */
    @Test
    public void testInsertarProducto() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("insertarArticulo");
        Items item = new Items();
        item.setIdcategorias(1);
        Connection conexion = new ConexionMySQL().getConexion();
        ArticulosDAO instance = new ArticulosDAO();

        int expResult = 0;
        int result = instance.insertarProducto(item, conexion);

        assertNotEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of eliminarProducto method, of class ArticulosDAO.
     */
    @Test
    public void testEliminarProducto() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("eliminarArticulo");
        Items item = new Items();
        item.setIditem(14);
        ArticulosDAO instance = new ArticulosDAO();
        int expResult = 0;
        int result = instance.eliminarProducto(item);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerItems method, of class ArticulosDAO.
     */
    @Test
    public void testObtenerItems_int() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("obtenerArticulo");
        int id = 1;
        ArticulosDAO instance = new ArticulosDAO(new ArrayList<>());
        instance.obtenerItems(id);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerItems method, of class ArticulosDAO.
     */
    @Test
    public void testObtenerItems_3args() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("obtenerListaArticulo");
        int id = 1;
        String busca = "p";
        String nombreu = "admin";
        ArticulosDAO instance = new ArticulosDAO(new ArrayList<>());
        instance.obtenerItems(id, busca, nombreu);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerItems3 method, of class ArticulosDAO.
     */
    @Test
    public void testObtenerItems3() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("obtenerArticulo3");
        int id = 1;
        String busca = "admin";
        ArticulosDAO instance = new ArticulosDAO(new ArrayList<>());
        instance.obtenerItems3(id, busca);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerItems2 method, of class ArticulosDAO.
     */
    @Test
    public void testObtenerItems2() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("obtenerArticulo2");
        int id = 1;
        String busca = "p";
        String nombreu = "admin";
        ArticulosDAO instance = new ArticulosDAO(new ArrayList<>());
        instance.obtenerItems2(id, busca, nombreu);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerItems method, of class ArticulosDAO.
     */
    @Test
    public void testObtenerItems_int_String() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("obtenerArticulos");
        int id = 1;
        String busca = "admin";
        ArticulosDAO instance = new ArticulosDAO(new ArrayList<>());
        instance.obtenerItems(id, busca);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerRelacionados method, of class ItemsDAO.
     */
    /**
     * Test of obtenerItem method, of class ArticulosDAO.
     */
    @Test
    public void testObtenerItem_int_String() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("obtenerArticulo");
        int idtem = 1;
        String nombreu = "admin";
        ArticulosDAO instance = new ArticulosDAO(new ArrayList<>());
        Items expResult = null;
        Items result = instance.obtenerItem(idtem, nombreu);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerItem method, of class ArticulosDAO.
     */
    @Test
    public void testObtenerItem_int() throws Exception {
        System.out.print("Método testeado con Prueba de Caja blanca: ");
        System.out.println("obtenerArticulo");
        int idtem = 0;
        ArticulosDAO instance = new ArticulosDAO();
        Items expResult = null;
        Items result = instance.obtenerItem(idtem);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

}
