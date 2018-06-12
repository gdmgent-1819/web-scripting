De studieomvang bedraagt **{{ syllabus.workload.credits }} studiepunten**{:.badge.badge--{{ syllabus.color }}} volgens het [European Credit Transfer and Accumulation System][ECTS].

{%- if workload.weekly-study-commitment %}
> Tip
> ---
> Concreet wordt van elke student verwacht dat hij/zij **minstens {{ syllabus.workload.weekly-study-commitment[0] }} per week** aan dit OLOD besteedt.
{:.card.card-tip}
{%- endif %}

{%- if workload.assignment-commitment %}
> Tip
> ---
> Concreet wordt van elke student verwacht dat hij/zij **individueel minstens {{ syllabus.workload.assignment-commitment[0] }}** aan deze opdracht besteedt.  
> Dit is vergelijkbaar met **{{ syllabus.workload.assignment-commitment[1] }} fulltime** werken.
{:.card.card-tip}
{%- endif %}

| Activiteit    |            Uur  |
|:--------------|----------------:|
{%- assign total = 0 %}
{%- for to-do in syllabus.workload.breakdown %}
    {%- for item in to-do %}
| {{ item[0] }} | {{ item[1] }}   |
    {%- assign total = total | plus: item[1] %}
    {%- endfor %}
{%- endfor %}
|===============|=================|
| **Totaal**    | **{{ total }}** |
{:.table.table--primary}

{% include course/content/info-workload-pie-chart.html %}