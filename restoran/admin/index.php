<?php
include ('../config/koneksi.php');
?>

<?php
if(isset($_GET['pesan'])){
  if($_GET['pesan']=="gagal"){
    echo "<script>Username dan Password tidak sesuai !</script>";
  }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  
<section class="vh-100" style="background-color: #198754;">
  <div class="container py-4 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-s-5">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="../image/logo pres.png"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <form action = "cek_login.php" method = "post">

                  <h4 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Login Pegawai Restoran</h4>

                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example17">Username</label>
                    <input type="text" name = "username" id="username" class="form-control form-control-lg" />
                    
                  </div>

                  <div class="form-outline mb-4">
                    <label class="form-label" for="form2Example27">Password</label>
                    <input type="password" name = "password" id="password" class="form-control form-control-lg" />
                    
                  </div>

                  <div class="pt-1 mb-4">
                    <input type ="submit" class="btn btn-dark btn-lg btn-block" value = "Login">
                  </div>

                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
