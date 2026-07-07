package com.dcl.tours.daoImplClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
<<<<<<< HEAD
=======
import java.sql.SQLException;
>>>>>>> a4159575b0770c5747b7e5c0767fcbc63a94ea41
import java.util.ArrayList;
import java.util.List;

import com.dcl.tours.daoInterfaces.PackageDAO;
<<<<<<< HEAD
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
=======
import com.dcl.tours.dto.Package;
import com.dcl.tours.utility.Connector;

public class PackageDAOImpl implements PackageDAO {
	Connection con = null;
	public PackageDAOImpl() {
		con =  Connector.requestConnection();
	}
	

	@Override
	public void createPackage(Package p) {
		String query = "INSERT INTO PACKAGE VALUE(0,?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, p.getPname());
			ps.setDouble(2, p.getPrice());
			ps.setInt(3, p.getNo_of_days());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void updatePackage(Package p) {
		String query = "Update pakage set pname = ?, price = ?, no_of_days = ? where pid = ?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, p.getPname());
			ps.setDouble(2, p.getPrice());
			ps.setInt(3, p.getNo_of_days());
			ps.setInt(4, p.getPid());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void deletePackage(Integer id) {
		String query = "Delete from package where pid = ?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Package> getAllPackage() {
		String query = "Select * from package";
		Package p = null;
		List<Package> packagelist = new ArrayList<>();
		try {
			
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				p.setPid(rs.getInt("pid"));
				p.setPname(rs.getString("pname"));
				p.setPrice(rs.getDouble("price"));
				p.setNo_of_days(rs.getInt("no_of_days"));
				
				packagelist.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return packagelist;
	}

	@Override
	public List<Package> getPackageById(Integer id) {
		String query = "Select * from package where pid = ?";
		Package p = null;
		List<Package> packagelist = new ArrayList<>();
		try {
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				p.setPid(rs.getInt("pid"));
				p.setPname(rs.getString("pname"));
				p.setPrice(rs.getDouble("price"));
				p.setNo_of_days(rs.getInt("no_of_days"));
				
				packagelist.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return packagelist;
	}
		
}
>>>>>>> a4159575b0770c5747b7e5c0767fcbc63a94ea41
