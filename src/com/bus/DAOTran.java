package com.bus;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bus.TranData;
import com.bus.HisData;

public class DAOTran{
	boolean flag_status=false;

	public static Connection getMySQLConnection() throws ClassNotFoundException,SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_res","root","sr395919");
		return con;
	}



	// DISPLAYING ALL THE RECORDS OF Reservation TABLE ONLY FOR ADMIN

	public List <TranData> DisplayRecord() {
		List <TranData> list=new ArrayList<TranData>();
		try {
			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("select * from Reservation");
			ResultSet rs=pst.executeQuery();

			TranData ob;

			while(rs.next()) {
				ob=new TranData();
				ob.setTid(rs.getString(1));
				ob.setR_date(rs.getString(2));
				ob.setCid(rs.getString(3));
				ob.setBid(rs.getString(4));
				ob.setTrvl_date(rs.getString(5));

				list.add(ob);
			}
		} catch(Exception e) {
			System.out.println("###DAO EXCEPTION has occurred at Display All Record..."+e);
		}

		return list;	
	}

	/////////////////////////////////////////////////////////
	public List <HisData> DisplayHistory(String email) {
		List <HisData> list=new ArrayList<HisData>();
		try {
			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("select tid,r_date,cid,bid,trvl_date,source,dest from Reservation natural join bus where cid=?");
			pst.setString(1,email);
			ResultSet rs=pst.executeQuery();

			HisData ob;

			while(rs.next()) {
				ob=new HisData();
				ob.setTid(rs.getString(1));
				ob.setR_date(rs.getString(2));
				ob.setCid(rs.getString(3));
				ob.setBid(rs.getString(4));
				ob.setTrvl_date(rs.getString(5));
				ob.setSource(rs.getString(6));
				ob.setDest(rs.getString(7));


				list.add(ob);
			}
		} catch(Exception e) {
			System.out.println("###DAO EXCEPTION has occurred at Display All Record..."+e);
		}

		return list;	
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////
	public List <EnqData> DisplayEnquery(String tdate, String dest, String source) {
		List <EnqData> list=new ArrayList<EnqData>();
		try {
			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("(select bid,no_seats,type,time,fare from bus where bid not in(select bid from reservation where trvl_date=?)  and source=? and dest=?) union (select bid,(no_seats-count(reservation.bid)),type,time,fare from bus natural join reservation where reservation.trvl_date=? and source=? and dest=? group by bid)");
			pst.setString(1,tdate);
			pst.setString(2,source);
			pst.setString(3,dest);
			pst.setString(4,tdate);
			pst.setString(5,source);
			pst.setString(6,dest);

			ResultSet rs=pst.executeQuery();

			EnqData ob;

			while(rs.next()) {
				ob=new EnqData();
				ob.setBid(rs.getString(1));
				ob.setSeats_left(rs.getString(2));
				ob.setType(rs.getString(3));
				ob.setTime(rs.getString(4));
				ob.setFare(rs.getString(5));

				list.add(ob);
			}
		} catch(Exception e) {
			System.out.println("###DAO EXCEPTION has occurred at Display All Record..."+e);
		}

		return list;	
	}

	//For ticket booking

	public boolean insertBook(TranData ob) {
		flag_status=false;

		try {

			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("INSERT INTO Reservation (r_date,cid,bid,trvl_date) VALUES(?,?,?,?)");

			pst.setString(1, ob.getR_date());
			pst.setString(2, ob.getCid());
			pst.setString(3, ob.getBid());
			pst.setString(4, ob.getTrvl_date());

			int cnt=pst.executeUpdate();

			if (cnt>0) flag_status=true;
		} catch(Exception e) {
			System.out.println("DAO-EXCEPTION IN DAOBus INSERTRECORD  "+e);
		}		


		return flag_status;
	}

	public boolean cancelRecord(String tid) {
		flag_status=false;
		
		try {
			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("delete from reservation where tid = ?");
			pst.setString(1,tid);	
			
			int cnt=pst.executeUpdate();
			
			if (cnt>0) flag_status=true;
		} catch(Exception e) {
			System.out.println("###DAO EXCEPTION has occurred at the delete record method..."+e);
		}
		
		return flag_status;
	}	


}
