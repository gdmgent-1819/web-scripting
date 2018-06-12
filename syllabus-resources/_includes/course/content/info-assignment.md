{%- assign syllabus = site.data.shared.syllabi | where: 'id', site.syllabus-id | first %}
{%- assign author-owner = site.data.shared.authors | where: 'id', syllabus.authors[0] | first %}
{%- assign authors-count = syllabus.authors | size %}

| {{ syllabus.title.short }} | Informatie                       |
|---------------------------:|----------------------------------|
|        Opleidingsonderdeel | **{{ syllabus.title.long }}**    |
|               Academiejaar | **{{ syllabus.academic-year }}** |
|----------------------------|----------------------------------|
|   Verantwoordelijke docent | **{{ author-owner.name.full }}** |
{%- if authors-count > 1 %}
    {%- if authors-count > 2 %}
        {%- assign author-assistant-label = 'Overige docenten' -%}
    {%- else %}
        {%- assign author-assistant-label = 'Docent' -%}
    {%- endif %}
| {{ author-assistant-label}} | {%- for author in syllabus.authors -%}
    {%- assign author-assistant = site.data.shared.authors | where: 'id', author | first -%}
    {%- if author-assistant == author-owner -%}
        {%- continue -%}
    {%- endif -%}
        **{{ author-assistant.name.short }}**<br>
    {%- endfor -%}                                              |
{%- endif %}
|----------------------------|----------------------------------|
{%- if include.title %}
|                      Titel | **{{ include.title }}**          |
{%- endif %}
{%- if include.date %}
|             Datum briefing | **{{ include.date }}**           |
{%- endif %}
{:.table.table--primary}
