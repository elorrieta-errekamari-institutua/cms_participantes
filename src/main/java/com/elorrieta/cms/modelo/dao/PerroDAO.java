package com.elorrieta.cms.modelo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.elorrieta.cms.modelo.Perro;

/**
 * Clase encargada relacionar el POJO con la Tabla DAO Data Access Object
 * 
 * @author Admin
 *
 */
public class PerroDAO {

	public static ArrayList<Perro> getAll() {

		ArrayList<Perro> coleccion = new ArrayList<Perro>();
		String sql = " SELECT perro.id, perro.nombre, historia, raza.nombre as 'raza' "
				+ " FROM perro INNER JOIN raza ON perro.id_raza = raza.id " + " ORDER BY perro.id ASC; ";

		try (

				Connection con = ConnectionHelper.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery(); // lanza la consulta SQL y obtiene Resultados RS

		) {

			while (rs.next()) { // itero sobre los resultados de la consulta SQL

				// creamos un nuevo Objeto y lo seteamos con los valores del RS
				Perro p = new Perro();

				// cogemos los valres de las columnas
				int colId = rs.getInt("id");
				String colNombre = rs.getString("nombre");
				String colHis = rs.getString("historia");
				String colRaza = rs.getString("raza");

				p.setId(colId);
				p.setNombre(colNombre);
				p.setHistoria(colHis);
				p.setRaza(colRaza);

				// a�adir objeto al ArrayList
				coleccion.add(p);

			}
			// fin del bucle, ya no quedan mas lineas para leer

		} catch (Exception e) {
			e.printStackTrace();
		}

		return coleccion;
	}

}
