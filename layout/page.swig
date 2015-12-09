{% extends '_layout.swig' %}

{% block title %}
  {% set page_title_suffix = ' | ' + config.title %}
  {% if page.type === "cates" %}
    {{ __('menu.cates') + page_title_suffix }}
  {% elif page.type === "tags" %}
    {{ __('menu.tags') + page_title_suffix }}
  {% else %}
    {{ page.title + page_title_suffix }}
  {% endif %}
{% endblock %}

{% block main %}

{% if page.type === "tags" or page.type === "cates" or page.type === "about" %}
{% include 'partial/index/banner.swig' %}
{% endif %}
<div class="container page-wrap">
    <div class="root">
        <div class="main">    
        {# tagcloud page support #}
        {% if page.type === "tags" %}
        <div class="main-widget tag-cloud">
            <div class="tag-cloud-title">
                <h2>{{ _p('counter.tag_cloud', site.tags.length) }}</h2>
            </div>
            <div class="tag-cloud-items">
            {{ tagcloud({min_font: 12, max_font: 30, amount: 200, color: true, start_color: '#ccc', end_color: '#111'}) }}
            </div>
        </div>
        {% elif page.type === 'cates' %}
        <div class="main-widget cates-wrap">
            <div class="cates-title">
                <h2>{{ _p('counter.categories', site.categories.length) }}</h2>
            </div>
            <div class="cates">
            {{ list_categories() }}
            </div>
        </div>
        {% else %}
        {{ page.content }}
        {% endif %}
        {{ partial('partial/comment') }}
        </div>
    </div>
</div>

{% include 'partial/footer.swig' %}

{% endblock %}


