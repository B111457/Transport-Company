package dao;

import java.sql.*;

import model.Model;

public class Dao {
public static Connection con=null;

static
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:jdbc://localhost:3306/praveen","root"," ");	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}

public static int insert(Model m, String sql) throws SQLException {
PreparedStatement ps=con.prepareStatement(sql);
int i=ps.executeUpdate();
	return i;
}
public static int delete(Model m, String sql) throws SQLException {
PreparedStatement ps=con.prepareStatement(sql);
int i=ps.executeUpdate();
	return i;
}

public static ResultSet validate(Model m, String sql) throws SQLException {
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
return rs;

	
}

public static ResultSet checkEmail(Model m, String sql) throws SQLException {
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
return rs;
	
}
public static ResultSet getValues(Model m,String sql) throws SQLException
{
	PreparedStatement ps=con.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	return rs;
	
}

public static int update(Model m, String sql) throws SQLException {
PreparedStatement ps=con.prepareStatement(sql);
int i=ps.executeUpdate();
return i;
	
}

public static int change(Model m, String sql) throws SQLException {
PreparedStatement ps=con.prepareStatement(sql);
int i=ps.executeUpdate();
return i;
	
}

public static int send(Model m, String sql) throws SQLException {
PreparedStatement ps=con.prepareStatement(sql);
int i=ps.executeUpdate();
return i;
	}
}
