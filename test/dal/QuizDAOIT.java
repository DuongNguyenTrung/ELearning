/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.ArrayList;
import model.AnswerOption;
import model.Quiz;
import model.UserQuiz;
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
public class QuizDAOIT {
    
    public QuizDAOIT() {
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
     * Test of insertUserQuiz method, of class QuizDAO.
     */
    @Test
    public void testInsertUserQuiz() {
        System.out.println("insertUserQuiz");
        UserQuiz u = null;
        QuizDAO instance = new QuizDAO();
        instance.insertUserQuiz(u);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

   
}
