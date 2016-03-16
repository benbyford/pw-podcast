<?php

/**
 * _main.php
 * Main markup file (multi-language)
 *
 *   $title: The page title/headline
 *   $content: The markup that appears in the main content/body copy column
 *   $sidebar: The markup that appears in the sidebar column
 *
 */

if($page->template == 'itunes-rss-feed'){

	include_once("./itunes-rss-feed.php");

}else{

	include("./head.inc");

	?>
	<header class="">
		<div class="header_image">
			<img src="<?php echo $homepage->header_image->url; ?>">
		</div>
		<div class="header_inner">
			<div class="container">
				<!-- top navigation -->
				<nav>
					<ul class='topnav'>
						<?php
						// top navigation consists of homepage and its visible children
						foreach($homepage->and($homepage->children) as $item) {
							if($item->id == $page->rootParent->id) {
								echo "<li class='current'>";
							} else {
								echo "<li>";
							}
							echo "<a href='$item->url'>$item->title</a></li>";
						}

						if($homepage->itunes!=''){
							echo '<li><a class="feed fa-apple fa itunes" href="'. $homepage->itunes . '"></a></li>';
						}
						echo '<li><a class="feed fa-rss fa rss" href="'. $pages->get("/")->url . 'itunes-rss-feed/"></a></li>';

						// output an "Edit" link if this page happens to be editable by the current user
						if($page->editable()) echo "<li class='edit'><a href='$page->editURL'>" . __('Edit') . "</a></li>";
						?>
					</ul>
					<form class='search' action='<?php echo $pages->get('template=search')->url; ?>' method='get'>
						<input type='text' name='q' placeholder='<?php echo _x('Search', 'placeholder'); ?>' />
						<button type='submit' name='submit'><?php echo _x('Search', 'button'); ?></button>
					</form>
				</nav>

			</div>
		</div>
	</header>
	<div id='main' class="container">

		<!-- main content -->
		<div id='content'>
			<h1><?php echo $page->get("headline|title"); ?></h1>
			<?php echo $content; ?>
		</div>

		<!-- sidebar content -->
		<?php if($sidebar): ?>
		<div id='sidebar'>
			<?php echo $sidebar; ?>
		</div>
		<?php endif; ?>

	</div>
<?php
	include("./foot.inc");
}
?>
