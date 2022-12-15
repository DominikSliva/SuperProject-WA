<?php
/**
 * The Header for our theme.
 *
 * @package Chateau
 */
?>
<!DOCTYPE html>
<!--[if IE 7]>
<html id="ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html id="ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) & !(IE 8)]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-X2Q2Q8718D"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-X2Q2Q8718D');
</script>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<!--[if lt IE 9]>
<script src="<?php echo get_template_directory_uri(); ?>/js/html5.js" type="text/javascript"></script>
<![endif]-->
<?php wp_head(); ?>
<style type="text/css">
<!--
  .post-info,
.menu {display:none;}
//-->
</style>
<? //if (is_logged()):?>
  <link rel='stylesheet' id='chateau-css' href='http://blogkantora.cz/wp-content/themes/chateau/A.style.css,qver=4.5.3<?=rand(0,100)?>.pagespeed.cf.d_fKK7N1rG.css' type='text/css' media='all'/>
<? //endif?>


</head>

<body <?php body_class(); ?>>
<div id="page" class="hfeed">
	<?php do_action( 'before' ); ?>
	<div id="page-inner">
		<header id="branding" role="banner">
			<nav id="menu" role="navigation">
				<?php
					// Remove the widont filter because of the limited space for the submenu.
					$restore_widont = remove_filter( 'the_title', 'widont' );

					wp_nav_menu( array( 'theme_location' =>  'primary', 'container' => '', 'menu_class' => 'menu clear-fix' ) );
					// If the filter is successfuly removed add it back for the rest of the blog.
					if ( $restore_widont )
						add_filter( 'the_title', 'widont' );
				?>
			</nav><!-- end #menu -->

			<div id="main-title">
				<hgroup>
					<h1 id="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
					<?php
						$blog_description = get_bloginfo( 'description', 'display' );
						if ( ! empty( $blog_description ) ) : ?>
							<h2 id="site-description">~ <?php echo $blog_description; ?></h2>
					<?php endif; ?>
				</hgroup>
			</div><!-- end #main-title -->

			<?php
				// Has the text been hidden?
				if ( 'blank' != get_header_textcolor() ) :
			?>
				<div id="search">
					<?php get_search_form(); ?>
				</div><!-- end #search -->
			<?php endif; ?>

			<div id="main-image">
			<?php
				// Check to see if the header image has been removed
				$header_image = get_header_image();
				if ( ! empty( $header_image ) ) :
			?>
				<a href="<?php echo esc_url( home_url( '/' ) ); ?>">
					<?php
						if ( !is_404() && !is_attachment() ) { // Check if this is not 404 or attachment page
							// Check if this is a post or page, if it has a post-thumbnail
							//if ( is_singular() && has_post_thumbnail( $post->ID ) && ( $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'post-thumbnail' ) ) && 960 <= $image[1] ) :
								///echo get_the_post_thumbnail( $post->ID, 'post-thumbnail' );
							//else : ?>
								<img src="<?php header_image(); ?>" width="<?php echo get_custom_header()->width; ?>" height="<?php echo get_custom_header()->height; ?>" alt="<?php bloginfo( 'name' ); ?>" title="<?php bloginfo( 'name' ); ?>" />
					<?php //endif;
           } // end check for featured image or standard header ?>
				</a>
			<?php endif; // end check for removed header image ?>
			</div><!-- end #main-image -->
<?php
if ( function_exists('yoast_breadcrumb') ) {
yoast_breadcrumb('
<p id="breadcrumbs">','</p>
');
}
?>
		</header><!-- #branding -->
		<div id="main" class="clear-fix">
