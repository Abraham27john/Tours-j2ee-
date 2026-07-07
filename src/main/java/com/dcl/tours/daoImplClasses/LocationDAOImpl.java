package com.dcl.tours.daoImplClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
<<<<<<< HEAD
import java.util.ArrayList;
import java.util.List;
=======
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dcl.tours.daoInterfaces.LocationDAO;
import com.dcl.tours.dto.Location;
import com.dcl.tours.utility.Connector;

public class LocationDAOImpl implements LocationDAO {
	
	Connection con = null;
	
	public LocationDAOImpl() {
		con = Connector.requestConnection();
	}

	@Override
	public void createLocation(Location l) {
		String query = "Insert into location value(0, ?, ?, ?, ?)";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, l.getLname());
			ps.setString(2, l.getAddress());
			ps.setString(3, l.getDescription());
			ps.setString(4, l.getCity_name());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void updateLocation(Location l) {
		String query = "Update location set Lname = ?, Address = ?, Description = ?, City_name = ? where lid = ?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, l.getLname());
			ps.setString(2, l.getAddress());
			ps.setString(3, l.getDescription());
			ps.setString(4, l.getCity_name());
			ps.setInt(5, l.getLid());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void deleteLocation(Integer id) {
		String query = "delete from location where id = ?";
	
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
	public List<Location> getAllLocation() {
		String query = "select * from location";
		List<Location> locationList = new ArrayList<>();
		Location l = null;
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				l = new Location();
				l.setLid(rs.getInt("Lid"));
				l.setLname(rs.getString("lname"));
				l.setAddress(rs.getString("address"));
				l.setDescription(rs.getString("description"));
				l.setCity_name(rs.getString("city_name"));
				locationList.add(l);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return locationList;
	}

	@Override
	public List<Location> getLocationById(Integer id) {
		String query = "select * from location where id =?";
		List<Location> locationList = new ArrayList<>();
		Location l = null;
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				l = new Location();
				l.setLid(rs.getInt("Lid"));
				l.setLname(rs.getString("lname"));
				l.setAddress(rs.getString("address"));
				l.setDescription(rs.getString("description"));
				l.setCity_name(rs.getString("city_name"));
				locationList.add(l);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return locationList;
	}
	
	
>>>>>>> a4159575b0770c5747b7e5c0767fcbc63a94ea41

import com.dcl.tours.daoInterfaces.LocationDAO;
import com.dcl.tours.dto.LocationDTO;
import com.dcl.tours.utility.Connector;

public class LocationDAOImpl implements LocationDAO  {

	private Connection con;

    public LocationDAOImpl() {
        con = Connector.requestConnection();
    }
	@Override
	public void createLocation(LocationDTO l) {
		String query = "INSERT INTO package(lname, address, description,city_name) VALUES(0,?,?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, l.getLname());
            ps.setString(2, l.getAddress());
            ps.setString(3, l.getDescription());
            ps.setString(4, l.getCity_name());

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
	public void updateLocation(LocationDTO l) {

        String query = "UPDATE location SET lname=?,address=?,description=?,city_name=?,pid=?,image=?,map_url=? WHERE lid=?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, l.getLname());
            ps.setString(2, l.getAddress());
            ps.setString(3, l.getDescription());
            ps.setString(4, l.getCity_name());
            
            int i = ps.executeUpdate();

            if (i > 0) {
                System.out.println("Location Updated Successfully");
            } else {
                System.out.println("Location Not Found");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

	@Override
	public void deleteLocation(Integer id) {
		String query = "DELETE FROM location WHERE lid=?";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, id);

            int i = ps.executeUpdate();

            if (i > 0) {
                System.out.println("Location Deleted Successfully");
            } else {
                System.out.println("Location Not Found");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

	@Override
	public List<LocationDTO> getAllLocation() {

        List<LocationDTO> list = new ArrayList<>();

        String query = "SELECT * FROM location";

        try {

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                LocationDTO l = new LocationDTO();

                l.setLid(rs.getInt("lid"));
                l.setLname(rs.getString("lname"));
                l.setAddress(rs.getString("address"));
                l.setDescription(rs.getString("description"));
                l.setCity_name(rs.getString("city_name"));
               
                list.add(l);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
	
	@Override
	public List<LocationDTO> getLocationById(Integer id) {
		List<LocationDTO> list = new ArrayList<>();

        String query = "SELECT * FROM location ";

        try {

            PreparedStatement ps = con.prepareStatement(query);

//            ps.setInt(1, pid);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                LocationDTO l = new LocationDTO();

                l.setLid(rs.getInt("lid"));
                l.setLname(rs.getString("lname"));
                l.setAddress(rs.getString("address"));
                l.setDescription(rs.getString("description"));
                l.setCity_name(rs.getString("city_name"));
             
                list.add(l);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;

    }
}

