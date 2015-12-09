{% extends '_layout.swig' %}

{% block title %} {{ __('menu.tags') }}: {{ page.tag }} | {{ config.title }} {% endblock %} 
{% block page_class %} page-tag {% endblock %}

{% block main %}
<div class="container page-wrap">
    <div class="root">
        <div class="main">
            <div class="page-heading">
                <a href="{{ url_for('tags/') }}" class="button pull-right btn-goback">标签列表 <i class="fa fa-level-up"></i></a>
                <h2 >"{{ page.tag }}" <small>{{  __('menu.tags')  }}</small></h2>
            </div>
            <div class="archives">
                {% include 'partial/archive/mini_posts.swig' %}	
            </div>
            {% include 'partial/pagination.swig' %}
        </div>
    </div>
</div>
{% include 'partial/footer.swig' %}
{% endblock %}
