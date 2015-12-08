<!-- Mini Post -->
<section class="mini-posts-wrap">
    <div class="mini-posts">
    {% for post in page.posts %}
    {% set author = post.author|default({github_name:config.github.user, nick:config.author}) %}
    {% include '../post/mini.swig' with {post:post, author:author} %}
    {% endfor%}	
    </div>
    {% include '../../partial/pagination.swig' %}
</section>
<!-- /Mini Post-->
