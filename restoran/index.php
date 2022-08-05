<?php
include ('../restoran/config/koneksi.php');
?>

<!doctype html>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Pres</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/cover/">

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="./style/index.css" rel="stylesheet">
  </head>
  <body class="d-flex h-100 text-center text-light bg-success">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="mb-auto">
    <div>
      <a class href ="index.php">
        <img src="./image/logo pres.png" class="rounded-circle img-fluid d-flex float-md-start" style="width:42px;height:42px; alt="Logo">
      </a>
      <nav class="nav nav-masthead float-md-end">
        <a class=" text-light nav-link active" aria-current="page" href="index.php">Home</a>
        <a class=" text-light nav-link" href="#tentang-restoran">Tentang Restoran</a>
        <a class=" text-light nav-link" href="#pesan-sekarang">Pesan Sekarang</a>
        <a class=" text-light nav-link" href="#hubungi=kami">Hubungi Kami</a>
      </nav>
    </div>
  </header>
    <br>
      <form class="d-flex">
        <input class="form-control me-2" type="text" placeholder="Cari Kode Pesanan">
        <button class="btn btn-dark" type="button">Cari</button>
      </form>
      <br>
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active mx-auto">
      <img src="./image/restoran 1.jpg" alt="Restoran 1" class="d-block img-fluid" style="width:800px">
    </div>
    <div class="carousel-item mx-auto">
      <img src="./image/restoran 2.jpg" alt="Restoran 2" class="d-block img-fluid" style="width:800px">
    </div>
    <div class="carousel-item mx-auto">
      <img src="./image/restoran 3.jpg" alt="Restoran 3" class="d-block img-fluid" style="width:800px">
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

<div class="container-fluid mt-3">
  <h3>Carousel Example</h3>
  <p>The following example shows how to create a basic carousel with indicators and controls.</p>
</div>

  <footer class="mt-auto text-light-50">
    <p>Rekayasa Perangkat Lunak 1 - Wedang Jahe.</p>
  </footer>
</div>


    
  </body>
</html>