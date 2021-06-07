package com.elorrieta.cms.modelo.dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Clase para obtener la conexion a la bbdd de sqlite
 * 
 * @author Ander Uraga
 * @version 1.0
 *
 */
public class ConnectionHelper implements AutoCloseable {

	private static Connection con = null;
	private static final String DIRECCION_BBDD = "jdbc:sqlite:C:\\desarrolloJava\\workspace\\cms\\cms.db";

	public static Connection getConnection() throws Exception {

		// cargar el driver de sqlite
		Class.forName("org.sqlite.JDBC");

		con = DriverManager.getConnection(DIRECCION_BBDD);

		return con;
	}

	@Override
	public void close() throws Exception {

		if (con != null) {
			con.close();
		}

	}

}
