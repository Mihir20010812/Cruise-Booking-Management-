# Cruise-Booking-Management-


A web-based system for online cruise booking, developed using PHP, MySQL, HTML, and CSS.
The project helps users book cruises online, view available packages, and manage passenger and staff records efficiently.

# Features
Passenger registration and cruise booking
Admin dashboard for managing ships, employees, and packages
Billing, feedback, and reporting modules
Easy to use and maintain
Future support for payment gateway integration

# How To Run Project
Follow these steps to run the Cruise Booking Management System locally: 

1. Install XAMPP or WAMP
   Download and install XAMPP(recommended).
   Start Apache and MySQL from the control panel.
   
2. Download the Project Folder
   Clone or download this repository:
       git clone https://github.com/your-username/CruiseBookingManagement.git
   Move the folder to:
       C:\xampp\htdocs\
3. Setup the Database
   Open your browser and go to:
       http://localhost/phpmyadmin
   Create a new database (for example):
       cruise_db
   Import the SQL file provided in your project (e.g., cruise_db.sql).

4. Update Database Connection
   Open the config.php or database connection file.
   Make sure the database credentials match:

        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "cruise_db";

5. Run the Project
   In your browser, go to:
        http://localhost/CruiseBookingManagement/

   Login or register to access the system.
