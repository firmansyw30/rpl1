<?php 
// mengaktifkan session pada php
session_start();
 
// menghubungkan php dengan koneksi database
include ('../config/koneksi.php');

    // menangkap data yang dikirim dari form login
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    
    // menyeleksi data user dengan username dan password yang sesuai
    $login = mysqli_query($koneksi,"select * from pegawai where username='$username' and password='$password'");
    // menghitung jumlah data yang ditemukan
    $cek = mysqli_num_rows($login);
    
    // cek apakah username dan password di temukan pada database
    if($cek > 0){
    
        $data = mysqli_fetch_assoc($login);
    
        // cek jika user login sebagai admin
        if($data['jabatan']=="Koki"){
    
            // buat session login dan username
            $_SESSION['username'] = $username;
            $_SESSION['jabatan'] = "Koki";
            // alihkan ke halaman dashboard admin
            header("location:../admin/koki/koki.php");
    
        // cek jika user login sebagai pegawai
        }else if($data['jabatan']=="Pelayan"){
            // buat session login dan username
            $_SESSION['username'] = $username;
            $_SESSION['jabatan'] = "Pelayan";
            // alihkan ke halaman dashboard pegawai
            header("location:../admin/pelayan/pelayan.php");
    
        // cek jika user login sebagai pengurus
        }else if($data['jabatan']=="Kasir"){
            // buat session login dan username
            $_SESSION['username'] = $username;
            $_SESSION['jabatan'] = "Kasir";
            // alihkan ke halaman dashboard pengurus
            header("location:../admin/kasir/kasir.php");
    
        }else{
    
            // alihkan ke halaman login kembali
            header("location:index.php?pesan=gagal");
        }	
    }else{
        header("location:index.php?pesan=gagal");
    }


 
?>