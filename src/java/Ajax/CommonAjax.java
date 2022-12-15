/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Ajax;

import com.google.gson.Gson;
import dal.FeedbackDAO;
import dal.NoteDAO;
import dal.SliderDAO;
import dto.FeedbackAggregateDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Note;
import model.User;

/**
 *
 * @author duong
 */
public class CommonAjax extends HttpServlet {

    SliderDAO sdao = new SliderDAO();
    FeedbackDAO fdao = new FeedbackDAO();
    NoteDAO ndao = new NoteDAO();
    private Gson gson = new Gson();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        User acc = (User) session.getAttribute("account");

        String action = request.getParameter("action");
        switch (action) {
            case "slider":
                int id = Integer.parseInt(request.getParameter("id"));
                out.print(gson.toJson(sdao.getById(id)));
                break;
            case "feedback":
                int cid = Integer.parseInt(request.getParameter("id"));
                out.print(gson.toJson(new FeedbackAggregateDTO(fdao.findByCourseId(cid), fdao.aggregateByCourseId(cid))));
                break;
            case "addnote":

                int lid = Integer.parseInt(request.getParameter("lid"));
                int uid = acc.getId();
                String note = request.getParameter("note");
                
                out.print(ndao.create(new Note(uid, lid, note, new Date())));
                break;
            case "updatenote":
                id = Integer.parseInt(request.getParameter("id"));
                Note n = ndao.getById(id);
                n.setNote(request.getParameter("note"));
                ndao.update(n);
                out.print("ok");
                break;
            case "deletenote":
                id = Integer.parseInt(request.getParameter("id"));
                ndao.delete(id);
                out.print("ok");
                break;
        }
        out.flush();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(CommonAjax.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(CommonAjax.class.getName()).log(Level.SEVERE, null, ex);
        }
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
