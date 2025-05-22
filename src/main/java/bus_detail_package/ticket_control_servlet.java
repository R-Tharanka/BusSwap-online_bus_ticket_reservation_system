package bus_detail_package;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ticket_submit")

public class ticket_control_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int t_t_id = Integer.parseInt(request.getParameter("t_id"));
		String t_bs_id = request.getParameter("t_bs_id");
		String t_st_time = request.getParameter("t_s_time");
		String t_bs_origin = request.getParameter("t_origin");
		String t_date = request.getParameter("t_date");
		String t_duration = request.getParameter("t_duration");
		String t_en_time = request.getParameter("t_e_time");
		String t_bs_destination = request.getParameter("t_destination");

		String s_t_seat_no = request.getParameter("t_seat_no");
		int t_seat_no;
		if (s_t_seat_no == "") {
			t_seat_no = 0;
		} else {
			t_seat_no = Integer.parseInt(request.getParameter("t_seat_no"));
		}

		String t_price = request.getParameter("t_price");

		boolean check_success;

		if (t_date == "" || t_seat_no == 0) {
			RequestDispatcher disp = request.getRequestDispatcher("null_input.jsp");
			disp.forward(request, response);
		} else {
			check_success = search_result_util.insertTicketDetails(t_t_id, t_bs_id, t_st_time, t_bs_origin, t_date,
					t_duration, t_en_time, t_bs_destination, t_seat_no, t_price);

			if (check_success == true) {

				// List<ticket_details> ticketDetails =
				// search_result_util.getTicketDetails(t_t_id);
				// request.setAttribute("ticket_details", ticketDetails);

				// navigate one jsp to other
				RequestDispatcher disp = request.getRequestDispatcher("display_ticket_control_servlet");
				disp.forward(request, response);

			} else {
				RequestDispatcher disp2 = request.getRequestDispatcher("db_failed.jsp");
				disp2.forward(request, response);

			}
		}

	}

}
