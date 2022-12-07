/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import dal.BlogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Category_Blog;
import model.User;

/**
 *
 * @author DELL
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class AddPostController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddPostController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddPostController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BlogDAO blogDB = new BlogDAO();
        ArrayList<Category_Blog> categories = blogDB.getCategories();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("addblog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        BlogDAO blogDB = new BlogDAO();
        User user = (User) request.getSession().getAttribute("account");
        int author_id = user.getId();
        int cid = Integer.parseInt(request.getParameter("cid"));
        String title = request.getParameter("title");
        String brief = request.getParameter("brief");
        String describe = request.getParameter("describe");
        boolean featured = Boolean.parseBoolean(request.getParameter("featured"));
        boolean status = Boolean.parseBoolean(request.getParameter("status"));

        Part image = request.getPart("image");
        if (image != null) {
            try {
                blogDB.AddBlog(cid, title, image, brief, describe, featured, author_id, status);
            } catch (Exception e) {
            }
        }

//        alert = "success";
//        message = "Add new blog successful!";
//        request.setAttribute("alert", message);
//        request.setAttribute("message", message);
//        request.getRequestDispatcher("postlist").forward(request, response);
        response.sendRedirect("postlist");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
