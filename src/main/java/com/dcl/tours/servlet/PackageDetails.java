package com.dcl.tours.servlet;

import java.io.IOException;
import java.util.List;

import com.dcl.tours.daoImplClasses.PackageDAOImpl;
import com.dcl.tours.daoInterfaces.PackageDAO;
import com.dcl.tours.dto.Package;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/packageDetails")
public class PackageDetails extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int pid = Integer.parseInt(request.getParameter("pid"));

		PackageDAO dao = new PackageDAOImpl();

		List<Package> p = dao.getPackageById(pid);

		request.setAttribute("package", p);

		request.getRequestDispatcher("packageDetails.jsp").forward(request, response);
	}
}