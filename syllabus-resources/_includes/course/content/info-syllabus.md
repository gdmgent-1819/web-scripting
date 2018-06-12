{%- assign syllabus = site.data.shared.syllabi | where: 'id', site.syllabus-id | first %}
{%- assign institute = site.data.shared.institutes | where: 'id', syllabus.programme.institute | first %}
{%- assign department = institute.departments | where: 'id', syllabus.programme.department | first %}
{%- assign domain-group = institute.domain-groups | where: 'id', syllabus.domain-groups | first %}
{%- assign author-owner = site.data.shared.authors | where: 'id', syllabus.authors[0] | first %}
{%- assign authors-count = syllabus.authors | size %}

| {{ syllabus.title.short }} | Informatie                                       |
|---------------------------:|--------------------------------------------------|
| {%- case syllabus.type -%}
    {%- when 'DOM' -%}
        Domeingroep
    {%- when 'MODULE' -%}
        Module
    {%- when 'OLOD' -%}
        Opleidingsonderdeel
    {%- else -%}
{%- endcase -%}              | **{{ syllabus.title.long }}**                    |
{%- if syllabus.domain-group %}
    {%- assign domain-group = institute.domain-groups | where: 'id', syllabus.domain-group | first %}
|                Domeingroep | **{{ domain-group.name | map: syllabus.lang }}** |
{%- endif %}
|               Academiejaar | **{{ syllabus.academic-year }}**                 |
|----------------------------|--------------------------------------------------|
|   Verantwoordelijke docent | **{{ author-owner.name.full }}**                 |
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
        {%- endfor -%}                                                           |
{%- endif %}
|----------------------------|--------------------------------------------------|
|        Onderwijsinstelling | **{{ institute.name | map: syllabus.lang }}**    |
|                  Opleiding | **{{ department.name | map: syllabus.lang }}**   |
{%- if syllabus.programme.major %}
    {%- assign major = institute.majors | where: 'id', syllabus.programme.major | first %}
|          Afstudeerrichting | **{{ major.name | map: syllabus.lang }}**        |
{%- endif %}
{%- if syllabus.programme.minor %}
    {%- assign minor = institute.minors | where: 'id', syllabus.programme.minor | first %}
|                 Keuzeoptie | **{{ minor.name | map: syllabus.lang }}**        |
{%- endif %}
{%- if syllabus.programme.semester %}
|                   Semester | **{{ syllabus.programme.semester }}**            |
{%- endif %}
{:.table.table--primary}
