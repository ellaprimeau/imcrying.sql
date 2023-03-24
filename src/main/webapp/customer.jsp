<html>
    <h2>Create an account:</h2>
    <body>
    <form action="#">
        Enter your name:
        <input type="text" fname="fname" placeholder="First name" required>
        <input type="text" lname="lname" placeholder="Last name" required>
        <br>
        Enter your SSN (this will not be shared with anyone):
        <input type="integer" cssn="name" placeholder="First name" required>
        <br>
        Enter your address:
        <input type="text" addy="addy" placeholder="Address" required>

        <button type="button" onclick="submitCreate()" >Submit</button>
    </form>

    <br><br>

    <div mp="button"><a href="index.jsp">Main Page</a></div>
    </body>

    <%
        function submitCreate() {
            var name = document.getElementById("fname").value +" "+document.getElementById("lname").value;
            var cssn = document.getElementById("cssn").value;
            var address = document.getElementById("addy").value;

            long millis=System.currentTimeMillis();
            var reg_date = java.sql.Date(millis);

            CustomerService cs = new CustomerService(cssn, cname, address, reg_date);
            cs.createCustomer();
        }
       %>
</html>