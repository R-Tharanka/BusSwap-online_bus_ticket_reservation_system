
package bus_detail_package;

public class ticket_details {

	private int t_id;
	private String bs_id;
	private String start_time;
	private String origin;
	private String date;
	private String duration;
	private String end_time;
	private String destination;
	private int seat_no;
	private String price;

	public ticket_details(int t_id, String bs_id, String start_time, String origin, String date, String duration,
			String end_time, String destination, int seat_no, String price) {
		// super();
		this.t_id = t_id;
		this.bs_id = bs_id;
		this.start_time = start_time;
		this.origin = origin;
		this.date = date;
		this.duration = duration;
		this.end_time = end_time;
		this.destination = destination;
		this.seat_no = seat_no;
		this.price = price;
	}

	public int getT_id() {
		return t_id;
	}

	public String getBs_id() {
		return bs_id;
	}

	public String getStart_time() {
		return start_time;
	}

	public String getOrigin() {
		return origin;
	}

	public String getDate() {
		return date;
	}

	public String getDuration() {
		return duration;
	}

	public String getEnd_time() {
		return end_time;
	}

	public String getDestination() {
		return destination;
	}

	public int getSeat_no() {
		return seat_no;
	}

	public String getPrice() {
		return price;
	}

}
