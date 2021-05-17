package com.elorrieta.cms.controladores;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.elorrieta.cms.modelo.Participante;

/**
 * Servlet implementation class ParticipantesController
 */
@WebServlet("/participantes")
public class ParticipantesController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// recoger parametros, no tenemos

		// logica de negocio, conseguir coleccion de Participantes
		ArrayList<Participante> lista = new ArrayList<Participante>();
		lista.add(new Participante("Pepito", "Gafotas"));
		lista.add(new Participante("Manolita", "Tragladabas"));
		lista.add(new Participante("Jon", "Kañpon"));

		// enviar atributos para pintar
		request.setAttribute("participantes", lista);

		// ir a la vista
		request.getRequestDispatcher("participantes.jsp?page=participantes").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
