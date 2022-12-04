/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.ArrayList;
import model.Price_Package;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Laptop88
 */
public class PricePackageDAOIT {
    
    public PricePackageDAOIT() {
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
     * Test of getPricePackageById method, of class PricePackageDAO.
     */
    @Test
    public void testGetPricePackageById() {
        System.out.println("getPricePackageById");
        int id = 0;
        PricePackageDAO instance = new PricePackageDAO();
        Price_Package expResult = null;
        Price_Package result = instance.getPricePackageById(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
    }
//    @Test
//    public void testGetPricePackageById() {
//        System.out.println("getPricePackageById");
//        int id = 0;
//        PricePackageDAO instance = new PricePackageDAO();
//        Price_Package expResult = null;
//        Price_Package result = instance.getPricePackageById(id);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//    }
}
