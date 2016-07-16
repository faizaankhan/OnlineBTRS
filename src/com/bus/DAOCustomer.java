package com.bus;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAOCustomer {

		boolean flag_status=false;

		public static Connection getMySQLConnection() throws ClassNotFoundException,SQLException
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bus_res","root","sr395919");

			return con;
		}
		

		public CustomerData customerDet(String email){

			CustomerData cu;
			cu=new CustomerData();
			
			
			try {
				Connection con=getMySQLConnection();
				PreparedStatement pst=con.prepareStatement("select * from user where cid =?");
				pst.setString(1, email);
				ResultSet rs=pst.executeQuery();
				
				rs.next();
				cu.setEmail(rs.getString(1));
				cu.setFname(rs.getString(2));
				cu.setLname(rs.getString(3));
				cu.setSex(rs.getString(4));
				cu.setCity(rs.getString(5));
				cu.setPhone(rs.getString(6));
				cu.setPswd(rs.getString(7));
				
			} catch(Exception e) {
				System.out.println("EXCEPTION in DAO-CUSTOMER DETAILS FETCHING customer det..."+e);
			}
			
			return cu;	
		
	}


		public boolean insertRecord(CustomerData ob) {
			flag_status=false;
			
			try {
				System.out.println("These msgs prints only in server console");
				Connection con=getMySQLConnection();
				System.out.println("Now going For insert sql query");
				PreparedStatement pst=con.prepareStatement("insert into user values (?,?,?,?,?,?,?)");
				
				pst.setString(1, ob.getEmail());
				pst.setString(2, ob.getFname());
				pst.setString(3, ob.getLname());
				pst.setString(4, ob.getSex());
				pst.setString(5, ob.getCity());
		
				pst.setString(6, ob.getPhone());
				pst.setString(7, ob.getPswd());
				
				int cnt=pst.executeUpdate();
				
				if (cnt>0) flag_status=true;
			} catch(Exception e) {
				System.out.println("###DAO EXCEPTION HAS OCCURRED###"+e);
			}
			
			return flag_status;
		}
//Viewing the details of the customer Before deletion . fetching data frm sql
		public CustomerData DisplayDelRecord(String cId) {
			CustomerData ob;
			ob=new CustomerData();

			try {
				
		Connection con=getMySQLConnection();
								System.out.println("###After GEtting sql connection at Display Del Record ###" + cId);
		PreparedStatement pst=con.prepareStatement("select * from user where cid = ? ");
								System.out.println("## Prepare statement working fine###");
		pst.setString(1, cId);
								System.out.println("### I'm b444444 result set ###");
		ResultSet rs=pst.executeQuery();
								System.out.println("### I'm after result set ###");
		rs.next();
				//System.out.println(rs.getString(1));
				
					ob.setEmail(rs.getString(1));
					ob.setFname(rs.getString(2));
					ob.setLname(rs.getString(3));
					ob.setSex(rs.getString(4));
					ob.setCity(rs.getString(5));
					ob.setPhone(rs.getString(6));
					ob.setPswd(rs.getString(7));
							
		} catch(Exception e) {
				System.out.println("### DAO EXCEPTION has occurred in ConfiRMING Customer delete..."+e);
			}
		return ob;
		}
// To delete the details of the customer by admin or by the customer whosoever


		public boolean deleteRecord(String cid) {
	flag_status=false;
			
			try {
				Connection con=getMySQLConnection();
				PreparedStatement pst=con.prepareStatement("delete from user where cid = ?");
				pst.setString(1,cid);	
				
				int cnt=pst.executeUpdate();
				
				if (cnt>0) flag_status=true;
			} catch(Exception e) {
				System.out.println("###DAO EXCEPTION has occurred at the delete cust record method..."+e);
			}
			
			return flag_status;
		}
		
//To edit the record of the customer
		
		public boolean editRecord(CustomerData ob1) {
			flag_status=false;
					try {
				Connection con=getMySQLConnection();
				PreparedStatement pst=con.prepareStatement("update user set cfname= ?,clname=? , sex=? , city=?, cphn=?, password=? where cid= ?");
				
				pst.setString(1, ob1.getFname());
				pst.setString(2, ob1.getLname());
				pst.setString(3, ob1.getSex());
				pst.setString(4, ob1.getCity());
				pst.setString(5, ob1.getPhone());
				pst.setString(6, ob1.getPswd());
				pst.setString(7, ob1.getEmail());
				//pst.setString(1, dept);
				//pst.setString(2, fname);	
				int cnt=pst.executeUpdate();
				
				if (cnt>0) flag_status=true;
			} catch(Exception e) {
				System.out.println("DAO EXCEPTION has occurred During Editing..."+e);
			}
			
			return flag_status;
		
		}
		
		
	// for displaying Customer datas to the admin

		public List <CustomerData> DisplayRecord() {
			List <CustomerData> list=new ArrayList<CustomerData>();
			try {
				Connection con=getMySQLConnection();
				PreparedStatement pst=con.prepareStatement("select * from user");
				ResultSet rs=pst.executeQuery();
				
				CustomerData ob;
				
				while(rs.next()) {
					ob=new CustomerData();
					ob.setEmail(rs.getString(1));
					ob.setFname(rs.getString(2));
					ob.setLname(rs.getString(3));
					ob.setSex(rs.getString(4));
					ob.setCity(rs.getString(5));
					ob.setPhone(rs.getString(6));
					ob.setPswd(rs.getString(7));
					list.add(ob);
				}
			} catch(Exception e) {
				System.out.println("###DAO EXCEPTION has occurred at Display All Record for customer..."+e);
			}
			
			return list;	
		}

		
	
}
