<div class="menu-profile">
	<!-- IF user.uid -->
	<!-- IF user.picture -->
	<img src="{user.picture}"/>
	<!-- ELSE -->
	<div class="user-icon" style="background-color: {user.icon:bgColor};">
		<i class="fa fa-user fa-fw"></i> 
	</div>
	<!-- ENDIF user.picture -->
	<i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i>
	<!-- ELSE -->
	<img src="https://mindcureglobal.com/static/images/logo_icon.png"/>
	<!-- ENDIF user.uid -->
	<span></span>
</div>

<section class="menu-section" data-section="navigation">
	<h3 class="menu-section-title">[[global:header.navigation]]</h3>
	<ul class="menu-section-list"></ul>
</section>