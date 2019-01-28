---
title: Objects
title_long: Objects
permalink: javascript/objects/
---

Objectgebaseerd
---------------

JavaSript werkt met objecten. Een object kan eigenschappen en methodes hebben.

{% highlight js %}
document.write('Hallo, Wereld!')
{% endhighlight %}

| Onderdeel               | Verklaring                                             |
|-------------------------|--------------------------------------------------------|
| `document`{:.k.d}       | Een **object** die het document voorstelt.             |
| `.`                     | Een **operator**, nl. de *member operator.*            |
| `write()`{:.f}          | Een **methode**.                                       |
| `'Hallo, Wereld!'`{:.v} | Een *string literal* als **argument** voor de methode. |
{:.table.table--primary}

{% highlight js %}
document.write('Hallo, Wereld!')
{% endhighlight %}

Het `document`{:.k}-object heeft een aantal methodes:

  - `write()`{:.f}  
    schrijft een stukje tekst.
  - `createElement()`{:.f}  
    maakt een nieuw HTML-element.
  - `getElementById()`{:.f}  
    spreekt een bepaald element met een specifieke ID aan.
  - …

Dit stukje HTML:

{% highlight html %}
<p id="mijn-tekst">Lorem ipsum sid dolor amet.</p>
{% endhighlight %}

Kunnen we aanspreken met deze JavaScript-code:

{% highlight js %}
document.getElementById('mijn-tekst');
{% endhighlight %}

Bovenstaande code geeft een nieuw **object** terug dat bepaalde **property**'s *(Ned.: eigenschap)* heeft.

We kunnen er dan bijvoorbeeld de stijleigenschappen zoals de achtergrondkleur van veranderen.

{% highlight js %}
document.getElementById('mijn-tekst').style.backgroundColor = '#F00';
{% endhighlight %}