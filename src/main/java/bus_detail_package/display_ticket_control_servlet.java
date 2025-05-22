
package bus_detail_package;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/display_ticket_control_servlet")

public class display_ticket_control_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// search_result_util util_obj = new search_result_util();
		int ticket_id = search_result_util.getLastInsertedId();
		System.out.println("dispaly_ticket_control_servlet");

		try {
			List<ticket_details> ticket_details = search_result_util.getTicketDetails(ticket_id);
			request.setAttribute("ticket_details", ticket_details);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		RequestDispatcher disp = request.getRequestDispatcher("booking.jsp");
		disp.forward(request, response);

	}

}
