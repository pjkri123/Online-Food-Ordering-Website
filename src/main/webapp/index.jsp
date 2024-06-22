<!-- <html>
<body>
<h2>Hello World!</h2>
</body>
</html> -->


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Food Order Website</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    .hero-section {
      background: url('hero-image.jpg') no-repeat center center;
      background-size: cover;
      height: 400px;
      position: relative;
    }
    .hero-section .cta-buttons {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      text-align: center;
    }
    .hero-section .btn {
      margin: 5px;
    }
  </style>
</head>
<body>
  <header class="bg-dark text-white p-3">
    <div class="container d-flex justify-content-between align-items-center">
      <div class="logo">FoodOrder</div>
      <nav class="navbar navbar-expand-lg navbar-dark">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Menu</a></li>
          <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
          <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
        </ul>
      </nav>
      <div class="d-flex align-items-center">
        <div class="profile dropdown mr-3">
          <img src="profile-icon.png" class="rounded-circle" width="30" alt="Profile" id="profileDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="profileDropdown">
            <a class="dropdown-item" href="#">Profile</a>
            <a class="dropdown-item" href="#">Orders</a>
            <a class="dropdown-item" href="#">Settings</a>
            <a class="dropdown-item" href="#">Logout</a>
          </div>
        </div>
        <div class="cart">
          <img src="cart-icon.png" class="rounded-circle" width="30" alt="Cart">
        </div>
      </div>
    </div>
  </header>

  <main>
    <section class="hero-section text-white">
      <div class="cta-buttons">
        <a href="#" class="btn btn-primary">Order Now</a>
        <a href="#" class="btn btn-secondary">Manage Orders</a>
        <a href="#" class="btn btn-danger">Admin Dashboard</a>
      </div>
    </section>

    <div class="container py-5">
      <div class="row">
        <div class="col-md-4">
          <h2>For Users</h2>
          <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action">Popular Restaurants</a>
            <a href="#" class="list-group-item list-group-item-action">Featured Dishes</a>
            <a href="#" class="list-group-item list-group-item-action">Current Offers</a>
            <a href="#" class="list-group-item list-group-item-action">Order History</a>
          </div>
        </div>
        <div class="col-md-4">
          <h2>For Hotel Staff</h2>
          <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action">New Orders</a>
            <a href="#" class="list-group-item list-group-item-action">Manage Menu</a>
            <a href="#" class="list-group-item list-group-item-action">Sales Summary</a>
            <a href="#" class="list-group-item list-group-item-action">Customer Reviews</a>
          </div>
        </div>
        <div class="col-md-4">
          <h2>For Admin</h2>
          <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action">User Management</a>
            <a href="#" class="list-group-item list-group-item-action">Site Analytics</a>
            <a href="#" class="list-group-item list-group-item-action">Content Management</a>
            <a href="#" class="list-group-item list-group-item-action">System Notifications</a>
          </div>
        </div>
      </div>
    </div>
  </main>

  <footer class="bg-dark text-white p-4">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h5>Quick Links</h5>
          <ul class="list-unstyled">
            <li><a class="text-white" href="#">Terms of Service</a></li>
            <li><a class="text-white" href="#">Privacy Policy</a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <h5>Contact Information</h5>
          <p>Email: support@foodorder.com</p>
          <p>Phone: 123-456-7890</p>
          <p>Address: 123 Food Street, Flavor Town</p>
        </div>
        <div class="col-md-4">
          <h5>Follow Us</h5>
          <a href="#" class="text-white"><img src="facebook-icon.png" width="24" alt="Facebook"></a>
          <a href="#" class="text-white"><img src="twitter-icon.png" width="24" alt="Twitter"></a>
          <a href="#" class="text-white"><img src="instagram-icon.png" width="24" alt="Instagram"></a>
        </div>
      </div>
    </div>
  </footer>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

