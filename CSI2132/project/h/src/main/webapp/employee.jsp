<!DOCTYPE html>
<%@ page import="com.h.EmployeeService" %>


<html>
    <head>
        <title>Create an account</title>
    </head>
    <body>
        <h2>Create an account:</h2>
        <form action="createEmployee.jsp" method="post">
            Enter your name:
            <input type="text" name="fname" placeholder="First name" required>
            <input type="text" name="lname" placeholder="Last name" required>
            <br>
            Enter your SSN:
            <input type="text" name="essn" placeholder="Social Security Number" required>
            <br>
            Enter your address:
            <input type="text" name="addy" placeholder="Address" required>
            <br>
            Enter your role:
            <input type="text" name="erole" placeholder="Role" required>
            <br>
            Enter your manager SSN (can be left empty if you are a manager):
            <input type="text" name="mssn" placeholder="SSN" required>
            <br>
            Enter id of the hotel you will be working for:
            <input type="text" name="hid" placeholder="Hotel ID" required>

            <button type="submit">Create an Employee</button>
        </form>

        <br><br>

        <h2>Delete an account:</h2>
            <form action="deleteEmployee.jsp" method="post">
                <p>Insert the information related to the account you want to delete</p>
                SSN:
                    <input type="text" name="essnd" placeholder="Social Security Number" required>
                    <br>
                ID of the hotel you worked for:
                   <input type="text" name="hidd" placeholder="Hotel ID" required>

                <button type="submit">Submit</button>
            </form>

            <br><br>

            <div class="button"><a href="index.jsp">Main Page</a></div>
            <div class="button"><a href="employeeActions.jsp">Services</a></div>


    </body>
</html>

