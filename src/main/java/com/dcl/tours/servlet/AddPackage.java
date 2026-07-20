package com.dcl.tours.servlet;

import java.io.IOException;

import com.dcl.tours.daoImplClasses.PackageDAOImpl;
import com.dcl.tours.daoInterfaces.PackageDAO;
import com.dcl.tours.dto.Package;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addPackage")
public class AddPackage extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Package p = new Package();

        p.setPname(request.getParameter("pname"));
        p.setPrice(Double.parseDouble(request.getParameter("price")));
        p.setNo_of_days(Integer.parseInt(request.getParameter("no_of_days")));

        PackageDAO dao = new PackageDAOImpl();
        dao.createPackage(p);

        response.sendRedirect("packages");
    }
}
