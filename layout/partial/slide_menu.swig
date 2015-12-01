<section id="menu" class="slide-menu">

    <!-- Search -->
    <section>
        <form class="search search-form" method="get">
            <input type="text" name="query" placeholder="{{ __('menu.search') }}" />
        </form>
    </section>

    <section>
        <ul class="links sm-links-aotu">
        {{ header_menu('main-nav') }}
        </ul>
    </section>
    <!-- Links -->
    <section>
        <ul class="links">
            {% for item in site.data.links %}
            <li>
                <a href="{{ item.link }}">
                    <h3>{{ item.name }}</h3>
                    <p>{{ item.desc }}</p>
                </a>
            </li>
            {% endfor %}
        </ul>
    </section>

    <!-- Actions -->
    <section>
        <ul class="actions vertical">
            <li><a href="javascript:;" class="button big fit" data-dark="{{ __('site.theme_dark') }}" data-light="{{ __('site.theme_light') }}" id="themeSwitcher"><i class="fa fa-paint-brush"></i><span class="theme-title" id="themeTitle">{{__('site.theme_dark')}}</span></a></li>
        </ul>
    </section>
</section>
