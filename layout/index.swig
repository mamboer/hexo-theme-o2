{% extends '_layout.swig' %}

{% block page_class %}page-home{% endblock %}

{% block main %}

{% include 'partial/index/banner.swig' %}
{% include 'partial/index/cases.swig' %}
{% include 'partial/index/posts.swig' %}
{% include 'partial/index/about.swig' %}
{% include 'partial/index/follow.swig' %}
{% include 'partial/footer.swig' %}

{% endblock %}
