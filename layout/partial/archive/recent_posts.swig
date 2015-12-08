{% if site.posts.length %}
<section class="recent-posts-wrap">
    <ul class="recent-posts posts">
        {% set rposts = site.posts.slice(0, 5) %}
        {% for post in rposts %}
        <li>
            <article class="recent-post" itemscope itemtype="http://schema.org/Article">
                <header class="recent-post-header">
                    <h3 class="recent-post-title"><a href="{{ url_for(post.path) }}" itempro="name">{{ post.title }}</a></h3>
                    <time class="published" datetime="{{ date_xml(post.date) }}" itempro="datePublished">{{ date(post.date) }}</time>
                </header>
                <a href="{{ url_for(post.path) }}" class="image recent-post-cover" title="{{ post.title }}" style="background-image:url({{ post_img(post.cover|default(theme.post.cover)) }})"></a>
            </article>
        </li>
        {% endfor %}
    </ul>
</section>
{% endif %}
