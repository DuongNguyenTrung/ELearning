/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.UserDAO;
import utils.AuthUtils;
import utils.Constants;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.FbPojo;
import model.User;

public class LoginFbController extends HttpServlet {

    private UserDAO dao = new UserDAO();

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        if (code == null || code.isEmpty()) {
            request.setAttribute("url", Constants.URL);
            request.setAttribute("fburl", Constants.FACEBOOK_URL);
            request.setAttribute("githubUrl", Constants.GITHUB_URL);
            RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
            dis.forward(request, response);
        } else {
            String accessToken = AuthUtils.getTokenFb(code);
            FbPojo gpojo = AuthUtils.getUserInfoFb(accessToken);
            User a;
            if (dao.checkUsernameExist(gpojo.getEmail())) {
                a = dao.getAccount(gpojo.getEmail());
            } else {
                a = AuthUtils.toAccount(gpojo);
                dao.register(a, true);
            }
            request.getSession().setAttribute("account", a);
            RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
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
