package com.dcl.tours.servlet;

import java.io.IOException;
import java.util.List;

import com.dcl.tours.daoImplClasses.PackageDAOImpl;
import com.dcl.tours.daoInterfaces.PackageDAO;
import com.dcl.tours.dto.Package;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;

	@WebServlet("/viewPackages")
	public class ViewPackage extends HttpServlet {

	    protected void doGet( HttpServletRequest request,HttpServlet response)
	            throws ServletException, IOException {

	        PackageDAO dao =new PackageDAOImpl();

	        List<Package> packages = dao.getAllPackage();

	        request.setAttribute("packages", packages);

	        request.getRequestDispatcher("viewPackages.jsp").forward(request, (ServletResponse) response);
	    }
	}



