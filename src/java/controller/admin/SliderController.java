/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.SliderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.util.Date;
import model.Slider;

@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class SliderController extends HttpServlet {

    private SliderDAO dao = new SliderDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("ls", dao.findAll());
        request.getRequestDispatcher("sliderlist.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("status")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Slider s = dao.getById(id);
            s.setStatus(!s.getStatus());
            dao.update(s);
        }
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        Part image = request.getPart("img");
        String fileName;
        int id;
        String uploadPath = getServletContext().getRealPath("") + "img";
        File uploadDir = new File(uploadPath);

        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        switch (action) {
            case "create":
                fileName = getFileName(image);
                image.write(uploadPath + File.separator + fileName);

                Slider s = new Slider(request.getParameter("title"), request.getParameter("subtitle"), request.getParameter("content"), fileName, true);
                dao.create(s);
                break;
            case "update":
                id = Integer.parseInt(request.getParameter("id"));

                s = dao.getById(id);
                fileName = getFileName(image);
                if (!fileName.isEmpty()) {
                    image.write(uploadPath + File.separator + fileName);
                    s.setImg(fileName);
                }
                s.setTitle(request.getParameter("title"));
                s.setSubtitle(request.getParameter("subtitle"));
                s.setScontent(request.getParameter("content"));
                s.setCreateAt(new Date());
                dao.update(s);
                break;
        }
        processRequest(request, response);
    }

    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return "abc";
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
