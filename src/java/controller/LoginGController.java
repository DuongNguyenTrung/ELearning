/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.UserDAO;
import model.GooglePojo;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import utils.AuthUtils;
import utils.Constants;

public class LoginGController extends HttpServlet {

    private UserDAO dao = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String code = request.getParameter("code");
        if (code == null || code.isEmpty()) {
            request.setAttribute("url", Constants.URL);
            request.setAttribute("fburl", Constants.FACEBOOK_URL);
            request.setAttribute("githubUrl", Constants.GITHUB_URL);
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = AuthUtils.getToken(code);
            GooglePojo googlePojo = AuthUtils.getUserInfo(accessToken);
            User a;
            if (dao.checkUsernameExist(googlePojo.getEmail())) {
                a = dao.getAccount(googlePojo.getEmail());
            } else {
                a = AuthUtils.toAccount(googlePojo);
                dao.register(a);
            }
            request.getSession().setAttribute("user", a);
            RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
            dis.forward(request, response);
        }
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
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        Account a = dao.login(username, password);
//        if (a != null) {
//            request.getSession().setAttribute("user", a);
//        } else {
//            request.setAttribute("msg", "login fail!");
//            request.setAttribute("login", true);
//            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
//            dis.forward(request, response);
//            return;
//        }
//        RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
//        dis.forward(request, response);
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
