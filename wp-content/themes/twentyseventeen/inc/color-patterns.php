<?php
/**
 * Twenty Seventeen: Color Patterns
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 */

/**
 * Generate the CSS for the current custom.php color scheme.
 */
function twentyseventeen_custom_colors_css() {
	$hue = absint( get_theme_mod( 'colorscheme_hue', 250 ) );

	/**
	 * Filter Twenty Seventeen default saturation level.
	 *
	 * @since Twenty Seventeen 1.0
	 *
	 * @param int $saturation Color saturation level.
	 */
	$saturation = absint( apply_filters( 'twentyseventeen_custom_colors_saturation', 50 ) );
	$reduced_saturation = ( .8 * $saturation ) . '%';
	$saturation = $saturation . '%';
	$css = '
/**
 * Twenty Seventeen: Color Patterns
 *
 * Colors are ordered from dark to light.
 */

.colors-custom.php a:hover,
.colors-custom.php a:active,
.colors-custom.php .entry-content a:focus,
.colors-custom.php .entry-content a:hover,
.colors-custom.php .entry-summary a:focus,
.colors-custom.php .entry-summary a:hover,
.colors-custom.php .comment-content a:focus,
.colors-custom.php .comment-content a:hover,
.colors-custom.php .widget a:focus,
.colors-custom.php .widget a:hover,
.colors-custom.php .site-footer .widget-area a:focus,
.colors-custom.php .site-footer .widget-area a:hover,
.colors-custom.php .posts-navigation a:focus,
.colors-custom.php .posts-navigation a:hover,
.colors-custom.php .comment-metadata a:focus,
.colors-custom.php .comment-metadata a:hover,
.colors-custom.php .comment-metadata a.comment-edit-link:focus,
.colors-custom.php .comment-metadata a.comment-edit-link:hover,
.colors-custom.php .comment-reply-link:focus,
.colors-custom.php .comment-reply-link:hover,
.colors-custom.php .widget_authors a:focus strong,
.colors-custom.php .widget_authors a:hover strong,
.colors-custom.php .entry-title a:focus,
.colors-custom.php .entry-title a:hover,
.colors-custom.php .entry-meta a:focus,
.colors-custom.php .entry-meta a:hover,
.colors-custom.php.blog .entry-meta a.post-edit-link:focus,
.colors-custom.php.blog .entry-meta a.post-edit-link:hover,
.colors-custom.php.archive .entry-meta a.post-edit-link:focus,
.colors-custom.php.archive .entry-meta a.post-edit-link:hover,
.colors-custom.php.search .entry-meta a.post-edit-link:focus,
.colors-custom.php.search .entry-meta a.post-edit-link:hover,
.colors-custom.php .page-links a:focus .page-number,
.colors-custom.php .page-links a:hover .page-number,
.colors-custom.php .entry-footer a:focus,
.colors-custom.php .entry-footer a:hover,
.colors-custom.php .entry-footer .cat-links a:focus,
.colors-custom.php .entry-footer .cat-links a:hover,
.colors-custom.php .entry-footer .tags-links a:focus,
.colors-custom.php .entry-footer .tags-links a:hover,
.colors-custom.php .post-navigation a:focus,
.colors-custom.php .post-navigation a:hover,
.colors-custom.php .pagination a:not(.prev):not(.next):focus,
.colors-custom.php .pagination a:not(.prev):not(.next):hover,
.colors-custom.php .comments-pagination a:not(.prev):not(.next):focus,
.colors-custom.php .comments-pagination a:not(.prev):not(.next):hover,
.colors-custom.php .logged-in-as a:focus,
.colors-custom.php .logged-in-as a:hover,
.colors-custom.php a:focus .nav-title,
.colors-custom.php a:hover .nav-title,
.colors-custom.php .edit-link a:focus,
.colors-custom.php .edit-link a:hover,
.colors-custom.php .site-info a:focus,
.colors-custom.php .site-info a:hover,
.colors-custom.php .widget .widget-title a:focus,
.colors-custom.php .widget .widget-title a:hover,
.colors-custom.php .widget ul li a:focus,
.colors-custom.php .widget ul li a:hover {
	color: hsl( ' . $hue . ', ' . $saturation . ', 0% ); /* base: #000; */
}

.colors-custom.php .entry-content a,
.colors-custom.php .entry-summary a,
.colors-custom.php .comment-content a,
.colors-custom.php .widget a,
.colors-custom.php .site-footer .widget-area a,
.colors-custom.php .posts-navigation a,
.colors-custom.php .widget_authors a strong {
	-webkit-box-shadow: inset 0 -1px 0 hsl( ' . $hue . ', ' . $saturation . ', 6% ); /* base: rgba(15, 15, 15, 1); */
	box-shadow: inset 0 -1px 0 hsl( ' . $hue . ', ' . $saturation . ', 6% ); /* base: rgba(15, 15, 15, 1); */
}

.colors-custom.php button,
.colors-custom.php input[type="button"],
.colors-custom.php input[type="submit"],
.colors-custom.php .entry-footer .edit-link a.post-edit-link {
	background-color: hsl( ' . $hue . ', ' . $saturation . ', 13% ); /* base: #222; */
}

.colors-custom.php input[type="text"]:focus,
.colors-custom.php input[type="email"]:focus,
.colors-custom.php input[type="url"]:focus,
.colors-custom.php input[type="password"]:focus,
.colors-custom.php input[type="search"]:focus,
.colors-custom.php input[type="number"]:focus,
.colors-custom.php input[type="tel"]:focus,
.colors-custom.php input[type="range"]:focus,
.colors-custom.php input[type="date"]:focus,
.colors-custom.php input[type="month"]:focus,
.colors-custom.php input[type="week"]:focus,
.colors-custom.php input[type="time"]:focus,
.colors-custom.php input[type="datetime"]:focus,
.colors-custom.php .colors-custom.php input[type="datetime-local"]:focus,
.colors-custom.php input[type="color"]:focus,
.colors-custom.php textarea:focus,
.colors-custom.php button.secondary,
.colors-custom.php input[type="reset"],
.colors-custom.php input[type="button"].secondary,
.colors-custom.php input[type="reset"].secondary,
.colors-custom.php input[type="submit"].secondary,
.colors-custom.php a,
.colors-custom.php .site-title,
.colors-custom.php .site-title a,
.colors-custom.php .navigation-top a,
.colors-custom.php .dropdown-toggle,
.colors-custom.php .menu-toggle,
.colors-custom.php .page .panel-content .entry-title,
.colors-custom.php .page-title,
.colors-custom.php.page:not(.twentyseventeen-front-page) .entry-title,
.colors-custom.php .page-links a .page-number,
.colors-custom.php .comment-metadata a.comment-edit-link,
.colors-custom.php .comment-reply-link .icon,
.colors-custom.php h2.widget-title,
.colors-custom.php mark,
.colors-custom.php .post-navigation a:focus .icon,
.colors-custom.php .post-navigation a:hover .icon,
.colors-custom.php .site-content .site-content-light,
.colors-custom.php .twentyseventeen-panel .recent-posts .entry-header .edit-link {
	color: hsl( ' . $hue . ', ' . $saturation . ', 13% ); /* base: #222; */
}

.colors-custom.php .entry-content a:focus,
.colors-custom.php .entry-content a:hover,
.colors-custom.php .entry-summary a:focus,
.colors-custom.php .entry-summary a:hover,
.colors-custom.php .comment-content a:focus,
.colors-custom.php .comment-content a:hover,
.colors-custom.php .widget a:focus,
.colors-custom.php .widget a:hover,
.colors-custom.php .site-footer .widget-area a:focus,
.colors-custom.php .site-footer .widget-area a:hover,
.colors-custom.php .posts-navigation a:focus,
.colors-custom.php .posts-navigation a:hover,
.colors-custom.php .comment-metadata a:focus,
.colors-custom.php .comment-metadata a:hover,
.colors-custom.php .comment-metadata a.comment-edit-link:focus,
.colors-custom.php .comment-metadata a.comment-edit-link:hover,
.colors-custom.php .comment-reply-link:focus,
.colors-custom.php .comment-reply-link:hover,
.colors-custom.php .widget_authors a:focus strong,
.colors-custom.php .widget_authors a:hover strong,
.colors-custom.php .entry-title a:focus,
.colors-custom.php .entry-title a:hover,
.colors-custom.php .entry-meta a:focus,
.colors-custom.php .entry-meta a:hover,
.colors-custom.php.blog .entry-meta a.post-edit-link:focus,
.colors-custom.php.blog .entry-meta a.post-edit-link:hover,
.colors-custom.php.archive .entry-meta a.post-edit-link:focus,
.colors-custom.php.archive .entry-meta a.post-edit-link:hover,
.colors-custom.php.search .entry-meta a.post-edit-link:focus,
.colors-custom.php.search .entry-meta a.post-edit-link:hover,
.colors-custom.php .page-links a:focus .page-number,
.colors-custom.php .page-links a:hover .page-number,
.colors-custom.php .entry-footer .cat-links a:focus,
.colors-custom.php .entry-footer .cat-links a:hover,
.colors-custom.php .entry-footer .tags-links a:focus,
.colors-custom.php .entry-footer .tags-links a:hover,
.colors-custom.php .post-navigation a:focus,
.colors-custom.php .post-navigation a:hover,
.colors-custom.php .pagination a:not(.prev):not(.next):focus,
.colors-custom.php .pagination a:not(.prev):not(.next):hover,
.colors-custom.php .comments-pagination a:not(.prev):not(.next):focus,
.colors-custom.php .comments-pagination a:not(.prev):not(.next):hover,
.colors-custom.php .logged-in-as a:focus,
.colors-custom.php .logged-in-as a:hover,
.colors-custom.php a:focus .nav-title,
.colors-custom.php a:hover .nav-title,
.colors-custom.php .edit-link a:focus,
.colors-custom.php .edit-link a:hover,
.colors-custom.php .site-info a:focus,
.colors-custom.php .site-info a:hover,
.colors-custom.php .widget .widget-title a:focus,
.colors-custom.php .widget .widget-title a:hover,
.colors-custom.php .widget ul li a:focus,
.colors-custom.php .widget ul li a:hover {
	-webkit-box-shadow: inset 0 0 0 hsl( ' . $hue . ', ' . $saturation . ', 13% ), 0 3px 0 hsl( ' . $hue . ', ' . $saturation . ', 13% );
	box-shadow: inset 0 0 0 hsl( ' . $hue . ', ' . $saturation . ' , 13% ), 0 3px 0 hsl( ' . $hue . ', ' . $saturation . ', 13% );
}

body.colors-custom.php,
.colors-custom.php button,
.colors-custom.php input,
.colors-custom.php select,
.colors-custom.php textarea,
.colors-custom.php h3,
.colors-custom.php h4,
.colors-custom.php h6,
.colors-custom.php label,
.colors-custom.php .entry-title a,
.colors-custom.php.twentyseventeen-front-page .panel-content .recent-posts article,
.colors-custom.php .entry-footer .cat-links a,
.colors-custom.php .entry-footer .tags-links a,
.colors-custom.php .format-quote blockquote,
.colors-custom.php .nav-title,
.colors-custom.php .comment-body,
.colors-custom.php .site-content .wp-playlist-light .wp-playlist-current-item .wp-playlist-item-album {
	color: hsl( ' . $hue . ', ' . $reduced_saturation . ', 20% ); /* base: #333; */
}

.colors-custom.php .social-navigation a:hover,
.colors-custom.php .social-navigation a:focus {
	background: hsl( ' . $hue . ', ' . $reduced_saturation . ', 20% ); /* base: #333; */
}

.colors-custom.php input[type="text"]:focus,
.colors-custom.php input[type="email"]:focus,
.colors-custom.php input[type="url"]:focus,
.colors-custom.php input[type="password"]:focus,
.colors-custom.php input[type="search"]:focus,
.colors-custom.php input[type="number"]:focus,
.colors-custom.php input[type="tel"]:focus,
.colors-custom.php input[type="range"]:focus,
.colors-custom.php input[type="date"]:focus,
.colors-custom.php input[type="month"]:focus,
.colors-custom.php input[type="week"]:focus,
.colors-custom.php input[type="time"]:focus,
.colors-custom.php input[type="datetime"]:focus,
.colors-custom.php input[type="datetime-local"]:focus,
.colors-custom.php input[type="color"]:focus,
.colors-custom.php textarea:focus,
.bypostauthor > .comment-body > .comment-meta > .comment-author .avatar {
	border-color: hsl( ' . $hue . ', ' . $reduced_saturation . ', 20% ); /* base: #333; */
}

.colors-custom.php h2,
.colors-custom.php blockquote,
.colors-custom.php input[type="text"],
.colors-custom.php input[type="email"],
.colors-custom.php input[type="url"],
.colors-custom.php input[type="password"],
.colors-custom.php input[type="search"],
.colors-custom.php input[type="number"],
.colors-custom.php input[type="tel"],
.colors-custom.php input[type="range"],
.colors-custom.php input[type="date"],
.colors-custom.php input[type="month"],
.colors-custom.php input[type="week"],
.colors-custom.php input[type="time"],
.colors-custom.php input[type="datetime"],
.colors-custom.php input[type="datetime-local"],
.colors-custom.php input[type="color"],
.colors-custom.php textarea,
.colors-custom.php .site-description,
.colors-custom.php .entry-content blockquote.alignleft,
.colors-custom.php .entry-content blockquote.alignright,
.colors-custom.php .colors-custom.php .taxonomy-description,
.colors-custom.php .site-info a,
.colors-custom.php .wp-caption,
.colors-custom.php .gallery-caption {
	color: hsl( ' . $hue . ', ' . $saturation . ', 40% ); /* base: #666; */
}

.colors-custom.php abbr,
.colors-custom.php acronym {
	border-bottom-color: hsl( ' . $hue . ', ' . $saturation . ', 40% ); /* base: #666; */
}

.colors-custom.php h5,
.colors-custom.php .entry-meta,
.colors-custom.php .entry-meta a,
.colors-custom.php.blog .entry-meta a.post-edit-link,
.colors-custom.php.archive .entry-meta a.post-edit-link,
.colors-custom.php.search .entry-meta a.post-edit-link,
.colors-custom.php .nav-subtitle,
.colors-custom.php .comment-metadata,
.colors-custom.php .comment-metadata a,
.colors-custom.php .no-comments,
.colors-custom.php .comment-awaiting-moderation,
.colors-custom.php .page-numbers.current,
.colors-custom.php .page-links .page-number,
.colors-custom.php .navigation-top .current-menu-item > a,
.colors-custom.php .navigation-top .current_page_item > a,
.colors-custom.php .main-navigation a:hover,
.colors-custom.php .site-content .wp-playlist-light .wp-playlist-current-item .wp-playlist-item-artist {
	color: hsl( ' . $hue . ', ' . $saturation . ', 46% ); /* base: #767676; */
}

.colors-custom.php button:hover,
.colors-custom.php button:focus,
.colors-custom.php input[type="button"]:hover,
.colors-custom.php input[type="button"]:focus,
.colors-custom.php input[type="submit"]:hover,
.colors-custom.php input[type="submit"]:focus,
.colors-custom.php .entry-footer .edit-link a.post-edit-link:hover,
.colors-custom.php .entry-footer .edit-link a.post-edit-link:focus,
.colors-custom.php .social-navigation a,
.colors-custom.php .prev.page-numbers:focus,
.colors-custom.php .prev.page-numbers:hover,
.colors-custom.php .next.page-numbers:focus,
.colors-custom.php .next.page-numbers:hover,
.colors-custom.php .site-content .wp-playlist-light .wp-playlist-item:hover,
.colors-custom.php .site-content .wp-playlist-light .wp-playlist-item:focus {
	background: hsl( ' . esc_attr( $hue ) . ', ' . esc_attr( $saturation ) . ', 46% ); /* base: #767676; */
}

.colors-custom.php button.secondary:hover,
.colors-custom.php button.secondary:focus,
.colors-custom.php input[type="reset"]:hover,
.colors-custom.php input[type="reset"]:focus,
.colors-custom.php input[type="button"].secondary:hover,
.colors-custom.php input[type="button"].secondary:focus,
.colors-custom.php input[type="reset"].secondary:hover,
.colors-custom.php input[type="reset"].secondary:focus,
.colors-custom.php input[type="submit"].secondary:hover,
.colors-custom.php input[type="submit"].secondary:focus,
.colors-custom.php hr {
	background: hsl( ' . $hue . ', ' . $saturation . ', 73% ); /* base: #bbb; */
}

.colors-custom.php input[type="text"],
.colors-custom.php input[type="email"],
.colors-custom.php input[type="url"],
.colors-custom.php input[type="password"],
.colors-custom.php input[type="search"],
.colors-custom.php input[type="number"],
.colors-custom.php input[type="tel"],
.colors-custom.php input[type="range"],
.colors-custom.php input[type="date"],
.colors-custom.php input[type="month"],
.colors-custom.php input[type="week"],
.colors-custom.php input[type="time"],
.colors-custom.php input[type="datetime"],
.colors-custom.php input[type="datetime-local"],
.colors-custom.php input[type="color"],
.colors-custom.php textarea,
.colors-custom.php select,
.colors-custom.php fieldset,
.colors-custom.php .widget .tagcloud a:hover,
.colors-custom.php .widget .tagcloud a:focus,
.colors-custom.php .widget.widget_tag_cloud a:hover,
.colors-custom.php .widget.widget_tag_cloud a:focus,
.colors-custom.php .wp_widget_tag_cloud a:hover,
.colors-custom.php .wp_widget_tag_cloud a:focus {
	border-color: hsl( ' . $hue . ', ' . $saturation . ', 73% ); /* base: #bbb; */
}

.colors-custom.php thead th {
	border-bottom-color: hsl( ' . $hue . ', ' . $saturation . ', 73% ); /* base: #bbb; */
}

.colors-custom.php .entry-footer .cat-links .icon,
.colors-custom.php .entry-footer .tags-links .icon {
	color: hsl( ' . $hue . ', ' . $saturation . ', 73% ); /* base: #bbb; */
}

.colors-custom.php button.secondary,
.colors-custom.php input[type="reset"],
.colors-custom.php input[type="button"].secondary,
.colors-custom.php input[type="reset"].secondary,
.colors-custom.php input[type="submit"].secondary,
.colors-custom.php .prev.page-numbers,
.colors-custom.php .next.page-numbers {
	background-color: hsl( ' . $hue . ', ' . $saturation . ', 87% ); /* base: #ddd; */
}

.colors-custom.php .widget .tagcloud a,
.colors-custom.php .widget.widget_tag_cloud a,
.colors-custom.php .wp_widget_tag_cloud a {
	border-color: hsl( ' . $hue . ', ' . $saturation . ', 87% ); /* base: #ddd; */
}

.colors-custom.php.twentyseventeen-front-page article:not(.has-post-thumbnail):not(:first-child),
.colors-custom.php .widget ul li {
	border-top-color: hsl( ' . $hue . ', ' . $saturation . ', 87% ); /* base: #ddd; */
}

.colors-custom.php .widget ul li {
	border-bottom-color: hsl( ' . $hue . ', ' . $saturation . ', 87% ); /* base: #ddd; */
}

.colors-custom.php pre,
.colors-custom.php mark,
.colors-custom.php ins {
	background: hsl( ' . $hue . ', ' . $saturation . ', 93% ); /* base: #eee; */
}

.colors-custom.php .navigation-top,
.colors-custom.php .main-navigation > div > ul,
.colors-custom.php .pagination,
.colors-custom.php .comments-pagination,
.colors-custom.php .entry-footer,
.colors-custom.php .site-footer {
	border-top-color: hsl( ' . $hue . ', ' . $saturation . ', 93% ); /* base: #eee; */
}

.colors-custom.php .navigation-top,
.colors-custom.php .main-navigation li,
.colors-custom.php .entry-footer,
.colors-custom.php .single-featured-image-header,
.colors-custom.php .site-content .wp-playlist-light .wp-playlist-item,
.colors-custom.php tr {
	border-bottom-color: hsl( ' . $hue . ', ' . $saturation . ', 93% ); /* base: #eee; */
}

.colors-custom.php .site-content .wp-playlist-light {
	border-color: hsl( ' . $hue . ', ' . $saturation . ', 93% ); /* base: #eee; */
}

.colors-custom.php .site-header,
.colors-custom.php .single-featured-image-header {
	background-color: hsl( ' . $hue . ', ' . $saturation . ', 98% ); /* base: #fafafa; */
}

.colors-custom.php button,
.colors-custom.php input[type="button"],
.colors-custom.php input[type="submit"],
.colors-custom.php .entry-footer .edit-link a.post-edit-link,
.colors-custom.php .social-navigation a,
.colors-custom.php .site-content .wp-playlist-light a.wp-playlist-caption:hover,
.colors-custom.php .site-content .wp-playlist-light .wp-playlist-item:hover a,
.colors-custom.php .site-content .wp-playlist-light .wp-playlist-item:focus a,
.colors-custom.php .site-content .wp-playlist-light .wp-playlist-item:hover,
.colors-custom.php .site-content .wp-playlist-light .wp-playlist-item:focus,
.colors-custom.php .prev.page-numbers:focus,
.colors-custom.php .prev.page-numbers:hover,
.colors-custom.php .next.page-numbers:focus,
.colors-custom.php .next.page-numbers:hover,
.colors-custom.php.has-header-image .site-title,
.colors-custom.php.has-header-video .site-title,
.colors-custom.php.has-header-image .site-title a,
.colors-custom.php.has-header-video .site-title a,
.colors-custom.php.has-header-image .site-description,
.colors-custom.php.has-header-video .site-description {
	color: hsl( ' . $hue . ', ' . $saturation . ', 100% ); /* base: #fff; */
}

body.colors-custom.php,
.colors-custom.php .navigation-top,
.colors-custom.php .main-navigation ul {
	background: hsl( ' . $hue . ', ' . $saturation . ', 100% ); /* base: #fff; */
}

.colors-custom.php .widget ul li a,
.colors-custom.php .site-footer .widget-area ul li a {
	-webkit-box-shadow: inset 0 -1px 0 hsl( ' . $hue . ', ' . $saturation . ', 100% ); /* base: rgba(255, 255, 255, 1); */
	box-shadow: inset 0 -1px 0 hsl( ' . $hue . ', ' . $saturation . ', 100% );  /* base: rgba(255, 255, 255, 1); */
}

.colors-custom.php .menu-toggle,
.colors-custom.php .menu-toggle:hover,
.colors-custom.php .menu-toggle:focus,
.colors-custom.php .menu .dropdown-toggle,
.colors-custom.php .menu-scroll-down,
.colors-custom.php .menu-scroll-down:hover,
.colors-custom.php .menu-scroll-down:focus {
	background-color: transparent;
}

.colors-custom.php .widget .tagcloud a,
.colors-custom.php .widget .tagcloud a:focus,
.colors-custom.php .widget .tagcloud a:hover,
.colors-custom.php .widget.widget_tag_cloud a,
.colors-custom.php .widget.widget_tag_cloud a:focus,
.colors-custom.php .widget.widget_tag_cloud a:hover,
.colors-custom.php .wp_widget_tag_cloud a,
.colors-custom.php .wp_widget_tag_cloud a:focus,
.colors-custom.php .wp_widget_tag_cloud a:hover,
.colors-custom.php .entry-footer .edit-link a.post-edit-link:focus,
.colors-custom.php .entry-footer .edit-link a.post-edit-link:hover {
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
}

/* Reset non-customizable hover styling for links */
.colors-custom.php .entry-content a:hover,
.colors-custom.php .entry-content a:focus,
.colors-custom.php .entry-summary a:hover,
.colors-custom.php .entry-summary a:focus,
.colors-custom.php .comment-content a:focus,
.colors-custom.php .comment-content a:hover,
.colors-custom.php .widget a:hover,
.colors-custom.php .widget a:focus,
.colors-custom.php .site-footer .widget-area a:hover,
.colors-custom.php .site-footer .widget-area a:focus,
.colors-custom.php .posts-navigation a:hover,
.colors-custom.php .posts-navigation a:focus,
.colors-custom.php .widget_authors a:hover strong,
.colors-custom.php .widget_authors a:focus strong {
	-webkit-box-shadow: inset 0 0 0 rgba(0, 0, 0, 0), 0 3px 0 rgba(0, 0, 0, 1);
	box-shadow: inset 0 0 0 rgba(0, 0, 0, 0), 0 3px 0 rgba(0, 0, 0, 1);
}

.colors-custom.php .gallery-item a,
.colors-custom.php .gallery-item a:hover,
.colors-custom.php .gallery-item a:focus {
	-webkit-box-shadow: none;
	box-shadow: none;
}

@media screen and (min-width: 48em) {

	.colors-custom.php .nav-links .nav-previous .nav-title .icon,
	.colors-custom.php .nav-links .nav-next .nav-title .icon {
		color: hsl( ' . $hue . ', ' . $saturation . ', 20% ); /* base: #222; */
	}

	.colors-custom.php .main-navigation li li:hover,
	.colors-custom.php .main-navigation li li.focus {
		background: hsl( ' . $hue . ', ' . $saturation . ', 46% ); /* base: #767676; */
	}

	.colors-custom.php .navigation-top .menu-scroll-down {
		color: hsl( ' . $hue . ', ' . $saturation . ', 46% ); /* base: #767676; */;
	}

	.colors-custom.php abbr[title] {
		border-bottom-color: hsl( ' . $hue . ', ' . $saturation . ', 46% ); /* base: #767676; */;
	}

	.colors-custom.php .main-navigation ul ul {
		border-color: hsl( ' . $hue . ', ' . $saturation . ', 73% ); /* base: #bbb; */
		background: hsl( ' . $hue . ', ' . $saturation . ', 100% ); /* base: #fff; */
	}

	.colors-custom.php .main-navigation ul li.menu-item-has-children:before,
	.colors-custom.php .main-navigation ul li.page_item_has_children:before {
		border-bottom-color: hsl( ' . $hue . ', ' . $saturation . ', 73% ); /* base: #bbb; */
	}

	.colors-custom.php .main-navigation ul li.menu-item-has-children:after,
	.colors-custom.php .main-navigation ul li.page_item_has_children:after {
		border-bottom-color: hsl( ' . $hue . ', ' . $saturation . ', 100% ); /* base: #fff; */
	}

	.colors-custom.php .main-navigation li li.focus > a,
	.colors-custom.php .main-navigation li li:focus > a,
	.colors-custom.php .main-navigation li li:hover > a,
	.colors-custom.php .main-navigation li li a:hover,
	.colors-custom.php .main-navigation li li a:focus,
	.colors-custom.php .main-navigation li li.current_page_item a:hover,
	.colors-custom.php .main-navigation li li.current-menu-item a:hover,
	.colors-custom.php .main-navigation li li.current_page_item a:focus,
	.colors-custom.php .main-navigation li li.current-menu-item a:focus {
		color: hsl( ' . $hue . ', ' . $saturation . ', 100% ); /* base: #fff; */
	}
}';

	/**
	 * Filters Twenty Seventeen custom.php colors CSS.
	 *
	 * @since Twenty Seventeen 1.0
	 *
	 * @param string $css        Base theme colors CSS.
	 * @param int    $hue        The user's selected color hue.
	 * @param string $saturation Filtered theme color saturation level.
	 */
	return apply_filters( 'twentyseventeen_custom_colors_css', $css, $hue, $saturation );
}
