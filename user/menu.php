<ul class="sidebar-menu">
    <li class="menu-header bg-warning"></li>
	
    <?php 
	if (isset($_SESSION['id_daftar'])) {
		$bayar = fetch($koneksi, 'bayar', ['id_daftar' => $_SESSION['id_daftar']]);
		/*if ($bayar['verifikasi'] == 1) {*/ ?>
		<li><a class="nav-link" href="?pg=formulir"><i class="fas fa-indent"></i> <span>Formulir</span></a></li>
		<li><a class="nav-link" href="?pg=berkas"><i class="fas fa-upload    "></i> <span>Upload Berkas</span></a></li>
		<li><a class="nav-link" href="?pg=cetakkartu"><i class="fas fa-print"></i> <span>Cetak Formulir</span></a></li>
		<li><a class="nav-link" href="?pg=df_ulang"><i class="fas fa-address-card   "></i> <span>Daftar Ulang</span><small class="label pull-right badge badge-danger">wajib</small></a></li>
		<!-- <li><a class="nav-link" href="?pg=bayar"><i class="fas fa-funnel-dollar fa-fw"></i> <span>Pembayaran</span></a></li> -->
		<?php /*} else { ?>
		
		<?php }*/ ?>

		<?php /*if ($bayar['verifikasi'] == 0) { ?>
			<li><a class="nav-link" href="?pg=bayar"><i class="fas fa-funnel-dollar fa-fw"></i> <span>Pembayaran</span></a></li>
		<?php } else { ?>
			
		<?php }*/ ?>
		<li><a class="nav-link" href="?pg=pengumuman"><i class="fas fa-bullhorn fa-fw"></i> <span>Pengumuman</span></a></li>
</ul>
<div class="mt-4 mb-4 p-3 hide-sidebar-mini">
            <a href="http://<?= $setting['web'] ?>" class="btn btn-primary btn-lg btn-block btn-icon-split">
              <i class="fas fa-rocket"></i> Documentation
            </a>
          </div>
		  <?php
} else {
  include "login.php";
}

?>