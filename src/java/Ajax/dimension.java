/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ajax;

import dal.DimensionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Dimension;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "dimension", urlPatterns = {"/dimension"})
public class dimension extends HttpServlet {

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
        DimensionDAO dao = new DimensionDAO();

        String page = request.getParameter("page");
        String total = request.getParameter("total");
        String search = request.getParameter("search");

        int page1 = Integer.parseInt(page);

        int total1 = dao.getAllTotal(search);
        if (total1 % 10 != 0) {
            total1 = total1 / 10 + 1;
        } else if (total1 == 0) {
            total1 = 1;
        } else {
            total1 = total1 / 10;
        }
        ArrayList<Dimension> dimensions = dao.getAllCourseDimensions(page1, 10, search);
        PrintWriter out = response.getWriter();
        out.print("<div class=\"my-4\" style=\"clear: both; border: solid black 1px;\">\n"
                + "                                <div class=\"table-responsive \">\n"
                + "                                    <table class=\"table table-bordered table-hover  \" style=\" margin-bottom: 0px; font-size: 15px; \" > \n"
                + "                                        <tr class=\"table-primary\">\n"
                + "                                            <th>\n"
                + "                                                ID \n"
                + "                                            </th>\n"
                + "                                            <th >\n"
                + "                                                Type \n"
                + "                                            </th>\n"
                + "                                            <th >\n"
                + "                                                Dimension\n"
                + "                                            </th>\n"
                + "\n"
                + "                                            <th >\n"
                + "                                                Action\n"
                + "                                            </th>\n"
                + "\n"
                + "\n"
                + "                                        </tr>");
        for (Dimension o : dimensions) {
            out.print(" <tr>\n"
                    + "                                                <td>\n"
                    + "                                                   " + o.getId() + "\n"
                    + "                                                </td>\n"
                    + "                                                <td>\n"
                    + "                                                    " + o.getType() + "\n"
                    + "                                                </td>\n"
                    + "                                                <td>\n"
                    + "                                                    " + o.getName() + "\n"
                    + "                                                </td>\n"
                    + "\n"
                    + "                                                <td >\n"
                    + "                                                    <span alt=\"view\"  class=\"mr-2\"><a href=\"#\" data-bs-toggle=\"modal\" data-bs-target=\"#viewdimension" + o.getId() + "\" >  <i class=\"fa-solid fa-eye\"></i> View </a></span>\n"
                    + "                                                    <span alt=\"edit\"  class=\"mr-2\"><a href=\"#\" data-bs-toggle=\"modal\" data-bs-target=\"#edit" + o.getId() + "\" >  <i class=\"fa-solid fa-pen-to-square\"></i> Edit </a></span>\n"
                    + "                                                    <span alt=\"delete\"  class=\"mr-2\"><a href=\"#\" data-bs-toggle=\"modal\" data-bs-target=\"#deletedimension" + o.getId() + "\" >  <i class=\"fa-solid fa-trash-can\"></i> Delete</a></span>\n"
                    + "                                                    <div class=\"modal fade\" id=\"viewdimension" + o.getId() + "\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"#viewdimension" + o.getId() + "\" aria-hidden=\"true\">\n"
                    + "                                                        <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n"
                    + "                                                            <div class=\"modal-content\">\n"
                    + "                                                                <div class=\"modal-header\">\n"
                    + "                                                                    <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">View Dimension ID = " + o.getId() + "</h5>\n"
                    + "                                                                </div>\n"
                    + "                                                                <div class=\"modal-body\">\n"
                    + "                                                                    <form class=\"was-validated\">\n"
                    + "                       \n"
                    + "                                                                        <div class=\"mb-3\">\n"
                    + "                                                                            <label for=\"type\" class=\"form-label\" >Type</label>\n"
                    + "                                                                            <input type=\"text\" id=\"type\" name=\"type\" class=\"form-control\"  disabled value=\"" + o.getType() + "\">\n"
                    + "                                                                            <div class=\"invalid-feedback\">Input dimension type</div>\n"
                    + "                                                                        </div>\n"
                    + "\n"
                    + "                                                                                                    <div class=\"mb-3\">\n"
                    + "                                                                            <label for=\"name\" class=\"form-label\" >Name</label>\n"
                    + "                                                                            <input type=\"text\" id=\"name\" name=\"name\" class=\"form-control\" disabled value=\"" + o.getName() + "\">\n"
                    + "                                                                            <div class=\"invalid-feedback\">Input dimension name</div>\n"
                    + "                                                                        </div>\n"
                    + "                                                                    <div class=\"mb-3\">\n"
                    + "                                                                        <label for=\"desribe\" class=\"form-check-label\">Description</label>\n"
                    + "                                                                        <textarea rows=\"5\" cols=\"70\"  style=\"resize: none;\" disabled class=\"form-control\"\n"
                    + "                                                                                              required>" + o.getDescription() + "</textarea>\n"
                    + "                                                                                </div>\n"
                    + "\n"
                    + "                                                                    </form>\n"
                    + "\n"
                    + "                                                                </div>\n"
                    + "\n"
                    + "                                                            </div>\n"
                    + "                                                        </div>\n"
                    + "                                                    </div>\n"
                    + "\n"
                    + "                                                    <div class=\"modal fade\" id=\"edit" + o.getId() + "\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"#deletedimension" + o.getId() + "\" aria-hidden=\"true\">\n"
                    + "                                                        <div class=\"modal-dialog modal-dialog-centered modal-lg\" role=\"document\">\n"
                    + "                                                            <div class=\"modal-content\">\n"
                    + "                                                                    <div class=\"modal-header\">\n"
                    + "                                                                    <h5 class=\"modal-title\" >Edit Dimension ID = " + o.getId() + "</h5>\n"
                    + "                                                                </div>\n"
                    + "                                                                  \n"
                    + "                                                                <div class=\"modal-body\">\n"
                    + "                                                                      <form class=\"was-validated\" method=\"post\" action=\"subjectdimension?action=edit&id=" + o.getId()+ "\">\n"
                    + "                                                                        <div class=\"row\">\n"
                    + "                                                                        <div class=\"col-6\">\n"
                    + "                                                                        <div class=\"mb-3\">\n"
                    + "                                                                            <label for=\"type\" class=\"form-label\" >Type</label>\n"
                    + "                                                                            <input type=\"text\" id=\"type\" name=\"type\" class=\"form-control\" required value=\"" + o.getType() + "\">\n"
                    + "                                                                            <div class=\"invalid-feedback\">Input dimension type</div>\n"
                    + "                                                                        </div>\n"
                    + "                                                                            <div class=\"mb-3\">\n"
                    + "                                                                            <label for=\"name\" class=\"form-label\" >Name</label>\n"
                    + "                                                                            <input type=\"text\" id=\"name\" name=\"name\" class=\"form-control\" value=\"" + o.getName() + "\" required>\n"
                    + "                                                                            <div class=\"invalid-feedback\">Input dimension name</div>\n"
                    + "                                                                        </div>\n"
                    + "                                                                        </div>\n"
                    + "                                                                            \n"
                    + "                                                                            <div class=\"col-6\">\n"
                    + "                                                                         <div class=\"mb-3\">\n"
                    + "                                                                        <label for=\"desribe\" class=\"form-check-label\">Description</label>\n"
                    + "                                                                        <textarea rows=\"5\" cols=\"10\" style=\"resize:none;\" name=\"description\"   class=\"form-control\"\n"
                    + "                                                                                              >" + o.getDescription() + "</textarea>\n"
                    + "                                                                                </div>\n"
                    + "                                                                            </div>\n"
                    + "                                                                        </div>\n"
                    + "                                                                <div class=\"modal-footer\">\n"
                    + "                                                                    <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Cancel</button>\n"
                    + "                                                                    <button class=\"btn btn-primary\"  type=\"submit\" \">Save </a>\n"
                    + "                                                                </div>\n"
                    + "                                                                    </form>\n"
                    + "                                                            </div>\n"
                    + "                                                        </div>\n"
                    + "                                                    </div>\n"
                    + "                                                    </div>\n"
                    + "                                                    <div class=\"modal fade\" id=\"deletedimension" + o.getId() + "\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"#deletedimension" + o.getId() + "\" aria-hidden=\"true\">\n"
                    + "                                                        <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n"
                    + "                                                            <div class=\"modal-content\">\n"
                    + "                                                                <div class=\"modal-header\">\n"
                    + "                                                                    <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">Delete Dimension</h5>\n"
                    + "                                                                </div>\n"
                    + "                                                                <div class=\"modal-body\">\n"
                    + "                                                                         Do you want to delete this dimension? ID = "+ o.getId()+"      \n"
                    + "                                                                </div>\n"
                    + "                                                                <div class=\"modal-footer\">\n"
                    + "                                                                    <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Cancel</button>\n"
                    + "                                                                    <a class=\"btn btn-primary\"  href=\"subjectdimension?action=deletedimension&id=" + o.getId() + "\">Delete</a>\n"
                    + "                                                                </div>\n"
                    + "                                                            </div>\n"
                    + "                                                        </div>\n"
                    + "                                                    </div>\n"
                    + "                                                </td>\n"
                    + "                                            </tr>");
        }
        out.print("\n"
                + "\n"
                + "                                    </table>\n"
                + "                                </div> \n"
                + "\n"
                + "\n"
                + "                            </div>\n"
                + "                            <nav aria-label=\"Page navigation\">\n"
                + "                                <ul class=\"pagination justify-content-end\">\n");
        out.print(
                "                     \n"
                + "                    \n"
                + "                  </table>\n"
                + "              </div> \n"
                + "\n"
                + "         \n"
                + "          </div>\n"
                + "             <nav aria-label=\"Page navigation\">\n"
                + "            <ul class=\"pagination justify-content-end\">\n");

        if (page1 == 1) {
            out.print(
                    "              <li class=\"page-item disabled\">\n"
                    + "                <a class=\"page-link\" href=\"#\" tabindex=\"-1\" onclick=\"Dimension(" + 1 + "," + total + ")\">First</a>\n"
                    + "              </li>\n");
        } else {
            out.print(
                    "              <li class=\"page-item \">\n"
                    + "                <a class=\"page-link\" href=\"#\" tabindex=\"-1\" onclick=\"Dimension(" + 1 + "," + total + ")\">First</a>\n"
                    + "              </li>\n");
        }
        for (int i = page1 - 2; i < page1 + 2; i++) {
            if (i >= 1 && i <= total1) {
                out.print(
                        "                    <li class=\"page-item");
                if (i == page1) {
                    out.print(" active  ");
                }
                out.print("\"  ><a class=\"page-link\" href=\"#\" onclick=\"Dimension(" + i + "," + total + ")\">" + i + "</a></li>\n"
                        + "              \n"
                );
            }
        }

        if (page1 == total1) {
            out.print(
                    "                <li class=\"page-item disabled\" > \n"
                    + "                    <a class=\"page-link \" href=\"#\" onclick=\"Dimension(" + total + "," + total + ")\">Last</a>\n"
                    + "              </li>\n"
                    + "            </ul>\n"
                    + "          </nav>");
        } else {
            out.print(
                    "                  <li class=\"page-item \" >    <a class=\"page-link \" href=\"#\" onclick=\"Dimension(" + total1 + "," + total1 + ")\">Last</a>\n"
                    + "              </li>\n"
                    + "            </ul>\n"
                    + "          </nav>");
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
