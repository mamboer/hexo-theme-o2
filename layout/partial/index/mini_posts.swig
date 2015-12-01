<!-- Mini Post -->
{% if o2posts.length > theme.layout.feature_count %}
<section class="mini-posts-wrap">
    <div class="mini-posts">
    {% for post in o2posts %}
    {% if loop.index > theme.layout.feature_count %}
    {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
    {% include '../post/mini.swig' with {post:post, author:author} %}
    {% endif %}	
    {% endfor%}	
    </div>
    {% include '../../partial/pagination.swig' %}
</section>
{% endif %}
<!-- /Mini Post-->
