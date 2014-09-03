<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="home">PSL - Testing Dojo</a>
	</div>
	<!-- Top Menu Items -->
	<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">
			<li ${(param.level == 0)? 'class="active"': ''}><a href="home"><i
					class="fa fa-fw fa-home"></i> Inicio</a></li>
			<li ${(param.level == 1)? 'class="active"': ''}><a ><i class="fa fa-fw fa-star"></i>
					F&aacute;cil</a></li>
			<li ${(param.level == 2)? 'class="active"': ''}><a ><i class="fa fa-fw fa-star"></i><i
					class="fa fa-fw fa-star"></i> Medio</a></li>
			<li ${(param.level == 3)? 'class="active"': ''}><a><i class="fa fa-fw fa-star"></i><i
					class="fa fa-fw fa-star"></i><i class="fa fa-fw fa-star"></i>
					Dif&iacute;cil</a></li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</nav>