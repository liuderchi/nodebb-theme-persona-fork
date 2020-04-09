<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection --> >
<head>
	<title>{browserTitle}</title>
	{{{each metaTags}}}{function.buildMetaTag}{{{end}}}
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client<!-- IF bootswatchSkin -->-{bootswatchSkin}<!-- END -->.css?{config.cache-buster}" />
	{{{each linkTags}}}{function.buildLinkTag}{{{end}}}

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
	<!-- END -->
	<!-- IF useCustomCSS -->
	<style>{{customCSS}}</style>
	<!-- END -->
</head>

<body class="{bodyClass} skin-<!-- IF bootswatchSkin -->{bootswatchSkin}<!-- ELSE -->noskin<!-- END -->">
	<nav id="menu" class="slideout-menu hidden">
		<!-- IMPORT partials/slideout-menu.tpl -->
	</nav>
	<nav id="chats-menu" class="slideout-menu hidden">
		<!-- IMPORT partials/chats-menu.tpl -->
	</nav>

	<main id="panel" class="slideout-panel">
		<nav class="navbar navbar-default navbar-fixed-top header" id="header-menu" component="navbar">
			<div class="container">
				<!-- IMPORT partials/menu.tpl -->
			</div>
		</nav>
		<div class="container">
			<ul class="col-lg-3 _sidebar" >
				<!-- BEGIN categories -->
				<li>
					<a class="navigation-link" href="/category/{categories.slug}" title="" <!-- IF categories.id -->id="{categories.id}"<!-- ENDIF categories.id --><!-- IF categories.properties.targetBlank --> target="_blank"<!-- ENDIF categories.properties.targetBlank -->>
						<!-- IF categories.icon -->
						<i class="fa fa-fw {categories.icon}" data-content=""></i>
						<!-- ENDIF categories.icon -->

						<!-- IF categories.name -->
						<span>{categories.name}</span>
						<!-- ENDIF categories.name -->
					</a>
				</li>
				<!-- END categories -->
			</ul>
		    <div id="content" class="col-lg-9">
		<!-- IMPORT partials/noscript/warning.tpl -->
