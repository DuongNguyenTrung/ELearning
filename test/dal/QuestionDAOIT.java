/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.ArrayList;
import model.AnswerOption;
import model.Dimension;
import model.QLevel;
import model.Question;
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
public class QuestionDAOIT {
    
    public QuestionDAOIT() {
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
     * Test of getQSByQuizID method, of class QuestionDAO.
     */
    @Test
    public void testGetQSByQuizID() {
        System.out.println("getQSByQuizID");
        int quizID = 1;
        QuestionDAO instance = new QuestionDAO();
        ArrayList<Question> expResult = new ArrayList<>();
        ArrayList<Question> result = instance.getQSByQuizID(quizID);
        assertEquals(expResult, result);
    }
//    public void testGetQSByQuizID() {
//        System.out.println("getQSByQuizID");
//        int quizID = 0;
//        QuestionDAO instance = new QuestionDAO();
//        ArrayList<Question> expResult = new ArrayList<>();
//        ArrayList<Question> result = instance.getQSByQuizID(quizID);
//        assertEquals(expResult, result);
//    }

    
}
