<div class="sec sec-cases">
    <div class="container">
        <div class="sec-heading">
            <h2 class="sec-heading-main">凹凸服务/产品</h2>
            <p class="sec-heading-sub">秉持面向开放的思想，凹凸实验室参与设计及开发的一系列产品、工具、教程、APP、服务方案，欢迎拍砖散花。</p>
        </div>
    </div>
    <div class="container">
        <div class="cases clearfix">
            {% set items = _.take(_.sortBy(site.data['cases'], 'name'), 8) %}
            {% for item in items %}
            {{ partial('partial/case/item.swig', {item: item}) }}
            {% endfor %}
        </div>
    </div>
</div>
