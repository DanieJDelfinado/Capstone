<nav class="navbar-default navbar-static-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav metismenu" id="side-menu">
			<li class="nav-header">
				<center>
				<div class="dropdown profile-element"> <span>
					<img alt="image" class="img-circle" src="../public/img/user.png" width="40" height="40"/>
						</span>
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
					<span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><?php if (!empty($_SESSION['first_name'])) echo $_SESSION['first_name'].' '.$_SESSION['last_name']; else echo 'No data'; ?></strong>
						</span> <span class="text-muted text-xs block"><?php echo ucwords($_SESSION['user_type']); ?> </span> </span> </a>
				</div>
				</center>
				<div class="logo-element">ODRS</div>
			</li>
			
			<?php if($_SESSION['user_type'] == 'Administrator') { ?> 
				<?php include ('menu/administrator.php'); ?>
			<?php } else if($_SESSION['user_type'] == 'Staff') { ?>
				<?php include ('menu/staff.php'); ?>
			<?php } else if($_SESSION['user_type'] == 'Client') { ?>
				<?php include ('menu/client.php'); ?>
			<?php } ?>

		</ul>

	</div>
</nav>