<!-- Post -->
{% if post.sticky %}
{% set postCls = " post-sticky" %}
{% else %}
{% set postCls = "" %}
{% endif %}
<article class="feature-post feature-post-{{ idx }}{{ postCls }}" itemscope itemtype="http://schema.org/Article">
    <header class="feature-post-header">
        <div class="feature-post-title">
            <h2 itemprop="name headline"><a href="{{ url_for(post.path) }}" itemprop="url" title="{{ post.title }}">{{ post.title }}</a></h2>
            <ul class="feature-post-stats">
                {% if post.tags and post.tags.length %}
                {% for tag in post.tags %}
                <li><a href='{{ url_for(tag.path) }}' class='meta-tag' rel="tag">{{ tag.name }}</a></li>
                {% endfor %} 
                {% endif %}
                <li title="{{ __("post.word_count") }}"><span class="icon fa-font" itemprop="wordCount">{{ wordcount(post.content) }}</span></li>
            </ul>   
            {% if post.subtitle %}
            <div itemprop="description" class="feature-post-desc">{{ post.subtitle }}</div>
            {% endif %}
        </div>
        <div class="feature-post-meta">
            <time class="published" datetime="{{ date_xml(post.date) }}" itemprop="datePublished">{{ date(post.date) }}</time>
            <a target="_blank" href="https://github.com/{{ author.github_name }}" class="author"><span class="name">{{ author.nick|default(author.github_name) }}</span><img src="https://avatars.githubusercontent.com/{{ author.github_name }}?v=3&s=80" alt="{{ author.github_name }}" /></a>
        </div>
    </header>
    <a href="{{ url_for(post.path) }}" class="image featured feature-post-cover" itemscope itemtype="http://schema.org/ImageObject" itemprop="url"><img itemprop="contentUrl" src="{{ post_img( post.cover|default(theme.post.cover) ) }}" alt="{{ post.title }}" /></a>
    {% if post.excerpt %}
	<div itemprop="articleBody" class="feature-post-excerpt">{{ post.excerpt }}</div>
    {% endif %}
	<footer class="feature-post-footer">
        <ul class="actions">
            <li><a href="{{ url_for(post.path) }}" class="button big">{{ __('post.read_more') }}</a></li>
        </ul>
    </footer>
</article>
