# BusSwap - Online Bus Ticket Reservation System

![BusSwap Logo](src/main/webapp/img/logo.jpg)

## 📝 Project Overview

BusSwap is a comprehensive web-based bus ticket reservation system designed for Sri Lankan bus routes. The application allows users to search for available bus routes, book tickets, manage existing bookings (update/cancel), and view ticket details.

## 🚀 Features

- **Search functionality**: Users can search for buses based on origin and destination
- **Bus route information**: Display of available routes with details like departure/arrival times, duration, and price
- **Ticket reservation**: Book tickets with seat selection
- **Ticket management**: View, update, or cancel existing ticket bookings
- **Responsive design**: Compatible with different devices and screen sizes

## 🛠️ Technologies Used

- **Backend**: Java EE (Servlets, JSP)
- **Frontend**: HTML5, CSS3, JavaScript
- **Database**: MySQL
- **Build Tool**: Maven
- **Server**: Apache Tomcat (recommended)
- **External Libraries**:
  - JSTL 1.2 (JavaServer Pages Standard Tag Library)
  - MySQL Connector/J 5.1.48
  - Java Servlet API 3.1

## 📋 System Requirements

- JDK 17 or above
- Maven 3.6 or above
- MySQL 5.7 or above
- Apache Tomcat 9 or above

## 🔧 Installation and Setup

### Database Setup

1. Install MySQL and ensure it's running
2. Run the SQL script in `database_setup.sql` to create the database and tables:
   ```
   mysql -u root -p < database_setup.sql
   ```

### Project Setup

1. Clone the repository:
   ```
   git clone https://github.com/R-Tharanka/BusSwap-online_bus_ticket_reservation_system.git
   
   ```

2. Navigate to the project directory:
   ```
   cd BusSwap-online_bus_ticket_reservation_system
   ```

3. Update database connection details in `src/main/java/bus_detail_package/DatabaseConnectionUtil.java` with your MySQL credentials.

4. Build the project using Maven:
   ```
   mvn clean package
   ```

5. Deploy the generated WAR file (from the `target` directory) to Tomcat or any Java EE compliant application server.

## 🚌 Usage

1. Access the application through your web browser:
   ```
   http://localhost:8080/online-bus-ticket-reservation-system/
   ```

2. On the homepage, select your origin and destination from the dropdown menus.

3. Click "Search" to view available buses.

4. Select a bus route and proceed to book a ticket by providing necessary details like date and seat number.

5. View, modify, or cancel your ticket from the booking management section.

## 📁 Project Structure

```
online_bus_ticket_reservation_system/
├── database_setup.sql              # Database creation script
├── pom.xml                         # Maven configuration
├── src/
│   └── main/
│       ├── java/
│       │   └── bus_detail_package/ # Java source files
│       │       ├── bus_detail.java
│       │       ├── DatabaseConnectionUtil.java
│       │       ├── delete_ticket_control_servlet.java
│       │       ├── display_ticket_control_servlet.java
│       │       ├── search_result_control_servlet.java
│       │       ├── search_result_util.java
│       │       ├── ticket_control_servlet.java
│       │       ├── ticket_details.java
│       │       └── update_ticket_control_servlet.java
│       └── webapp/                 # Web application resources
│           ├── booking.jsp
│           ├── db_failed.jsp
│           ├── index.jsp
│           ├── null_input.jsp
│           ├── privacy_policy.jsp
│           ├── search_result.jsp
│           ├── Terms_and_Conditions.jsp
│           ├── css/                # Stylesheet files
│           ├── img/                # Image resources
│           ├── META-INF/
│           └── WEB-INF/
│               ├── web_search.xml  # Web application configuration
│               └── lib/            # Required library JAR files
│                   ├── javax.servlet-3.1.jar
│                   ├── jstl-1.2.jar
│                   ├── jstl-api-1.2.jar
│                   ├── mysql-connector-java-5.1.48-bin.jar
│                   └── servlet-api.jar
├── target/                         # Build output directory
    └── online-bus-ticket-reservation-system.war
```

## 📚 Libraries in WEB-INF/lib

The `src/main/webapp/WEB-INF/lib` directory contains the following JAR files necessary for the application:

- **javax.servlet-3.1.jar**: Java Servlet API implementation
- **jstl-1.2.jar**: JavaServer Pages Standard Tag Library implementation
- **jstl-api-1.2.jar**: JavaServer Pages Standard Tag Library API
- **mysql-connector-java-5.1.48-bin.jar**: JDBC driver for MySQL
- **servlet-api.jar**: Servlet API for web application development

These libraries are automatically included in the deployed WAR file.

## 🔄 Application Flow

1. User selects origin and destination on the home page
2. System searches for available buses matching the criteria
3. User selects a bus and provides ticket details (date, seat number)
4. System creates and displays the ticket
5. User can view, update, or delete the ticket

## 📊 Database Schema

### bus_details Table
Stores information about bus routes:
- `id`: Primary key
- `origin`: Departure location
- `destination`: Arrival location
- `start_time`: Departure time
- `end_time`: Arrival time
- `duration`: Journey duration
- `seats`: Total seats available
- `price`: Ticket price

### tickets Table
Stores booked ticket information:
- `t_id`: Primary key
- `bus_id`: Bus identifier
- `s_time`: Start time
- `origin`: Departure location
- `date`: Journey date
- `duration`: Journey duration
- `e_time`: End time
- `destination`: Arrival location
- `seat_no`: Selected seat number
- `price`: Ticket price
 
## 📧 Contact

For any inquiries, please open an issue on the GitHub repository.

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👥 Contributors

- [Ruchira Tharanka](https://github.com/R-Tharanka) - ruchiratharanka1@gmail.com (Project Creator)

