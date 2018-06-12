{%- assign syllabus = site.data.shared.syllabi | where: 'id', site.syllabus-id | first %}
{%- case syllabus.type %}
    {%- when 'DOM' %}
        {%- assign type = 'de domeingroep' %}
    {%- when 'MODULE' %}
        {%- assign type = 'de module' %}
    {%- when 'OLOD' %}
        {%- assign type = 'het opleidingsonderdeel' %}
    {%- else %}
{%- endcase %}

Welkom op de digitale syllabus van {{ type }} **{{ syllabus.title.long }}**!

Deze syllabus bevat een introductie tot de te kennen werkwijze en technologieën, met daarnaast tips, koppelingen naar documentatie, artikelen en tutorials die je op weg helpen bij de zelfstudie. Het is zeker niet de bedoeling dat deze syllabus alle leerstof bevat, maar wel om je richting te geven bij zelfstudie.

Veel studieplezier tijdens deze boeiende ontdekkingstocht!

De docenten {{ syllabus.title.short }}.

<br>

> Practice is the best of all instructors.
>
> **Publilius Syrus** (Romeins schrijver en moralist)
{:.quote}