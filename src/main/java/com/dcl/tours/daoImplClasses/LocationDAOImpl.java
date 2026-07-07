package com.dcl.tours.daoImplClasses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

