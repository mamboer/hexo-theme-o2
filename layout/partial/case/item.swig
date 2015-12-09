<div class="col-xs-6 col-sm-4 col-md-3 case-wrap">
	<figure class="case">
		<a class="case-cover" href="{{ item.preview }}" target="_blank">
			<img src="{{ item.cover }}" alt="{{ item.name  }}"/>
		</a>
		<figcaption class="case-caption">
			<h3 class="case-name">{{ item.name }}</h3>
			<div class="case-desc">{{ item.desc }}</div>
			{% if item.link %}
			<a href="{{ item.link }}" target="_blank" class="lnk-github" title="{{ __('menu.source') }}"><i class="fa fa-github"></i></a>
			{% endif %}
		</figcaption>
	</figure>
</div>
