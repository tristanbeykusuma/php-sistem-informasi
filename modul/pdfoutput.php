<?php

 include 'fpdf.php';

 $pdf = new FPDF('l','mm','A5');
 // membuat halaman baru
 $pdf->AddPage();
 $pdf->SetTitle("Record Pasien",[True]);
 // menyetel font yang digunakan, font yang digunakan adalah arial, bold dengan ukuran 16
 $pdf->SetFont('Arial','B',16);
 // judul
 $pdf->Cell(190,7,'Sistem Informasi Digital Dental',0,1,'C');
 $pdf->SetFont('Arial','B',12);
 $pdf->Cell(190,7,'Data Rekam Medis Pasien',0,1,'C');
  
 // Memberikan space kebawah agar tidak terlalu rapat
 $pdf->Cell(10,7,'',0,1);
  
 $pdf->SetFont('Arial','B',10);
 $pdf->Cell(5);
 $pdf->Cell(20,6,'NOMOR',1,0);
 $pdf->Cell(27,6,'KODE PASIEN',1,0);
 $pdf->Cell(35,6,'NAMA PASIEN',1,0);
 $pdf->Cell(25,6,'GOLONGAN',1,0);
 $pdf->Cell(25,6,'KELAMIN',1,0);
 $pdf->Cell(25,6,'TINGGI',1,1);
  
 $pdf->SetFont('Arial','',10);
  
 //koneksi ke database
 $mysqli = new mysqli("localhost","root","","doktergigi_php");
 $no = 1;
 $tampil = mysqli_query($mysqli, "select * from tabel_pasien");
 while ($hasil = mysqli_fetch_array($tampil)){
     $pdf->Cell(5);
     $pdf->Cell(20,6,$no++,1,0);
     $pdf->Cell(27,6,$hasil['kode_pasien'],1,0);
     $pdf->Cell(35,6,$hasil['nama_pasien'],1,0);
     $pdf->Cell(25,6,$hasil['golongan_pasien'],1,0);
     $pdf->Cell(25,6,$hasil['jenis_kelamin'],1,0);
     $pdf->Cell(25,6,$hasil['tinggi'],1,1); 
 }
  
 $pdf->Output();

?>