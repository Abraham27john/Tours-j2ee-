package com.dcl.tours.servlet;

import java.io.IOException;

import com.dcl.tours.daoImplClasses.BookingDAOImpl;
import com.dcl.tours.daoInterfaces.BookingDAO;
import com.dcl.tours.dto.Booking;
import com.dcl.tours.dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/booking")
public class BookingServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            resp.sendRedirect("index.jsp");
            return;
        }
        Booking booking = new Booking();
        booking.setUid(user.getUid());
        booking.setPid(Integer.parseInt(req.getParameter("pid")));
        booking.setStart_date(req.getParameter("startDate"));
        booking.setEnd_date(req.getParameter("endDate"));

        BookingDAO bdao = new BookingDAOImpl();
        bdao.createBooking(booking);
        req.setAttribute("success", "Package Booked Successfully.");
        req.getRequestDispatcher("home.jsp").forward(req, resp);

    }

}