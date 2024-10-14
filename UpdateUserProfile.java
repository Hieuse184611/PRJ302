/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isp392.controllers;

import isp392.user.CustomerViewProfileDTO;
import isp392.user.UserDAO;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author GIGABYTE
 */
public class UpdateUserProfile extends HttpServlet {

    private static final String ERROR = "profile.jsp";
    private static final String SUCCESS = "profile.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        UserDAO userDao = new UserDAO();
        HttpSession ses = request.getSession();
        try {
            // Retrieve updated information from the form
            int userID = Integer.parseInt(request.getParameter("userID"));
            String username = request.getParameter("userName");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String area = request.getParameter("area");
            String district = request.getParameter("district");
            String ward = request.getParameter("ward");
            Date birthday = Date.valueOf(request.getParameter("birthday"));
            String phone = request.getParameter("phone");
            CustomerViewProfileDTO cust = new CustomerViewProfileDTO(userID, area, district, ward, address, birthday, username, email, "", phone, 0, 1);
            boolean check = userDao.updateCustomerProfile(cust);
            if (check) {
                url = SUCCESS;
                CustomerViewProfileDTO newCust = userDao.getCustInfoByUserID(userID);
                ses.setAttribute("CUSTOMER", newCust);
                request.setAttribute("MESSAGE", "UPDATED SUCCESSFULLY !");
            }

        } catch (Exception e) {
            log("Error at UpdateProfileController: " + e.toString());
        } finally {
            // Redirect back to the profile page (or another appropriate page)
            request.getRequestDispatcher(url).forward(request, response);
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
