package com.bus;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bus.BusData;

public class DAOBus{
	boolean flag_status=false;

	public static Connection getMySQLConnection() throws ClassNotFoundException,SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_res","root","sr395919");
		return con;
	}
	
	
	public boolean insertRecord(BusData ob) {
		flag_status=false;
		
		try {

			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("insert into bus values (?,?,?,?,?,?,?)");
			
			pst.setString(1, ob.getBid());
			pst.setInt(2, ob.getNo_seats());
			pst.setString(3, ob.getType());
			pst.setString(4, ob.getTime());
			pst.setString(5, ob.getSource());
			pst.setString(6, ob.getDest());
			pst.setFloat(7, ob.getFare());
						
			int cnt=pst.executeUpdate();
			
			if (cnt>0) flag_status=true;
		} catch(Exception e) {
			System.out.println("DAO-EXCEPTION IN DAOBus INSERTRECORD  "+e);
		}
		
		return flag_status;
	}

// Searching record for showing in the delete menu	
	public BusData DisplayDelRecord(String bId) {
		BusData ob;
		ob=new BusData();

		try {
			
			Connection con=getMySQLConnection();
							System.out.println("###After GEtting sql connection at Display Del Record ###" + bId);
			PreparedStatement pst=con.prepareStatement("select * from bus where bid = ? ");
							System.out.println("## Prepare statement working fine###");
			pst.setString(1, bId);
							System.out.println("### I'm b444444 result set ###");
			ResultSet rs=pst.executeQuery();
							System.out.println("### I'm after result set ###");
			rs.next();
			//System.out.println(rs.getString(1));
			
				ob.setBid(rs.getString(1));
				ob.setNo_seats(rs.getInt(2));
				ob.setType(rs.getString(3));
				ob.setTime(rs.getString(4));
				ob.setSource(rs.getString(5));
				ob.setDest(rs.getString(6));
				ob.setFare(rs.getFloat(7));
				
	} catch(Exception e) {
			System.out.println("DAO EXCEPTION has occurred in ConfiRMING bus delete..."+e);
		}
	return ob;
	}

// Deletion of record
	public boolean deleteRecord(String bid) {
flag_status=false;
		
		try {
			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("delete from bus where bid = ?");
			pst.setString(1,bid);	
			
			int cnt=pst.executeUpdate();
			
			if (cnt>0) flag_status=true;
		} catch(Exception e) {
			System.out.println("###DAO EXCEPTION has occurred at the delete record method..."+e);
		}
		
		return flag_status;
	}
//Editing of record
	public boolean editRecord(BusData ob1) {
		flag_status=false;
				try {
			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("update bus set no_seats= ?,type=? , time=? , source=?, dest=?, fare=? where bid= ?");
			
			pst.setInt(1, ob1.getNo_seats());
			pst.setString(2, ob1.getType());
			pst.setString(3, ob1.getTime());
			pst.setString(4, ob1.getSource());
			pst.setString(5, ob1.getDest());
			pst.setFloat(6, ob1.getFare());
			pst.setString(7, ob1.getBid());
			//pst.setString(1, dept);
			//pst.setString(2, fname);	
			int cnt=pst.executeUpdate();
			
			if (cnt>0) flag_status=true;
		} catch(Exception e) {
			System.out.println("DAO EXCEPTION has occurred..."+e);
		}
		
		return flag_status;
	
	}

	// DISPLAYING ALL THE RECORDS OF BUS TABLE ONLY FOR ADMIN
	
	public List <BusData> DisplayRecord() {
		List <BusData> list=new ArrayList<BusData>();
		try {
			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("select * from bus");
			ResultSet rs=pst.executeQuery();
			
			BusData ob;
			
			while(rs.next()) {
				ob=new BusData();
				ob.setBid(rs.getString(1));
				ob.setNo_seats(rs.getInt(2));
				ob.setType(rs.getString(3));
				ob.setTime(rs.getString(4));
				ob.setSource(rs.getString(5));
				ob.setDest(rs.getString(6));
				ob.setFare(rs.getFloat(7));
				list.add(ob);
			}
		} catch(Exception e) {
			System.out.println("###DAO EXCEPTION has occurred at Display All Record..."+e);
		}
		
		return list;	
	}
	

	public List<String> source() {
		
		List <String> list=new ArrayList<String>();
		try {
			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("select source from bus group by source order by source");
			ResultSet rs=pst.executeQuery();
			String ob;
			
			while(rs.next()) {
				ob=rs.getString(1);
				list.add(ob);
			}
		} catch(Exception e) {
			System.out.println("###DAO EXCEPTION has occurred while fetching source data"+e);
		}
		
		return list;	
// TODO Auto-generated method stub
		
	}


	public List<String> destination() {
		
		List <String> list=new ArrayList<String>();
		try {
			Connection con=getMySQLConnection();
			PreparedStatement pst=con.prepareStatement("select dest from bus group by dest order by dest");
			ResultSet rs=pst.executeQuery();
			String ob;
			
			while(rs.next()) {
				ob=rs.getString(1);
				list.add(ob);
			}
		} catch(Exception e) {
			System.out.println("###DAO EXCEPTION has occurred while fetching destination data"+e);
		}
		
		return list;	
	
}

	
}
