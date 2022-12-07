/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.BlogDAO;
import dal.CommentDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Date;
import model.Blog;
import model.Category_Blog;
import model.Comment;
import model.User;

/**
 *
 * @author DELL
 */
public class BlogController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        BlogDAO blogDB = new BlogDAO();

        String action = request.getParameter("action");
        if (action == null) {

            // list of blog active
            ArrayList<Blog> blogs = blogDB.getActiveBlogs();
            ArrayList<Category_Blog> categories = blogDB.getCategories();
            int type = 0;
            request.setAttribute("type", type);
            //phân trang
            int page, numperpage = 2;
            int size = blogs.size();
            int num = (size % numperpage == 0 ? (size / numperpage) : (size / numperpage) + 1);//so trang
            String xpage = request.getParameter("page");
            if (xpage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xpage);
            }
            int start, end;
            start = (page - 1) * numperpage;
            end = Math.min(page * numperpage, size);
            ArrayList<Blog> listblog = blogDB.getListByPage(blogs, start, end);

            request.setAttribute("page", page);
            request.setAttribute("num", num);
            request.setAttribute("categories", categories);
            request.setAttribute("blogs", blogs);
            request.setAttribute("listblog", listblog);
            List listTopPost = blogDB.getTop4Post();
            request.setAttribute("listTopPost", listTopPost);

            request.getRequestDispatcher("blogList.jsp").forward(request, response);
        }
        if (action.equals("detail")) {
            CommentDAO cdao = new CommentDAO();
            int id = Integer.parseInt(request.getParameter("blog_id"));
            Blog blog = blogDB.getBlogById(id);
            request.setAttribute("blog", blog);
            ArrayList<Category_Blog> categories = blogDB.getCategories();
            request.setAttribute("categories", categories);
            List listTopPost = blogDB.getTop4Post();

            request.setAttribute("bid", id);
            request.setAttribute("comments", cdao.findByBlogId(id));
            request.setAttribute("listTopPost", listTopPost);
            request.getRequestDispatcher("blogDetail.jsp").forward(request, response);

        }
        if (action.equals("search")) {
            String content = request.getParameter("content");
            ArrayList<Blog> blogs = blogDB.search(content);
            request.setAttribute("blogs", blogs);
            ArrayList<Category_Blog> categories = blogDB.getCategories();
            int type = 1;
            request.setAttribute("type", type);
            int page, numperpage = 2;
            int size = blogs.size();
            int num = (size % numperpage == 0 ? (size / numperpage) : (size / numperpage) + 1);//so trang
            String xpage = request.getParameter("page");
            if (xpage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xpage);
            }
            int start, end;
            start = (page - 1) * numperpage;
            end = Math.min(page * numperpage, size);
            ArrayList<Blog> listblog = blogDB.getListByPage(blogs, start, end);

            request.setAttribute("page", page);
            request.setAttribute("num", num);
            request.setAttribute("categories", categories);
            request.setAttribute("blogs", blogs);
            request.setAttribute("listblog", listblog);
            List listTopPost = blogDB.getTop4Post();
            request.setAttribute("listTopPost", listTopPost);
            request.setAttribute("content", content);

            request.getRequestDispatcher("blogList.jsp").forward(request, response);
        }
        if (action.equals("category")) {
            int id = Integer.parseInt(request.getParameter("id"));
            ArrayList<Blog> blogs = blogDB.getBlogsByCategory(id);
            request.setAttribute("blogs", blogs);
            ArrayList<Category_Blog> categories = blogDB.getCategories();
            int type = 2;
            request.setAttribute("type", type);
            int page, numperpage = 2;
            int size = blogs.size();
            int num = (size % numperpage == 0 ? (size / numperpage) : ((size / numperpage)) + 1);//so trang
            String xpage = request.getParameter("page");
            if (xpage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xpage);
            }
            int start, end;
            start = (page - 1) * numperpage;
            end = Math.min(page * numperpage, size);
            ArrayList<Blog> listblog = blogDB.getListByPage(blogs, start, end);
            request.setAttribute("page", page);
            request.setAttribute("num", num);
            request.setAttribute("categories", categories);
            request.setAttribute("blogs", blogs);
            request.setAttribute("listblog", listblog);
            List listTopPost = blogDB.getTop4Post();
            request.setAttribute("listTopPost", listTopPost);
            request.setAttribute("id", id);
            request.getRequestDispatcher("blogList.jsp").forward(request, response);
        }

    }

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
        BlogDAO blogDB = new BlogDAO();
        CommentDAO cdao = new CommentDAO();
        User acc = (User) request.getSession().getAttribute("account");
        if (acc == null) {
            response.sendRedirect("home");
            return;
        }
        String cmt = request.getParameter("cmt");
        String bidString = request.getParameter("bid");
        int bid = Integer.parseInt(bidString);
        Comment c = new Comment();
        c.setBlogId(bid);
        c.setCmt(cmt);
        c.setUid(acc.getId());
        c.setCreateAt(new Date());
        cdao.create(c);

        Blog blog = blogDB.getBlogById(bid);
        request.setAttribute("blog", blog);
        ArrayList<Category_Blog> categories = blogDB.getCategories();
        request.setAttribute("categories", categories);
        List listTopPost = blogDB.getTop4Post();

        request.setAttribute("comments", cdao.findByBlogId(bid));
        request.setAttribute("listTopPost", listTopPost);
        request.getRequestDispatcher("blogDetail.jsp").forward(request, response);
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
