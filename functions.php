<?php
	add_theme_support('menus');

	register_nav_menu('mainmenu', "Main Manu");

	register_sidebar(array(
		'name' => 'Sidebar Left',
		'id' => 'sidebar-l',
		'description' => 'Left panel after menu',
		'before_widget' => '<article class="widget %2$s">',
		'after_widget' => "</article>\n",
		'before_title' => '<h2 class="widgettitle">',
		'after_title' => "</h2>\n"
	));

add_theme_support('post-thumbnails');
