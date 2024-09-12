/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller_admin.thuy;

import dao.ClassDAO;
import dao.MemberOfClassDAO;
import dao.YouthTrainingCourseDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ClassEntity;
import model.MemberOfClass;

/**
 *
 * @author ngoba
 */
@WebServlet(name = "ListMember", urlPatterns = {"/admin/ListMember"})
public class ListMember extends HttpServlet {

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
            out.println("<title>Servlet ListMember</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListMember at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        ClassDAO cdao = new ClassDAO();
        YouthTrainingCourseDAO ydao = new YouthTrainingCourseDAO();
        MemberOfClassDAO mdao = new MemberOfClassDAO();
        int idClass = Integer.parseInt(request.getParameter("idClass"));

        List<MemberOfClass> listMem = new ArrayList<>();
        try {
            listMem= mdao.getMemberOfClassForList(idClass);
        } catch (Exception e) {
        }
        if (listMem != null) {
            request.setAttribute("idClass", idClass);
            request.setAttribute("listMem", listMem);
            request.getRequestDispatcher("listMember_thuy.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("index1.jsp").forward(request, response);
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
