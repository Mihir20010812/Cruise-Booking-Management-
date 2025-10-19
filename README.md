# Cruise-Booking-Management-


A web-based system for online cruise booking, developed using PHP, MySQL, HTML, and CSS.
The project helps users book cruises online, view available packages, and manage passenger and staff records efficiently.

<img width="1892" height="863" alt="Screenshot (125)" src="https://github.com/user-attachments/assets/4f88f240-16f7-46aa-bc0e-5b8b26099fa8" />
<img width="1909" height="858" alt="Screenshot (129)" src="https://github.com/user-attachments/assets/be7df1da-e9f3-4a8d-adfd-85d87a511a43" />

<img width="788" height="651" alt="Screenshot (126)" src="https://github.com/user-attachments/assets/62daff60-dae2-4328-960e-547130af4586" /> <img width="961" height="759" alt="Screenshot (128)" src="https://github.com/user-attachments/assets/a25a7b89-98c7-4f4a-8f02-0faba0885658" />
<img width="1135" height="674" alt="Screenshot (130)" src="https://github.com/user-attachments/assets/c82772e2-a3e5-4bc2-a5fd-785c0a8b9528" /> <img width="950" height="627" alt="Screenshot (132)" src="https://github.com/user-attachments/assets/92655d0c-708d-447d-93bc-c334ea97e28a" />

<img width="1907" height="824" alt="Screenshot (127)" src="https://github.com/user-attachments/assets/be77bc7c-db9e-47f3-8bd3-4d8a3c18b3a5" />

<img width="655" height="791" alt="Screenshot (134)" src="https://github.com/user-attachments/assets/3fce0fa1-72e1-4caa-8624-8b52

<img width="1461" height="654" alt="Screenshot (131)" src="https://github.com/user-attachments/assets/55b114a0-e2ae-4465-9b06-e758b9f476c8" />
f6168b50" />

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
