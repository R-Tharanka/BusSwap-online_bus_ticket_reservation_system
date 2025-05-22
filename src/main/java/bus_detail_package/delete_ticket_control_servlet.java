package bus_detail_package;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete_ticket_control_servlet")
public class delete_ticket_control_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int de_t_id;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int de_tid = Integer.parseInt(request.getParameter("de_t_id"));
		System.out.println("ticket is for delete(delete servlet): " + de_tid);

		boolean checkSuccess = search_result_util.deleteTicketDetails(de_tid);

		/*
		 * for debug
		 * {
		 * //get last id for display updated details
		 * int ticket_id = search_result_util.getLastInsertedId();
		 * //for debug
		 * System.out.println("delete_ticket_control_servlet-last t id: "+ticket_id);
		 * }
		 */

		if (checkSuccess == true) {
			// if deletion is success user redirected to home page
			RequestDispatcher disp = request.getRequestDispatcher("index.jsp");
			disp.forward(request, response);

		} else {
			// if delete process failed in util
			List<ticket_details> ticket_details = search_result_util.getTicketDetails(de_t_id);
			request.setAttribute("ticket_details", ticket_details);

			RequestDispatcher disp = request.getRequestDispatcher("booking.jsp");
			disp.forward(request, response);
		}

	}

}
