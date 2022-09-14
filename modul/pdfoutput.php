<?php

 include 'fpdf.php';

 $pdf = new FPDF('l','mm','A5');
 // membuat halaman baru
 $pdf->AddPage();
 $pdf->SetTitle("Record Data",[True]);
 // menyetel font yang digunakan, font yang digunakan adalah arial, bold dengan ukuran 16
 $pdf->SetFont('Arial','B',16);
 // judul
 $pdf->Cell(190,7,'Sistem Inventory Handphone',0,1,'C');
 $pdf->SetFont('Arial','B',12);
 $pdf->Cell(190,7,'Data Stok Handphone',0,1,'C');
  
 // Memberikan space kebawah agar tidak terlalu rapat
 $pdf->Cell(10,7,'',0,1);
  
 $pdf->SetFont('Arial','B',10);
 $pdf->Cell(5);
 $pdf->Cell(20,6,'NOMOR',1,0);
 $pdf->Cell(27,6,'KODE HP',1,0);
 $pdf->Cell(35,6,'NAMA HP',1,0);
 $pdf->Cell(25,6,'BRAND HP',1,0);
 $pdf->Cell(25,6,'STOK AWAL',1,0);
 $pdf->Cell(25,6,'STOK AKHIR',1,1);
  
 $pdf->SetFont('Arial','',10);
  
 //koneksi ke database
 $mysqli = new mysqli("sql6.freesqldatabase.com","sql6519513","xcmvhVFGC7","sql6519513");
 $no = 1;
 $tampil = mysqli_query($mysqli, "select * from tabel_stok");
 while ($hasil = mysqli_fetch_array($tampil)){
     $pdf->Cell(5);
     $pdf->Cell(20,6,$no++,1,0);
     $pdf->Cell(27,6,$hasil['kode_handphone'],1,0);
     $pdf->Cell(35,6,$hasil['nama_handphone'],1,0);
     $pdf->Cell(25,6,$hasil['brand_name'],1,0);
     $pdf->Cell(25,6,$hasil['stok_awal'],1,0);
     $pdf->Cell(25,6,$hasil['stok_akhir'],1,1); 
 }
  
 $pdf->Output();

?>
