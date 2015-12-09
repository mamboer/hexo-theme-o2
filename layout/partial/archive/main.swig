<div class="container notes">
    <div class="row">
        <div class="col-md-12 notes-bd">
            <div class="root">
                <div class="main">
                    <div class="main-widget">
                        <div class="main-widget-hd">
                            <h2>{{ __('sidebar.latest_posts') }}</h2>
                        </div>
                        <div class="box box-white archives">
                            {% include 'mini_posts.swig' %}	
                        </div>
                    </div>
                </div>

                <aside class="sidebar">
                    <div class="sidebar-widget"> 
                        <div class="sidebar-widget-hd">
                            <h2>{{ __('sidebar.recommended_posts') }}</h2>
                        </div>
                        {% include 'feature_posts.swig' %}	
                    </div>
                    <div class="sidebar-widget favlinks"> 
                        <div class="sidebar-widget-hd">
                            <h2>{{ __('sidebar.favlinks') }}</h2>
                        </div>
                        <ul class="react-list favlinks-list">
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
