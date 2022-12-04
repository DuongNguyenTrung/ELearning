/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.http.Part;
import model.Blog;
import model.Category_Blog;
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
public class BlogDAOIT {

    public BlogDAOIT() {
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
     * Test of AddBlog method, of class BlogDAO.
     */
    @Test
    public void testAddBlog() {
        System.out.println("AddBlog");
        int cid = 0;
        String title = "";
        Part img = null;
        String brief = "";
        String describe = "";
        boolean featured = false;
        int author_id = 0;
        boolean status = false;
        BlogDAO instance = new BlogDAO();
        instance.AddBlog(cid, title, img, brief, describe, featured, author_id, status);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

}
