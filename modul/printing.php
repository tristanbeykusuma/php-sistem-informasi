<?php

include 'fpdf.php';
$data1 = $_GET['kode_pasien'];
$data2 = $_GET['nama_pasien'];
$data3 = $_GET['golongan_pasien'];
$data4 = $_GET['jenis_kelamin'];
$data5 = $_GET['alamat'];
date_default_timezone_set('Asia/Jakarta'); // Zona Waktu indonesia
$tanggal=date('l, d-m-Y  H:i:s');

$pdf = new FPDF('l','mm','A5');
 // membuat halaman baru
 $pdf->AddPage();
 $pdf->SetTitle("Kartu_$data1", [True]);
 // menyetel font yang digunakan, font yang digunakan adalah arial, bold dengan ukuran 16
 $pdf->SetFont('Arial','B',16);
 // judul
 $pdf->Cell(190,7,'Kartu Catatan Kesehatan Gigi',0,1,'C');
 $pdf->SetFont('Arial','',10);
 // Memberikan space kebawah agar tidak terlalu rapat
 $pdf->Cell(190,7,"Kartu ini dicetak pada $tanggal",0,1,'C');
 $pdf->Cell(10,7,' ',0,1);
 $pdf->Cell(10,7,' ',0,1);

 $pdf->SetFont('Arial','B',10);
 $pdf->Cell(5);
 $pdf->Cell(20,6,"Kartu ini milik pasien bernama '$data2', dengan keterangan pasien seperti berikut :",0,1);
 $pdf->Cell(10,7,' ',0,1);
 $pdf->Cell(5);
 $pdf->Cell(50,6,"Kode Pasien : $data1",0,1);
 $pdf->Cell(5);
 $pdf->Cell(50,6,"Nama Pasien : $data2",0,1);
 $pdf->Cell(5);
 $pdf->Cell(50,6,"Tinggi : $data3",0,1);
 $pdf->Cell(5);
 $pdf->Cell(50,6,"Jenis Kelamin : $data4",0,1);
 $pdf->Cell(5);
 $pdf->Cell(50,6,"Alamat Pasien : $data5",0,1);

 $pdf->SetFont('Arial','',9);
 $pdf->Cell(10,7,' ',0,1);
 $pdf->Cell(110);
 $pdf->Cell(190,7,"Praktek Dokter Gigi",0,1);
 $pdf->Cell(110);
 $pdf->Cell(190,7,"Praktek dengan perjanjian (08563936355)",0,1);
 $pdf->Cell(110);
 $pdf->Cell(190,7,"Senin s/d Jumat 10.30-19.00",0,1);
 $pdf->Cell(110);
 $pdf->Cell(190,7,"Jl. Danau Batur Raya No.54, Jimbaran, Kec. Kuta Sel. ",0,1);
 $pdf->Cell(5);
 $pdf->Cell(190,7,"*Mohon membawa kartu pasien ini setiap kali berobat* ",0,1);

 $pdf->Output();



?>