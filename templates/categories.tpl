<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row">
	<ul class="col-lg-3 _sidebar" >
		<!-- BEGIN categories -->
		<li class="">
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
	<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-9<!-- ENDIF widgets.sidebar.length -->">
		<h1 class="categories-title">[[pages:categories]]</h1>
		<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
			{{{each categories}}}
			<!-- IMPORT partials/categories/item.tpl -->
			{{{end}}}
		</ul>
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>
<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>
