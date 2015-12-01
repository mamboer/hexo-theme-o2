{% set o2posts = process_posts(page) %}
<div class="feature-posts">
{% for post in o2posts %}
{% if loop.index <= theme.layout.feature_count %}
{% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
{% include '../post/feature.swig' with {post: post, author: author, idx: loop.index} %}
{% endif %}
{% endfor %}
</div>

