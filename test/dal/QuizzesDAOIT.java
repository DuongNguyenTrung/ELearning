/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.List;
import model.Quizzes;
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
public class QuizzesDAOIT {
    
    public QuizzesDAOIT() {
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


    @Test
    public void testSearchQuizzes() {
        System.out.println("searchQuizzes");
        int[] cid = {1, 2};
        String name = "Test Final";
        int status = 1;
        int pageIndex = 1;
        int pageSize = 10;
        QuizzesDAO instance = new QuizzesDAO();
        List<Quizzes> expResult = null;
        List<Quizzes> result = instance.searchQuizzes(cid, name, status, pageIndex, pageSize);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        
    }




}
