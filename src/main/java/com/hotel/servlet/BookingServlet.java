package com.hotel.servlet;

import com.hotel.util.DBConnection;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;


public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        String roomType = request.getParameter("room_type");

        // You can save this data to DB here if needed

        // Set data in request scope for confirmation page
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("checkin", checkin);
        request.setAttribute("checkout", checkout);
        request.setAttribute("room_type", roomType);

        // Forward to confirmation page
        RequestDispatcher dispatcher = request.getRequestDispatcher("confirmation.jsp");
        dispatcher.forward(request, response);
    }
}
