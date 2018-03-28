package com.guestbook.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class test {

	private static final String DB_URL = "jdbc/mysql";
	private static Connection  conn  = null;
	
	
	public static void main(String[] args) throws NamingException, SQLException {
		// TODO Auto-generated method stub

		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup(DB_URL);
		conn = ds.getConnection();
		System.out.println("mysql 연결 성공");
	}

}
