/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import dal.BlogDAO;
import java.io.IOException;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import model.Blog;
import model.Category_Blog;

/**
 *
 * @author DELL
 */
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class EditPostController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("blogid"));
        BlogDAO blogDB = new BlogDAO();
        Blog blog = blogDB.getBlogById(id);
        request.setAttribute("blog", blog);
        ArrayList<Category_Blog> categories = blogDB.getCategories();
        request.setAttribute("categories", categories);

        request.getRequestDispatcher("editpost.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        BlogDAO blogDB = new BlogDAO();
        if (action.equals("editimage")) {
            int blog_id = Integer.parseInt(request.getParameter("blogid"));
            Part image = request.getPart("image");
            if (image != null) {
                try {
                    blogDB.UpdateImage(blog_id, image);
                } catch (Exception e) {
                }
            }
            Blog blog = blogDB.getBlogById(blog_id);
            request.setAttribute("blog", blog);
            ArrayList<Category_Blog> categories = blogDB.getCategories();
            request.setAttribute("categories", categories);
//            response.sendRedirect("postlist");
            response.sendRedirect("viewpost?postid=" + blog_id);
        }

        if (action.equals("update")) {
            int blog_id = Integer.parseInt(request.getParameter("blogid"));
            int cid = Integer.parseInt(request.getParameter("cid"));
            String title = request.getParameter("title");
            String brief = request.getParameter("brief");
            String describe = request.getParameter("describe");
            boolean featured = Boolean.parseBoolean(request.getParameter("featured"));
            boolean status = Boolean.parseBoolean(request.getParameter("status"));

            blogDB.UpdateBlog(cid, title, brief, describe, featured, status, blog_id);

            Blog blog = blogDB.getBlogById(blog_id);
            request.setAttribute("blog", blog);
            ArrayList<Category_Blog> categories = blogDB.getCategories();
            request.setAttribute("categories", categories);
//            response.sendRedirect("postlist");
            response.sendRedirect("viewpost?postid=" + blog_id);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
