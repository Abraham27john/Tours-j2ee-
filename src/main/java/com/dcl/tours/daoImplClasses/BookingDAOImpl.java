package com.dcl.tours.daoImplClasses;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dcl.tours.daoInterfaces.BookingDAO;
import com.dcl.tours.dto.Booking;
import com.dcl.tours.utility.Connector;

public class BookingDAOImpl implements BookingDAO {

	private Connection con;

	public BookingDAOImpl() {
		this.con = Connector.requestConnection();
	}

	@Override
	public void createBooking(Booking b) {
		String query = "Insert into booking values(0,?,?,?,?)";
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, b.getUid());
			ps.setInt(2, b.getPid());
			ps.setDate(3, Date.valueOf(b.getStart_date()));
			ps.setDate(4, Date.valueOf(b.getEnd_date()));
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (i > 0) {
			System.out.println("booking added");
		}

	}

	@Override
	public void updateBooking(Booking b) {
		String query = "Update booking set UID=?,PID=?, START_DATE=?, END_DATE=? where BID=?";
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, b.getUid());
			ps.setInt(2, b.getPid());
			ps.setDate(3, Date.valueOf(b.getStart_date()));
			ps.setDate(4, Date.valueOf(b.getEnd_date()));
			ps.setInt(5, b.getBid());
			i = ps.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (i > 0) {
			System.out.println("booking updated");
		}

	}

	@Override
	public void deleteBooking(Integer b) {
		String query = "DELETE FROM booking WHERE BID=?";
		int i = 0;
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, b);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (i > 0) {
			System.out.println("booking deleted!");
		}

	}

	@Override
	public List<Booking> getAllBooking() {
		List<Booking> bookingList = new ArrayList<Booking>();
		Booking b = null;
		String query = "SELECT * FROM booking";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new Booking();
				b.setBid(rs.getInt("BID"));
				b.setUid(rs.getInt("UID"));
				b.setPid(rs.getInt("PID"));
				b.setStart_date(String.valueOf(rs.getDate("START_DATE"))); // Converts SQL Date back to String
				b.setEnd_date(String.valueOf(rs.getDate("END_DATE")));
				bookingList.add(b);
				System.out.println("booking added!");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bookingList;
	}

	@Override
	public List<Booking> getBookingById(Integer id) {
		List<Booking> bookingList = new ArrayList<Booking>();
		Booking b = null;
		String query = "SELECT * FROM booking WHERE BID=?";
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new Booking();
				b.setBid(rs.getInt("BID"));
				b.setUid(rs.getInt("UID"));
				b.setPid(rs.getInt("PID"));
				b.setStart_date(String.valueOf(rs.getDate("START_DATE")));
				b.setEnd_date(String.valueOf(rs.getDate("END_DATE")));
				bookingList.add(b);
				System.out.println(b.getBid());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bookingList;
	}

}
