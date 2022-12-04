/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import javax.annotation.PreDestroy;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
//import org.junit.runner.RunWith;

/**
 *
 * @author Laptop88
 */
//@RunWith(PowerMockRunner.class)
//@PrepareForTest({JdbcHelper.class, AnswerOptionDAO.class})
public class AnswerOptionDAOIT {
    
    public AnswerOptionDAOIT() {
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
    public void testAddAnswer() {
        System.out.println("AddAnswer");
        String qid = "1";
        String content = "E. 12";
        String isTrue = "true";
        AnswerOptionDAO instance = new AnswerOptionDAO();
        instance.AddAnswer(qid, content, isTrue);
        boolean expResult = true;
        boolean result = instance.AddAnswer(qid, content, isTrue);
        assertEquals(expResult, result);
    }
 
//    @Test
//    public void testAddAnswer() {
//        System.out.println("AddAnswer");
//        String qid = "1";
//        String content = "E. 12";
//        String isTrue = "false";
//        AnswerOptionDAO instance = new AnswerOptionDAO();
//        instance.AddAnswer(qid, content, isTrue);
//        boolean expResult = true;
//        boolean result = instance.AddAnswer(qid, content, isTrue);
//        assertEquals(expResult, result);
//    }
//    @Test
//    public void testAddAnswer() {
//        System.out.println("AddAnswer");
//        String qid = "";
//        String content = "";
//        String isTrue = "true";
//        AnswerOptionDAO instance = new AnswerOptionDAO();
//        instance.AddAnswer(qid, content, isTrue);
//        boolean expResult = false;
//        boolean result = instance.AddAnswer(qid, content, isTrue);
//        assertEquals(expResult, result);
//    }
}
