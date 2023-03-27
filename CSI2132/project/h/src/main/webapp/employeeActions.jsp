<!DOCTYPE html>
<%@ page import="com.h.CheckinService" %>
<%@ page import="java.sql.Date" %>
<html>
    <head>
        <title>Create an account</title>
    </head>
    <body>
        <h2>Check In:</h2>
        <form action="checkin.jsp" method="post">
            Customer SSN:
            <input type="text" name="cssn" placeholder="Social Security Number" required>
            <br>
            Booking Number:
            <input type="text" name="bknm" placeholder="Booking Number" required>
            <br>
            Employee SSN (Needed to verify):
            <input type="text" name="essn" placeholder="Address" required>

            <button type="submit">Check in</button>
        </form>

        <h2>Rent without prior booking:</h2>
                <form action="renting.jsp" method="post">
                    Room Number:
                    <input type="text" name="room" placeholder="Room Number" required>
                    <br>
                    Customer SSN:
                    <input type="text" name="cssnr" placeholder="Social Security Number" required>
                    <br>
                    End Date:
                    <input type="date" name="endd" placeholder="Last Day" required>
                    <br>
                    Employee SSN (Needed to verify):
                    <input type="text" name="essnr" placeholder="Social Security Number" required>

                    <button type="submit">Rent</button>
                </form>

        <br><br>
    </body>
</html>

