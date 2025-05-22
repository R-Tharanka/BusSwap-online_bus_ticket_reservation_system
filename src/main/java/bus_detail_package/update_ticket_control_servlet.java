package bus_detail_package;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/update_ticket_control_servlet")
public class update_ticket_control_servlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		int up_t_t_id = Integer.parseInt(request.getParameter("up_t_id"));
		String up_t_bs_id = request.getParameter("up_t_bs_id");
		String up_t_st_time = request.getParameter("up_t_s_time");
		String up_t_bs_origin = request.getParameter("up_t_origin");
		String up_t_date = request.getParameter("up_t_date");
		String up_t_duration = request.getParameter("up_t_duration");
		String up_t_en_time = request.getParameter("up_t_e_time");
		String up_t_bs_destination = request.getParameter("up_t_destination");
		int up_t_seat_no = Integer.parseInt(request.getParameter("up_t_seat_no")) ;
		String up_t_price = request.getParameter("up_t_price");
		
		//for debug
		System.out.println("ticket is for update(update servlet): "+up_t_t_id);
		//getting last id for display updated details
		int ticket_id = search_result_util.getLastInsertedId();
		//for debug
		System.out.println("update_ticket_control_servlet-last t id: "+ticket_id);
		
		boolean checkSuccess = search_result_util.updateTicketDetails(up_t_t_id, up_t_bs_id, up_t_st_time, up_t_bs_origin, up_t_date, up_t_duration, up_t_en_time, up_t_bs_destination, up_t_seat_no, up_t_price);
		
		if(checkSuccess == true)
		{
			//get details of last ticket
			List<ticket_details> ticket_details = search_result_util.getTicketDetails(ticket_id);
			request.setAttribute("ticket_details", ticket_details);
			//forward to booking. jsp for display purpose 
			RequestDispatcher disp = request.getRequestDispatcher("booking.jsp");
			disp.forward(request, response);	
		}
		else
		{
			RequestDispatcher disp = request.getRequestDispatcher("db_failed.jsp");
			disp.forward(request, response);
		}
				
		
	}

}
