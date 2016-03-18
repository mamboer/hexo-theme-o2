<div class="sec sec-follow-lite">
    <div class="container">
        <div class="sec-heading">
            <p class="follow-pic"><img src="{{ url_for('img/qrcode.png') }}" alt="{{ __('site.follow_us') }}"/></p>
            <p class="follow-desc">{{ config.wechat.desc|default(theme.wechat.desc) }}</p>
            <p class="sec-heading-sub follow-acount">
                <img class="follow-icon" src="{{ url_for('img/logo-circle-120.png') }}" alt="AOTULabs"/> 微信号：AOTULabs
            </p>
        </div>
    </div>
</div>
