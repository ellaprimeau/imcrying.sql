<!DOCTYPE html>
<%@ page import="com.h.CustomerService" %>
<%@ page import="java.sql.Date" %>
<html>
    <head>
        <title>Create an account</title>
    </head>
    <body>
        <h2>Create an account:</h2>
        <form action="createCustomer.jsp" method="post">
            Enter your name:
            <input type="text" name="fname" placeholder="First name" required>
            <input type="text" name="lname" placeholder="Last name" required>
            <br>
            Enter your SSN (this will not be shared with anyone):
            <input type="text" name="cssn" placeholder="Social Security Number" required>
            <br>
            Enter your address:
            <input type="text" name="addy" placeholder="Address" required>

            <button type="submit">Create this Account</button>
        </form>

        <br><br>

        <div class="button"><a href="index.jsp">Main Page</a></div>

        <h2>Delete an account:</h2>
            <form action="deleteCustomer.jsp" method="post">
                <p>Insert the information related to the account you want to delete</p>
                Name:
                <input type="text" name="fname" placeholder="First name" required>
                <input type="text" name="lname" placeholder="Last name" required>
                            <br>
                SSN:
                <input type="text" name="cssnd" placeholder="Social Security Number" required>
                <br>


                <button type="submit">Submit</button>
            </form>

            <br><br>

            <div class="button"><a href="index.jsp">Main Page</a></div>


    </body>
</html>

