package com.dcl.tours.servlet;

import java.io.IOException;

import com.dcl.tours.daoImplClasses.PackageDAOImpl;
import com.dcl.tours.daoInterfaces.PackageDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deletePackage")
public class DeletePackage extends HttpServlet{

    protected void doGet(HttpServletRequest request,HttpServletResponse response)
            throws ServletException,IOException{

        int pid=Integer.parseInt(request.getParameter("pid"));

       PackageDAO dao=new PackageDAOImpl();

        dao.deletePackage(pid);

        response.sendRedirect("packages");
    }
}

