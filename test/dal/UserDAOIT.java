/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.util.List;
import model.User;
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
public class UserDAOIT {
    
    public UserDAOIT() {
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

//    /**
//     * Test of getAccountByUsernameAndPassword method, of class UserDAO.
//     */
//    @Test
//    public void testGetAccountByUsernameAndPassword() {
//        System.out.println("getAccountByUsernameAndPassword");
//        String email = "";
//        String pass = "";
//        UserDAO instance = new UserDAO();
//        User expResult = null;
//        User result = instance.getAccountByUsernameAndPassword(email, pass);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }

    /**
     * Test of updateProfile method, of class UserDAO.
     */
    @Test
    public void testUpdateProfile() {
        System.out.println("updateProfile");
        String username = "Van Ha";
        String fullname = "Ha Hoang Van";
        String phonenumber = "0123456789";
        Boolean gender = true;
        String email = "vuongly@gmail.com";
        String avatar = "img/avatar.jpg";
        UserDAO instance = new UserDAO();
        instance.updateProfile(username, fullname, phonenumber, gender, email, avatar);
        // TODO review the generated test code and remove the default call to fail.
        fail("The fail");
    }
//
//    /**
//     * Test of searchSort method, of class UserDAO.
//     */
//    @Test
//    public void testSearchSort() {
//        System.out.println("searchSort");
//        String name = "";
//        int sort = 0;
//        UserDAO instance = new UserDAO();
//        List<User> expResult = null;
//        List<User> result = instance.searchSort(name, sort);
//        assertEquals(expResult, result);
//        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
//    }

}
