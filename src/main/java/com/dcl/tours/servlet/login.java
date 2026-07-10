package com.dcl.tours.servlet;

import java.io.IOException;

import com.dcl.tours.daoImplClasses.UserDAOImpl;
import com.dcl.tours.daoInterfaces.UserDAO;
import com.dcl.tours.dto.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		UserDAO udao = new UserDAOImpl();

		User login = udao.getUserByEmailAndPassword(
				req.getParameter("email"),
				req.getParameter("password"));

		if(login != null) {

			HttpSession session = req.getSession();

			session.setAttribute("user", login);

			if(login.getUid() == 1) {

				resp.sendRedirect("admin.jsp");

			}
			else {

				resp.sendRedirect("home.jsp");

			}

		}
		else {

			req.setAttribute("loginError", "Invalid Email or Password!");

			req.getRequestDispatcher("index.jsp").forward(req, resp);

		}

	}

}