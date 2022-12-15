/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDAO;
import dal.BlogDAO;
import dal.CourseDAO;
import dal.SliderDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.Optional;
import model.CategoryCourse;
import model.Course;
import model.Blog;
import model.User;
import utils.Constants;

/**
 *
 * @author win
 */
public class homeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CourseDAO cdao = new CourseDAO();
        SliderDAO sdao = new SliderDAO();
        List<Course> listtop = new ArrayList<>();
        listtop = cdao.getTop3Course();
        Course newestCourse = cdao.getNewestCourse();
        List<CategoryCourse> listCategory = new ArrayList<>();
        listCategory = cdao.getAllCategoryCourse();
        UserDAO adao = new UserDAO();
        List<User> listExpert = new ArrayList<>();
        listExpert = adao.getAllExpert();
//        List<Course> list6Course = new ArrayList<>();
//        list6Course = cdao.get6Course();
//        request.setAttribute("list6Course", list6Course);
        BlogDAO bdao = new BlogDAO();
        Blog newestPost = new Blog();
        newestPost = bdao.getNewestPost();
        List<Blog> listTopPost = new ArrayList<>();
        listTopPost = bdao.getTop4Post();

        //cookie
        try {
            String username = readCookie("email", request).orElse("");
            String password = readCookie("password", request).orElse("");
            request.setAttribute("username", username);
            request.setAttribute("password", password);
        } catch (Exception e) {
        }

        request.setAttribute("sliders", sdao.findAllActive());
        request.setAttribute("listTopPost", listTopPost);
        request.setAttribute("newestPost", newestPost);
        request.setAttribute("listExpert", listExpert);
        request.setAttribute("listCategory", listCategory);
        request.setAttribute("newestCourse", newestCourse);
        request.setAttribute("listtop", listtop);
        request.setAttribute("url", Constants.URL);
        request.setAttribute("fburl", Constants.FACEBOOK_URL);
        request.setAttribute("githubUrl", Constants.GITHUB_URL);
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    public Optional<String> readCookie(String key, HttpServletRequest request) {
        return Arrays.stream(request.getCookies())
                .filter(c -> key.equals(c.getName()))
                .map(Cookie::getValue)
                .findAny();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
