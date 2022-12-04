/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.Lesson;
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
public class LessonDAOIT {
    
    public LessonDAOIT() {
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
     * Test of UpdateLesson method, of class LessonDAO.
     */
//    @Test
//    public void testUpdateLesson() {
//        System.out.println("UpdateLesson");
//        String lessonname = "Period 1: Vocabulary";
//        String topic = "2";
//        String youtubelink = "https://www.youtube.co/watch?v=OmJ-4B-mS-Y";
//        String status = "true";
//        String describe = "text";
//        String type = "2";
//        String lid = "1";
//        LessonDAO instance = new LessonDAO();
//        instance.UpdateLesson(lessonname, topic, youtubelink, status, describe, type, lid);
//        
//        boolean expResult = true;
//        boolean result = instance.UpdateLesson(lessonname, topic, youtubelink, status, describe, type, lid);
//        assertEquals(expResult, result);
//    }
    @Test
    public void testUpdateLesson() {
        System.out.println("UpdateLesson");
        String lessonname = "Period 1: Vocabulary";
        String topic = "2";
        String youtubelink = "https://www.youtube.co/watch?v=OmJ-4B-mS-Y";
        String status = "true";
        String describe = "text";
        String type = "2";
        String lid = "";
        LessonDAO instance = new LessonDAO();
        instance.UpdateLesson(lessonname, topic, youtubelink, status, describe, type, lid);
        
        boolean expResult = false;
        boolean result = instance.UpdateLesson(lessonname, topic, youtubelink, status, describe, type, lid);
        assertEquals(expResult, result);
    }

    /**
     * Test of AddLesson method, of class LessonDAO.
     */
//    @Test
//    public void testAddLesson() {
//        System.out.println("AddLesson");
//        String lessonname = "";
//        String topic = "";
//        String youtubelink = "";
//        String status = "";
//        String brief = "";
//        String type = "";
//        LessonDAO instance = new LessonDAO();
//        instance.AddLesson(lessonname, topic, youtubelink, status, brief, type);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }
    
}
