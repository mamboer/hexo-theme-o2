<div class="navbar navbar-fixed-top header" itemscope itemtype="http://schema.org/WPHeader">
    <div class="container">
        <div class="navbar-header">
            <a href="{{ url_for('index.html') }}" title="{{ config.title }}" class="navbar-brand">
                <img src="{{ url_for(config.logo_url|default(theme.logo.url)) }}" alt="{{ config.title }}"/>
            </a>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
            <ul class="nav navbar-nav header-links">
                {{ header_menu('main-nav') }}
            </ul>
            <ul class="nav navbar-nav navbar-right header-links header-links-extra">
                <li class="search-wrap">
                    <a class="fa fa-search search-icon" href="#search" title="{{ __('menu.search') }}"></a>
                    <form id="search" method="get" class="search-form">
                        <input type="text" name="query" placeholder="{{ __('menu.search') }}" />
                    </form>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="javascript:;" id="themes" aria-expanded="false">{{ __('menu.themes') }}<span class="caret"></span></a>
                    <ul class="dropdown-menu" aria-labelledby="themes">
                        <li><a href="javascript:;">{{ __('site.theme_light') }}</a></li>
                        <li><a href="javascript:;">{{ __('site.theme_dark') }}</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
