{%- assign competences = syllabus.competences.end %}

{%- for competence in competences %}
    {%- assign c = site.data.shared.competences | where: 'id', competence[0] | first %}
**{{ competence[0] }}**{:.badge.badge--primary} *{{ competence[1] }}*{:.badge.badge--default}
: {{ c.description }}
{% endfor %}
