---
title: JavaScript
title_long: JavaScript
permalink: javascript/
---



Wat is JavaScript?
------------------

JavaScript is een van de meest veelzijdige programmeertalen die er zijn. Het wordt gebruikt voor:

 - Serverapplicaties
 - Desktopapplicaties
 - Webapplicaties
 - CLI-applicaties
 - Scriptingtaal voor automatisatie van applicaties.

In deze cursus gaan we JavaScript gebruiken zoals het oorspronkelijk bedoeld was, nl. om interactiviteit toe te voegen en de DOM te manipuleren.

> Opgelet
> ---
> JavaScript en Java zijn twee verschillende programmeertalen die enkel de naam  en een oppervlakkige gelijkenis in syntaxis gemeen hebben.
{:.card.card-warning}

JavaScript Toevoegen
--------------------

Je kan JavaScript toevoegen als:

 - scriptblok
 - extern bestand

> Opgelet
> ---
> Je mag beide methodes van toevoegen niet mengen!
{:.card.card-warning}

### Scriptblok

{% highlight html %}
<script>
document.write('Hallo, Wereld!');
</script>
{% endhighlight %}

### Extern bestand

{% highlight html %}
<script src="assets/js/app.js"></script>
{% endhighlight %}

> Opmerkingen
> ---
> - JavaScript wordt uitgevoerd op de plaats waar het toegevoegd is.
> - In HTML5 is een `<script>`{:.e}-element standaard van het type `text/javascript`{:.k}. Je hoeft dus geen `type`{:.a}-attribuut toe te voegen.
{:.card.card-remark}
