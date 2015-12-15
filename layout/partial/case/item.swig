<div class="col-xs-6 col-sm-4 col-md-3 case-wrap">
	<figure class="case">
		<a class="case-cover" href="{{ item.preview }}" target="_blank" style="background-color:#{{ item.bgc|default('6190e8') }}">
			{% if item.logo %}
            <div class="case-cover-inner">
                <img class="case-logo" src="{{ item.logo }}" alt="{{ item.name  }}"/>
                <p class="case-title">{{ item.name }}</p>
            </div>
            {% endif %}

            {% if item.cover %}
            <div class="case-pic" style="background-image:url({{ item.cover }})"></div>
            {% endif %}
		</a>
		<a class="case-info" href="{{ item.preview }}" target="_blank">
            <figcaption class="case-caption">
                <h3 class="case-name">{{ item.name }}</h3>
                <div class="case-desc">{{ item.desc }}</div>
            </figcaption>
        </a>
        {% if item.link %}
        <a href="{{ item.link }}" target="_blank" class="lnk-icon lnk-github" title="{{ __('menu.source') }}"><i class="fa fa-github"></i></a>
        {% endif %}
	</figure>
</div>
