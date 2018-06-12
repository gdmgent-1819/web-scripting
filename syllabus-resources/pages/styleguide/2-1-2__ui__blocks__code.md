---
layout   : course
permalink: styleguide/ui/blocks/code/
published: true
#
title: Code
hyperlinks:
  - csse
  - education
  - software
---
{%- include includes.md %}

> Zie ook
> ---
> - [Rouge](http://rouge.jneen.net)
>   - [List of supported languages and lexers](https://github.com/jneen/rouge/wiki/List-of-supported-languages-and-lexers)
> - [Jekyll Highlighter](https://github.com/jekyll/jekyll/blob/master/lib/jekyll/tags/highlight.rb)
{:.card.card-link}

{% comment %}
### [Apache HTTP Server][] (`apache`)
{% endcomment %}

[Batch](https://technet.microsoft.com/en-us/library/bb490869.aspx)
------------------------------------------------------------------
(`syCode`: `bat`)

Geen highlighting.

{% highlight bat linenos %}
{% include_relative _code/styleguide.bat %}
{% endhighlight %}{:data-file="styleguide.bat"}

[Blade][]
---------
(`syCode`: `blade`)

Geen highlighting.

{% highlight blade linenos %}{% raw %}
{!! !!}
@component('alert')
    @slot('title')
        {{ $Forbidden }}
    @endslot

    You are not allowed to access this resource!
@endcomponent
{% endraw %}{% endhighlight %}{:data-file="index.blade.php"}

Configuration
-------------
(`syCode`: `conf`)

{% highlight conf linenos %}
{% include_relative _code/styleguide.conf %}
{% endhighlight %}{:data-file="styleguide.conf"}

[C#][]
------
(`syCode`: `cs`)

{% highlight cs linenos %}
{% include_relative _code/styleguide.cs %}
{% endhighlight %}{:data-file="styleguide.cs"}

[CSS][]
-------
(`syCode`: `css`)

{% highlight css linenos %}
{% include_relative _code/styleguide.css %}
{% endhighlight %}{:data-file="styleguide.css"}

[Emmet][]
---------
(`syCode`: `emmet`)

Geen highlighting.

{% highlight emmet %}
html:xs
html:5
section>(article*5)>lipsum
{% endhighlight %}

[Gherkin][]
-----------
(`syCode`: `gherkin`)

{% highlight gherkin linenos %}
{% include_relative _code/styleguide.gherkin %}
{% endhighlight %}{:data-file="styleguide.gherkin"}

[HTML][]
--------
(`syCode`: `html`)

{% highlight html linenos %}
{% include_relative _code/styleguide.html %}
{% endhighlight %}{:data-file="styleguide.html"}

[Ini](https://technet.microsoft.com/en-us/library/cc731332.aspx)
----------------------------------------------------------------
(`syCode`: `ini`)

{% highlight ini linenos %}
{% include_relative _code/styleguide.ini %}
{% endhighlight %}{:data-file="styleguide.ini"}

[Inky][]
--------
(`syCode`: `inky`)

(Geen highlighting.)

{% highlight inky linenos %}
{% include_relative _code/styleguide.inky.html %}
{% endhighlight %}{:data-file="styleguide.inky.html"}

[JavaScript][ECMAScript]
------------------------
(`syCode`: `js`)

{% highlight js linenos %}
{% include_relative _code/styleguide.js %}
{% endhighlight %}{:data-file="styleguide.js"}

[JSON][]
--------
(`syCode`: `json`)

{% highlight json linenos %}
{% include_relative _code/styleguide.json %}
{% endhighlight %}{:data-file="styleguide.json"}

[Liquid][]
----------
(`syCode`: `liquid`)

{% highlight liquid linenos %}{% raw %}
{% comment %}
{{ content }}
{% endcomment %}
{% endraw %}{% endhighlight %}{:data-file=""}

[NGINX][]
---------
(`syCode`: `nginx`)

{% highlight nginx linenos %}
http {
    server {
    }
}
{% endhighlight %}{:data-file="nginx.conf"}

[Markdown][]
------------
(`syCode`: `md`)

{% highlight md linenos %}
{% include_relative _code/styleguide.md %}
{% endhighlight %}{:data-file="styleguide.md"}

[PHP][]
-------
(`syCode`: `php`)

{% highlight php linenos %}
{% include_relative _code/styleguide.php %}
{% endhighlight %}{:data-file="styleguide.php"}

{% highlight php %}
phpinfo();
echo 'x';
{% endhighlight %}

[Python][]
-------
(`syCode`: `py`)

{% highlight py linenos %}
{% include_relative _code/styleguide.py %}
{% endhighlight %}{:data-file="styleguide.py"}

[Ruby][]
--------
(`syCode`: `rb`)

{% highlight rb linenos %}
{% include_relative _code/styleguide.rb %}
{% endhighlight %}{:data-file="styleguide.rb"}

[SCSS][]
--------
(`syCode`: `scss`)

{% highlight scss linenos %}
{% include_relative _code/styleguide.scss %}
{% endhighlight %}{:data-file="styleguide.scss"}

Shell Script
------------
(`syCode`: `sh`)

{% highlight sh linenos %}
{% include_relative _code/styleguide.sh %}
{% endhighlight %}{:data-file="styleguide.sh"}

[SQL][]
-------
(`syCode`: `sql`)

{% highlight sql linenos %}
{% include_relative _code/styleguide.sql %}
{% endhighlight %}{:data-file="styleguide.sql"}

[Swift][]
---------
(`syCode`: `swift`)

{% highlight swift linenos %}
{% include_relative _code/styleguide.swift %}
{% endhighlight %}{:data-file="styleguide.swift"}

[TypeScript][]
--------------
(`syCode`: `ts`)

{% highlight ts linenos %}
{% include_relative _code/styleguide.ts %}
{% endhighlight %}{:data-file="styleguide.ts"}

[Twig][]
--------
(`syCode`: `twig`)

{% highlight twig linenos %}{% raw %}
{% extends "layout.html" %}
{% block body %}
  <ul>
  {% for user in users %}
    <li><a href="{{ user.url }}">{{ user.username }}</a></li>
  {% endfor %}
  </ul>
{% endblock %}
{% endraw %}{% endhighlight %}{:data-file="index.twig.php"}

[Vue][]
-------
(`syCode`: `vue`)

{% highlight vue linenos %}
{% include_relative _code/styleguide.vue %}
{% endhighlight %}{:data-file="styleguide.vue"}

[XML][]
-------
(`syCode`: `xml`)

{% highlight xml linenos %}
{% include_relative _code/styleguide.xml %}
{% endhighlight %}{:data-file="styleguide.xml"}

[YAML][]
--------
(`syCode`: `yml`)

{% highlight yml linenos %}
{% include_relative _code/styleguide.yaml %}
{% endhighlight %}{:data-file="styleguide.yaml"}