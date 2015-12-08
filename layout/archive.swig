{% extends '_layout.swig' %}

{% block title %} {{ __('menu.archive') }} | {{ config.title }} {% endblock %}
{% block page_class %} page-archive {% endblock %}

{% block main %}

{% include 'partial/index/banner.swig' %}

<div class="container notes">
    <div class="row">
        <div class="col-md-12 o2">
            <div class="root">
                <div class="main">
                    <div class="main-widget">
                        <div class="main-widget-hd">
                            <h2>{{ __('sidebar.latest_posts') }} <i class="fa fa-tree"></i></h2>
                        </div>
                        <div class="box box-white archives">
                            {% include 'partial/archive/mini_posts.swig' %}	
                        </div>
                    </div>
                </div>

                <aside class="sidebar">
                    <div class="sidebar-widget"> 
                        <div class="sidebar-widget-hd">
                            <h2>{{ __('sidebar.recommended_posts') }} <i class="fa fa-fire"></i></h2>
                        </div>
                        {% include 'partial/archive/feature_posts.swig' %}	
                    </div>
                    <div class="sidebar-widget favlinks"> 
                        <div class="sidebar-widget-hd">
                            <h2>{{ __('sidebar.favlinks') }} <i class="fa fa-connectdevelop"></i></h2>
                        </div>
                        <ul class="favlinks-list">
                            {% for item in site.data.links %}
                            <li>
                                <a href="{{ item.link }}">
                                    <h3>{{ item.name }}</h3>
                                    <p>{{ item.desc }}</p>
                                </a>
                            </li>
                            {% endfor %}
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</div>

{% include 'partial/footer.swig' %}

{% endblock %}
