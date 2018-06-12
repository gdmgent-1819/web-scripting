{%- assign competences = syllabus.competences.start %}
Dit opleidingsonderdeel bouwt verder op:

{%- for competence in competences %}
    {%- if competence[1] %}
 - [{{ competence[0] }}]({{ competence[1] | absolute_url }})
    {%- else %}
 - {{ competence }}
    {%- endif %}
{%- endfor %}
