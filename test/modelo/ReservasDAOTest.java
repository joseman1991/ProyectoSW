/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.List;
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
public class ReservasDAOTest {
    
    public ReservasDAOTest() {
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
     * Test of insertarReservas method, of class ReservasDAO.
     */
    @Test
    public void testInsertarReservas() throws Exception {
        System.out.println("insertarReservas");
        Reservas re = null;
        ReservasDAO instance = new ReservasDAO();
        instance.insertarReservas(re);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insertar method, of class ReservasDAO.
     */
    @Test
    public void testInsertar() throws Exception {
        System.out.println("insertar");
        Reservas re = null;
        List<DetalleCompra> lista = null;
        String ruta = "";
        ReservasDAO instance = new ReservasDAO();
        instance.insertar(re, lista, ruta);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insertar2 method, of class ReservasDAO.
     */
    @Test
    public void testInsertar2() throws Exception {
        System.out.println("insertar2");
        Reservas re = null;
        List<DetalleCompra> lista = null;
        String ruta = "";
        ReservasDAO instance = new ReservasDAO();
        instance.insertar2(re, lista, ruta);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of isReserva method, of class ReservasDAO.
     */
    @Test
    public void testIsReserva() throws Exception {
        System.out.println("isReserva");
        Reservas reserva = null;
        ReservasDAO instance = new ReservasDAO();
        boolean expResult = false;
        boolean result = instance.isReserva(reserva);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerReservas method, of class ReservasDAO.
     */
    @Test
    public void testObtenerReservas() throws Exception {
        System.out.println("obtenerReservas");
        String nombreusuario = "";
        ReservasDAO instance = new ReservasDAO();
        instance.obtenerReservas(nombreusuario);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerReservas2 method, of class ReservasDAO.
     */
    @Test
    public void testObtenerReservas2() throws Exception {
        System.out.println("obtenerReservas2");
        ReservasDAO instance = new ReservasDAO();
        instance.obtenerReservas2();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerReservas3 method, of class ReservasDAO.
     */
    @Test
    public void testObtenerReservas3() throws Exception {
        System.out.println("obtenerReservas3");
        String nom = "";
        ReservasDAO instance = new ReservasDAO();
        instance.obtenerReservas3(nom);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerReservas4 method, of class ReservasDAO.
     */
    @Test
    public void testObtenerReservas4() throws Exception {
        System.out.println("obtenerReservas4");
        String nom = "";
        ReservasDAO instance = new ReservasDAO();
        instance.obtenerReservas4(nom);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of eliminar method, of class ReservasDAO.
     */
    @Test
    public void testEliminar() throws Exception {
        System.out.println("eliminar");
        long id = 0L;
        ReservasDAO instance = new ReservasDAO();
        instance.eliminar(id);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of actualizar method, of class ReservasDAO.
     */
    @Test
    public void testActualizar() throws Exception {
        System.out.println("actualizar");
        long id = 0L;
        String estado = "";
        ReservasDAO instance = new ReservasDAO();
        instance.actualizar(id, estado);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerCompras method, of class ReservasDAO.
     */
    @Test
    public void testObtenerCompras() throws Exception {
        System.out.println("obtenerCompras");
        String nombreusuario = "";
        ReservasDAO instance = new ReservasDAO();
        instance.obtenerCompras(nombreusuario);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerReserva method, of class ReservasDAO.
     */
    @Test
    public void testObtenerReserva() throws Exception {
        System.out.println("obtenerReserva");
        long idreserva = 0L;
        ReservasDAO instance = new ReservasDAO();
        Reservas expResult = null;
        Reservas result = instance.obtenerReserva(idreserva);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerCompra method, of class ReservasDAO.
     */
    @Test
    public void testObtenerCompra() throws Exception {
        System.out.println("obtenerCompra");
        long idreserva = 0L;
        ReservasDAO instance = new ReservasDAO();
        Reservas expResult = null;
        Reservas result = instance.obtenerCompra(idreserva);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
