package bus_detail_package;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class search_result_util {

	private static int lastInsertedId = -1;

	//////////////////////////////////////////////// FIRST DISPLAY
	//////////////////////////////////////////////// PART////////////////////////////////////

	public static List<bus_detail> search(String origin, String destination) {

		ArrayList<bus_detail> bus = new ArrayList<>();

		try {
			Connection conn = DatabaseConnectionUtil.getConnection();
			Statement stmnt = conn.createStatement();

			String sql = "SELECT * FROM bus_details WHERE origin = '" + origin + "' AND destination = '" + destination
					+ "'";

			ResultSet resu = stmnt.executeQuery(sql);

			while (resu.next()) {
				int id_var = resu.getInt(1);
				String origin_var = resu.getString(2);
				String destination_var = resu.getString(3);
				String start_time_var = resu.getString(4);
				String end_time_var = resu.getString(5);
				String duration_var = resu.getString(6);
				int seats_var = resu.getInt(7);
				String price_var = resu.getString(8);

				bus_detail bus1 = new bus_detail(id_var, origin_var, destination_var, start_time_var, end_time_var,
						duration_var, seats_var, price_var);

				bus.add(bus1);
			}

		}

		catch (Exception ex) {
			ex.printStackTrace();
		}

		return bus;
	}

	////////////////////////// insert ticket details to
	////////////////////////// database/////////////////////////////////////////////

	public static boolean insertTicketDetails(int tid, String p_bsId, String p_sTime, String p_origin, String p_date,
			String p_duration, String p_eTime, String p_destination, int p_seatNo, String p_price) {
		boolean isSuccess = false;

		try {
			Connection conn = DatabaseConnectionUtil.getConnection();
			Statement stmnt = conn.createStatement();

			String sql = "INSERT INTO tickets (t_id, bus_id, s_time, origin, date, duration, e_time, destination, seat_no, price) "
					+
					"VALUES ('" + tid + "', '" + p_bsId + "', '" + p_sTime + "', '" + p_origin + "', '" + p_date
					+ "', '" +
					p_duration + "', '" + p_eTime + "', '" + p_destination + "', '" + p_seatNo + "', '" + p_price
					+ "')";

			int reslt = stmnt.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);

			if (reslt > 0) {
				isSuccess = true;

				ResultSet rs = stmnt.getGeneratedKeys();

				if (rs.next()) {
					lastInsertedId = rs.getInt(1);
				}

				// System.out.println("The ID of the specific row inserted is: " +
				// lastInsertedId);
				getLastInsertedId();
			} else {
				isSuccess = false;
			}
		}

		catch (Exception er) {
			er.printStackTrace();
		}

		return isSuccess;

	}

	////////////////////////////////////////// return ticket_id
	////////////////////////////////////////// ////////////////////////////////////////

	public static int getLastInsertedId() {

		System.out.println("in method: The ID of the specific row inserted is: " + lastInsertedId);
		return lastInsertedId;
	}

	///////////////////////////////////// DISPLAY TICKET DEATAILS
	///////////////////////////////////// ///////////////////////////////////////

	public static List<ticket_details> getTicketDetails(int tbl_id) {
		ArrayList<ticket_details> ticket = new ArrayList<>();

		// int check_t_id = Integer.parseInt(tbl_id);

		try {
			Connection conn = DatabaseConnectionUtil.getConnection();
			Statement stmnt = conn.createStatement();

			String sql = "SELECT * FROM tickets WHERE t_id = '" + tbl_id + "' ";

			ResultSet reslt = stmnt.executeQuery(sql);

			if (reslt.next()) {
				int t_id = reslt.getInt(1);
				String bs_id = reslt.getString(2);
				String s_time = reslt.getString(3);
				String origin = reslt.getString(4);
				String date = reslt.getString(5);
				String duration = reslt.getString(6);
				String e_time = reslt.getString(7);
				String destination = reslt.getString(8);
				int seat_no = reslt.getInt(9);
				String price = reslt.getString(10);

				ticket_details ticket_obj = new ticket_details(t_id, bs_id, s_time, origin, date, duration, e_time,
						destination, seat_no, price);

				ticket.add(ticket_obj);

			}

		}

		catch (Exception ex2) {
			ex2.printStackTrace();
		}

		return ticket;
	}

	//////////////////////////////// UPDATE TICKET DETAILS
	//////////////////////////////// ////////////////////////////////////////////////

	public static boolean updateTicketDetails(int up_tid, String up_bs_id, String up_s_time, String up_origin,
			String up_date, String up_duration, String up_e_time, String up_destination, int up_seat_no,
			String up_t_price) {
		boolean checkSuccess = false;

		try {
			Connection conn = DatabaseConnectionUtil.getConnection();
			Statement stmnt = conn.createStatement();

			String sql = "UPDATE tickets SET bus_id='" + up_bs_id + "', s_time='" + up_s_time + "', origin='"
					+ up_origin + "', date='" + up_date + "', duration='" + up_duration + "', e_time='" + up_e_time
					+ "', destination='" + up_destination + "', seat_no='" + up_seat_no + "', price='" + up_t_price
					+ "'"
					+ "WHERE t_id='" + up_tid + "' ";

			int reslt = stmnt.executeUpdate(sql);

			if (reslt > 0) {
				checkSuccess = true;
			} else {
				checkSuccess = false;
			}

		} catch (Exception ex3) {
			ex3.printStackTrace();
		}

		return checkSuccess;
	}

	////////////////////////////////// DELETE TICKET DETAILS
	////////////////////////////////// ////////////////////////////////////////////////////

	public static boolean deleteTicketDetails(int de_t_tid) {
		boolean checkSuccess = false;

		try {
			Connection conn = DatabaseConnectionUtil.getConnection();
			Statement stmnt = conn.createStatement();

			String sql = "DELETE FROM tickets WHERE t_id='" + de_t_tid + "' ";

			int reslt = stmnt.executeUpdate(sql);

			if (reslt > 0) {
				checkSuccess = true;
			} else {
				checkSuccess = false;
			}

		} catch (Exception ex4) {
			ex4.printStackTrace();
		}

		return checkSuccess;
	}

}
