{%- for abbreviation in page.abbreviations %}
    {%- assign uri = abbreviation | prepend: 'abbreviations/' | append: '.md' %}
    {%- include {{ uri }} %}
{%- endfor %}
{%- for hyperlink in page.hyperlinks %}
    {%- assign uri = hyperlink | prepend: 'hyperlinks/' | append: '.md' %}
    {%- include {{ uri }} %}
{%- endfor %}
{%- for local in page.locals %}
    {%- assign uri = local | prepend: '_includes/' | append: '.md' %}
    {%- include_relative {{ uri }} %}
{%- endfor %}
{%- for shorthand in page.shorthands %}
    {%- assign uri = shorthand | prepend: 'shorthands/' | append: '.md' %}
    {%- include {{ uri }} %}
{%- endfor %}
