/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller_admin.nhat;

import com.google.gson.Gson;
import dao.RegisteredFootballFieldDAO;
import dao.ScheduleTournamentDAO;
//import dao.StudyScheduleDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.RegisteredFootballField;
import model.ScheduleTournament;
//import model.StudySchedule;

/**
 *
 * @author nhatk
 */
@WebServlet(name = "Huythanhtoanbill", urlPatterns = {"/admin/huythanhtoanbill"})
public class Huythanhtoanbill extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Huythanhtoanbill</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Huythanhtoanbill at " + request.getContextPath() + "</h1>");
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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        Gson json = new Gson();  
        
        RegisteredFootballFieldDAO rffDAO = new RegisteredFootballFieldDAO();
//        StudyScheduleDAO sSDAO = new StudyScheduleDAO();
        ScheduleTournamentDAO sTDAO = new ScheduleTournamentDAO();
        int idDonthanhtoan = Integer.parseInt(request.getParameter("idDon"));
        String typeDonthanhtoan = request.getParameter("loaiDon");
        //rFF: RegisterFF, sT: scheduleTournament, sS: StudySchedule
        if (typeDonthanhtoan.equals("rFF")) {
            RegisteredFootballField donThanhToan = rffDAO.getRegisteredFootballFielByID(idDonthanhtoan);
            String thongTinHoan = json.toJson(donThanhToan);
            out.println(thongTinHoan);
        } else if(typeDonthanhtoan.equals("sT")) {
            ScheduleTournament donThanhToan = sTDAO.getScheduleTournamentByID(idDonthanhtoan);
            String thongTinHoan = json.toJson(donThanhToan);
            out.println(thongTinHoan);
        }
//        else {
//            StudySchedule donThanhToan = sSDAO.getStudyScheduleByID(idDonthanhtoan);
//            String thongTinHoan = json.toJson(donThanhToan);
//            out.println(thongTinHoan);
//        }
        out.println("thuy123");
        out.flush();
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
