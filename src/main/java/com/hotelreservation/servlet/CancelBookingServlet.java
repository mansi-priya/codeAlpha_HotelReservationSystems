package com.hotelreservation.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cancelBooking")
public class CancelBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookingId = request.getParameter("bookingId");
        String email = request.getParameter("email");

        boolean cancellationSuccess = false;

        if (bookingId != null && !bookingId.isEmpty() && email != null && !email.isEmpty()) {
            cancellationSuccess = true;
        }

        if (cancellationSuccess) {
            request.setAttribute("message", "Your booking with ID " + bookingId + " has been successfully canceled.");
        } else {
            request.setAttribute("message", "Booking not found or invalid details provided.");
        }

        request.getRequestDispatcher("cancelResult.jsp").forward(request, response);
    }
}
