package com.dcl.tours.daoImplClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dcl.tours.daoInterfaces.PackageDAO;
import com.dcl.tours.dto.PackageDTO;
import com.dcl.tours.utility.Connector;

public class PackageDAOImpl implements PackageDAO {

    private Connection con;

    public PackageDAOImpl() {
        con = Connector.requestConnection();
    }

    @Override
    public void createPackage(PackageDTO p) {

        String query = "INSERT INTO package(pname, price, no_of_days) VALUES(0,?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, p.getPname());
            ps.setDouble(2, p.getPrice());
            ps.setInt(3, p.getno_of_days());

            int i = ps.executeUpdate();

            if (i > 0) {
                System.out.println("Package added successfully.");
            } else {
                System.out.println("Package not added.");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updatePackage(PackageDTO p) {

        String query = "UPDATE package SET pname=?, price=?, no_of_days=? WHERE pid=?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, p.getPname());
            ps.setDouble(2, p.getPrice());
            ps.setInt(3, p.getno_of_days());
            ps.setInt(4, p.getPid());

            int i = ps.executeUpdate();

            if (i > 0) {
                System.out.println("Package updated successfully.");
            } else {
                System.out.println("Package not found.");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deletePackage(Integer id) {

        String query = "DELETE FROM package WHERE pid=?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, id);

            int i = ps.executeUpdate();

            if (i > 0) {
                System.out.println("Package deleted successfully.");
            } else {
                System.out.println("Package not found.");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public PackageDTO getPackageById(Integer id) {

        String query = "SELECT * FROM package WHERE pid=?";

        PackageDTO pkg = null;

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                pkg = new PackageDTO();

                pkg.setPid(rs.getInt("pid"));
                pkg.setPname(rs.getString("pname"));
                pkg.setPrice(rs.getDouble("price"));
                pkg.setno_of_days(rs.getInt("no_of_days"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return pkg;
    }

    @Override
    public List<PackageDTO> getAllPackage() {

        List<PackageDTO> list = new ArrayList<>();

        String query = "SELECT * FROM package";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                PackageDTO pkg = new PackageDTO();

                pkg.setPid(rs.getInt("pid"));
                pkg.setPname(rs.getString("pname"));
                pkg.setPrice(rs.getDouble("price"));
                pkg.setno_of_days(rs.getInt("no_of_days"));

                list.add(pkg);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}