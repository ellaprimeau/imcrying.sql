<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid p-3">
<h2>Search for your Hotel!</h2>
  <form name="form1" id="form1" action="#">

  Hotel Chain: <select name="chain" id="chain" class="form-select">
      <option value="" selected disabled>Choose a hotel chain</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
  </select>

  <!--   Hotel Chain: <select name="chain" id="chain" class="dropdown-menu">
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="" selected="selected">Choose a hotel chain</option>
    </select> -->

    Areas: <select name="area" id="area" class="form-select">
      <option value="" selected disabled>Choose where to stay</option>
      <option value="Ontario">Ontario</option>
      <option value="Quebec">Quebec</option>
      <option value="Alberta">Alberta</option>
      <option value="Manitoba">Manitoba</option>
      <option value="New York">New York</option>
      <option value="New Jersey">New Jersey</option>
      <option value="British Colombia">British Colombia</option>
      <option value="Texas">Texas</option>
      <option value="South Dakota">South Dakota</option>
      <option value="Hawaii">Hawaii</option>
      <option value="Alabama">Alabama</option>
      <option value="Hawaii">Hawaii</option>
      <option value="Puerto Rico">Puerto Rico</option>
      <option value="Virginia">Virginia</option>
      <option value="Maryland">Maryland</option>
      <option value="Pennsylvania">Pennsylvania</option>
    </select>

    Rating: <select name="rating" id="rating" class="form-select">
      <option value="" selected disabled>Choose a minimum rating</option>
      <option value="3.0">3.0</option>
      <option value="3.5">3.5</option>
      <option value="4.0">4.0</option>
      <option value="4.5">4.5</option>
    </select>

    Pricing: <select name="price" id="price" class="form-select">
      <option value="" selected disabled>Choose a maximum room price</option>
      <option value="205.00">205.00</option>
      <option value="240.00">240.00</option>
      <option value="260.00">260.00</option>
      <option value="300.00">300.00</option>
    </select>

    Room capacity: <select name="room_cap" id="room_cap" class="form-select">
      <option value="" selected disabled>Choose the capacity of the room</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
    </select>
    <br>
    <button type="button" class="btn btn-primary" onclick="submitSearch()">Submit</button>
  </form>
  <a href="customer.jsp" class="btn btn-success">Customer Page</a>
</div>
<br><br>
<script>
    function submitSearch() {
        var chain = document.getElementById("chain").value;
        var area = document.getElementById("area").value;
        var rating = document.getElementById("rating").value;
        var price = document.getElementById("price").value;
        var room_cap = document.getElementById("room_cap").value;
    }
</script>
</body>
</html>
