<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<h1 style="margin-bottom:30px;">{title}</h1>

		<!-- IF !posts.length -->
			<div class="alert alert-warning text-center">{noItemsFoundKey}</div>
		<!-- ENDIF !posts.length -->

		<!-- B5: Search bar, tags -->
		<div class="col-xs-12">
			<div class="col-xs-3"></div>
			<div class="col-xs-3">
				<input id="posts-search-input" type="text" class="form-control" placeholder="Username, topic title">
			</div>
			<div class="col-xs-3">
				<button id="posts-search-btn" type="button" class="btn btn-primary">search</button>
			</div>
			<div class="col-xs-3"></div>
		</div>
		<div id="posts-search-tags" class="col-xs-12" style="margin: 20px 0;">
			<p style="display: inline-block;">Find posts replying to:</p>
		</div>

		<div class="col-xs-12">
			<!-- IMPORT partials/posts_list.tpl -->

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>