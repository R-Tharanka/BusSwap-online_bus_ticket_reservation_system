package bus_detail_package;

public class bus_detail {
	
	private int id;
	private String origin;
	private String destination;
	private String start_time;
	private String end_time;
	private String duration;
	private int seats;
	private String price;
	
	
	public bus_detail(int id, String origin, String destination, String start_time, String end_time, String duration,
			int seats, String price) 
	{
		//super();
		this.id = id;
		this.origin = origin;
		this.destination = destination;
		this.start_time = start_time;
		this.end_time = end_time;
		this.duration = duration;
		this.seats = seats;
		this.price = price;
	}


	public int getId() 
	
	{
		return id;
	}

	public String getOrigin() 
	{
		return origin;
	}

	public String getDestination() 
	{
		return destination;
	}

	public String getStart_time() 
	{
		return start_time;
	}

	public String getEnd_time() 
	{
		return end_time;
	}

	public String getDuration() 
	{
		return duration;
	}

	public int getSeats() 
	{
		return seats;
	}
	
	public String getPrice() 
	{
		return price;
	}

	
	
	
	
}
