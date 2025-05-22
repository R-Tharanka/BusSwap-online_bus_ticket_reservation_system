package bus_detail_package;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/search_result")
public class search_result_control_servlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String origin = null;
		String destination = null;
		
		
		origin = request.getParameter("origin");
		destination = request.getParameter("destination");
		
		if (origin == "" || destination == "")
		{
			request.setAttribute("errorMessage", "Please select origin and destination!");
			RequestDispatcher disp = request.getRequestDispatcher("index.jsp");
			disp.forward(request, response);
		}
		else
		{
			try
			{
				List<bus_detail> bs_details = search_result_util.search(origin, destination);
				request.setAttribute("bs_data", bs_details);
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			
			RequestDispatcher disp = request.getRequestDispatcher("search_result.jsp");
			//
			disp.forward(request, response);
		}
		
	}

}
