{% set o2posts = process_posts(site) %}
{% if o2posts.length %}
<section class="tiny-posts-wrap">
    <ul class="react-list tiny-posts">
        {% set rposts = o2posts.slice(0, theme.layout.feature_count) %}
        {% for post in rposts %}
        <li>
            <article class="tiny-post tiny-post-{{ loop.index }}" itemscope itemtype="http://schema.org/Article">
                <header class="tiny-post-header">
                    <h3 class="tiny-post-title"><a href="{{ url_for(post.path) }}" itempro="name">{{ post.title }}</a></h3>
                    <time class="published" datetime="{{ date_xml(post.date) }}" itempro="datePublished">{{ date(post.date) }}</time>
                </header>
                {% if post.cover %}
                <a href="{{ url_for(post.path) }}" class="image tiny-post-cover" title="{{ post.title }}" style="background-image:url({{ post_img(post.cover) }})"></a>
                {% endif %}
            </article>
        </li>
        {% endfor %}
    </ul>
</section>
{% endif %}

