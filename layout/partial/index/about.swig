<div class="sec sec-about">
    <div class="sec-bg sec-bg1"></div>
    <div class="sec-bg sec-bg2"></div>
    <div class="container">
        <div class="sec-heading">
            <h2 class="sec-heading-main">{{ __('site.about_us') }}</h2>
            <p class="sec-heading-sub">{{ config.description }}</p>
        </div>
        <div class="sec-footer">
            <ul class="actions about-actions">
                <li><a href="{{ url_for('about/') }}" class="button">{{ __('button.learn_more') }}</a></li>
            </ul>
        </div>
    </div>
</div>
