package com.privacyprotection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.util.DbConnection;

public class GlobalFunction 
{
	
	public String getClaimId(String pname)
	{
		String claimid="";
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from generateid where patientname='"+pname+"'");
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				claimid=rs.getString("claimid");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return claimid;
	}

}
