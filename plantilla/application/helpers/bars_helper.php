<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
if(!isset($_SESSION)){
    session_start();
}


if (!function_exists('helper')) {
	function helper(){

		$CI = & get_instance();
        $base_url = config_item('base_url');
        $nombre = $CI->session->userdata("nombre");
        $tipo = $CI->session->userdata("tipo");

		return '<div class="page-header-inner container">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="' . $base_url . '">
			<img src="assets/logo.png" alt="logo"/>
			</a>
			<div class="menu-toggler sidebar-toggler">
			</div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
			<img alt="" src="assets/img/sidebar_inline_toggler_icon_blue.jpg"/>
		</a>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN TOP NAVIGATION MENU -->
		<div class="top-menu">
			<ul class="nav navbar-nav pull-right">
				<!-- BEGIN NOTIFICATION DROPDOWN -->
				
				<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
				<li class="dropdown dropdown-user">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
					<img alt="" class="img-circle" src="assets/img/avatar.png"/>
					<span class="username username-hide-on-mobile">
					'.$nombre.' </span>
					<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-menu-default">
						<!--<li>
							<a href="extra_profile.html">
							<i class="icon-user"></i> Perfil </a>
						</li>

						<li class="divider">-->
						</li>
						<li>
							<a href="autenticacion/cerrar_sesion">
							<i class="icon-logout"></i> Salir </a>
						</li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
		</div>
		<!-- END TOP NAVIGATION MENU -->
	</div>';
	}
}

if (!function_exists('main_menu')) {
	function main_menu() {
		$CI = & get_instance();
        $base_url = config_item('base_url');
        $usuario = $CI->session->userdata("usuario");
        $tipo = $CI->session->userdata("tipo");

       

        $operador = ' <!-- BEGIN SIDEBAR MENU -->
					<ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
					<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
					<li class="sidebar-search-wrapper">
						<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
					
						<!-- END RESPONSIVE QUICK SEARCH FORM -->
					</li>
					<li class="tooltips active" data-container="body" data-placement="right" data-html="true" data-original-title="AngularJS version demo">
						<a href="' . $base_url . '">
						<i class="icon-paper-plane"></i>
						<span class="title">
						Inicio </span>
						</a>
					</li>	
				</ul>
				<!-- END SIDEBAR MENU -->';

		$admin = ' <!-- BEGIN SIDEBAR MENU -->
					<ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
					<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
					<li class="sidebar-search-wrapper">
						<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
					
						<!-- END RESPONSIVE QUICK SEARCH FORM -->
					</li>
					<li class="tooltips active" data-container="body" data-placement="right" data-html="true" data-original-title="Boxed">
						<a href="' . $base_url . '">
						<i class="icon-paper-plane"></i>
						<span class="title">
						Inicio </span>
						</a>
					</li>
					<li class="tooltips" data-container="body" data-placement="right" data-html="true" data-original-title="Pantalla Full">
						<a href="' . $base_url . 'full">
						<i class="icon-notebook"></i>
						<span class="title">
						Full Page </span>
						</a>
					</li>
				</ul>
				<!-- END SIDEBAR MENU -->';


				if($tipo == 'A')
				{
					return $admin;
				}
				else
				{
					return $operador;
				}
	}
}
?>