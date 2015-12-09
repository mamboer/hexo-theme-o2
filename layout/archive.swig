{% extends '_layout.swig' %}

{% block title %} {{ __('menu.archive') }} | {{ config.title }} {% endblock %}
{% block page_class %} page-archive {% endblock %}

{% block main %}

{% include 'partial/index/banner.swig' %}

{% include 'partial/archive/main.swig' %}

{% include 'partial/footer.swig' %}

{% endblock %}
