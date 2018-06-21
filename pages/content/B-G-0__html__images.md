---
title: Afbeeldingen
title_long: Afbeeldingen
permalink: html/images/
abbreviations:
  - computer
  - education
---

{%- include includes.md %}

De meeste mensen geven de voorkeur aan afbeeldingen in vergelijking met tekst. Een website zonder afbeeldingen wordt door de meeste mensen ervaren als saai ook als is het een attractief design. Het lezen van veel tekst vraagt van de gebruiker tijd en moeite. Afbeeldingen zijn innemend en kunnen allerlei soorten van emoties en herinneringen triggeren. Ze kunnen ook beter gememorizeerd en gedeeld worden dan tekst en doorbreekt beter een taalbarrière.

Er zijn meerdere redenen om afbeeldingen toe te voegen aan een webpagina:

De volgende markupelementen hebben te maken met afbeeldingen:

- Afbeeldingen
  - `<img>`{:.e}
  - `<figure>`{:.e}
  - `<figcaption>`{:.e}
  - `<picture>`{:.e}
  - `<source>`{:.e}
- Graphics
  - `<svg>`{:.e}
  - `<canvas>`{:.e}

`<img>`{:.e}-element
--------------------

Het `<img>`{:.e}-element wordt gebruikt om een afbeelding te plaatsen op een webpagina. Het bronbestand wordt opgegeven met een `src`{:.a}-attribuut *(Eng.: source).* We kunnen als waarde van dit attribuut de volgende waarden vermelden:

- **absolute koppeling**;
  - via `http`of `https`;
  - bv.: `http://www.gdm.gent/trots/assets/projects/fit-challenge/screen-designs-02.png` 
- **relatieve koppeling**;
  - betekent t.o.v. de plaats van het huidige webdocument;
  - bv.: `./assets/images/detail1_VanHoeckeJulie.png`;  
  `assets` staat op dezelfde plaats dan het webdocument. `images` is een submap van de map `assets`. Het bestand `detail1_VanHoeckeJulie.png` is ondergebracht in deze laatste map.
- **gegevens-URI**.  
Integratie van de echte gegevens van de afbeelding. Zonder koppeling gewoon de pure data. We vermelden het type, de tekenset *(Eng.: tekenset),* de codering *(Eng.: encoding)* en tenslotte de gecodeerde gegevens *(Eng.: encoded data).*

Naast het `src`{:.a}-attribuut bevat een afbeelding altijd het `alt`{:.a}-attribuut en meestal het `title`{:.a}-attribuut. Het `alt`{:.a}-attribuut is van belang wanneer de bron van de afbeelding niet geladen kan worden of voor slechtziende personen. Het `alt`{:.a}-attribuut staat voor **alternate text** of alternatieve tekst. Bij verkeerde bron wordt de waarde van dit attribuut getoond. Daarnaast is dit attribuut en ook de waarde ervan belangrijk voor slechtzienden. De waarde geeft een indicatie of synopsis van wat er te zien is op de afbeelding, maar niet in detail. De waarde van het `title`{:.a}-attribuut specifieert extra informatie over de afbeelding en wordt meestal visueel getoond in een tooltip.

{% highlight html %}
<img class="artist__image" src="https://nbocdn.akamaized.net/Assets/Images_Upload/2017/07/01/8e32e9fa-5dc8-11e7-aab3-014964ad3466_web_scale_0.0710227_0.0710227__.jpg?maxheight=513&maxwidth=767&scale=both" alt="Bazart: music group from Belgium" title="Bazart is een indie-popgroep uit België. De band maakt Nederlandstalige muziek.">
{% endhighlight %}

In het bovenstaande voorbeeld definiëren we een afbeelding via het `<img>`{:.e}-element, identificeren we deze via het `class`{:.a}-attribuut met een specifieke waarde `artist__image`{:.v}, vermelden we de bron van de afbeelding met als waarde een absolute url van het `src`{:.a}-attribuut, het `alt`{:.a}-attribuut en tenslotte het `title`{:.a}-attribuut. We merken op dat de waarde van het `title`{:.a}-attribuut extra toelichting geeft over de afbeelding.

`<figure>`{:.e}-element
-----------------------

Child-elementen:

 - `<img>`{:.e}
 - `<figcaption>`{:.e}

Het `<figure>`{:.e}-element wordt gebruikt om één of meerdere illustraties (afbeeldingen, video's, codeblokken, svg, canvas …) te omsluiten die op zichzelf kunnen bestaan ongeacht de inhoud die er rond staat. De gebruiker moet via dit element al voldoende weet over de inhoud van deze illustratie(s). Dit element groepeert gelijksoortige illustraties als een zelf voorziene eenheid. Dit betekent dat we dit element ook op andere plaatsen binnen een website kunnen plaatsen.

Het `<figure>`{:.e}-element bevat voor een afbeelding minimaal één a `<img>`{:.e}-element of `<picture>`{:.e}-element en wordt meestal aangevuld met maximaal één `<figcaption>`{:.e}-element.

{% highlight html %}
<figure>
  <img class="artist__image" src="https://nbocdn.akamaized.net/Assets/Images_Upload/2017/07/01/8e32e9fa-5dc8-11e7-aab3-014964ad3466_web_scale_0.0710227_0.0710227__.jpg?maxheight=513&maxwidth=767&scale=both" alt="Bazart: music group from Belgium" title="Bazart is een indie-popgroep uit België. De band maakt Nederlandstalige muziek.">
  <figcaption>
    Bazart is een indie-popgroep uit België. De band maakt Nederlandstalige muziek. Bazart werd opgericht door zanger Mathieu Terryn en zanger/gitarist Simon Nuytten. Naar eigen zeggen probeert de band kleinkunst in de Vlaamse betekenis populair te maken onder het Belgische publiek. Bazart werd genomineerd voor zeven MIA's in 2016 en verzilverde er vijf: "Hit van het jaar", "Beste Nederlandstalig", "Beste doorbraak", "Beste pop" en "Beste groep".
  </figcaption>
</figure>
{% endhighlight %}

In het bovenstaande voorbeeld hebben we een synopsis toegevoegd via het `<figcaption>`{:.e}-element omtrent de groep Bazart. Het `<figcaption>`{:.e}-element geeft een bijschrift over de illustratie(s). De inhoud hiervan geeft nog meer extra toelichting dan het `title`{:.a}-attribuut van het embedded `<img>`{:.e}-element. Sommige ontwikkelaars laten soms hierdoor het `title`{:.a}-attribuut achterwegen, ze zien dit als overbodig. 

Met het `<figure>`{:.e}-element wordt code semantisch beter gestructureerd. Het bakent een visuele asset met een bijschrijft af. Het `<figure>`{:.e}-element kan ook **middelen** *(Eng.: assets)* groeperen die hetzelfde bijschrift *(Eng.: caption)* bevatten, bv. een slideshow van afbeeldingen om een portfolio visueel te kaderen.

{% highlight html %}
<figure>
  <img class="artist__image" src="https://www.readdork.com/wp-content/uploads/2016/08/Mura-Masa_Reading-Festival-2016_750_SLB_-131-1500x1001.jpg" alt="Mura Masa: music group" title="Mura Masa is a Guernsey-born DJ, electronic music producer, songwriter and multi-instrumentalist.">
  <img class="artist__image" src="http://luminousdash.com/wp-content/uploads/2017/07/alt-j-press-photo-2017-big-hassle-billboard-1548.jpg" alt="Δ Alt-J: music group" title="Δ Alt-J, stylised as alt-J, are an English indie rock band formed in 2007 in Leeds.">
  <img class="artist__image" src="https://cae8b291f7a009bc3e401054-wceel7psqz6.netdna-ssl.com/wp-content/uploads/2016/12/Dua-Lipa.jpg" alt="Dua Lipa: singer and songwriter" title="Dua Lipa is an English singer, songwriter and model.">
  <img class="artist__image" src="https://nbocdn.akamaized.net/Assets/Images_Upload/2017/07/01/8e32e9fa-5dc8-11e7-aab3-014964ad3466_web_scale_0.0710227_0.0710227__.jpg?maxheight=513&maxwidth=767&scale=both" alt="Bazart: music group from Belgium" title="Bazart is een indie-popgroep uit België. De band maakt Nederlandstalige muziek.">
  <img class="artist__image" src="https://yt3.ggpht.com/-iuVk3r4UQTg/AAAAAAAAAAI/AAAAAAAAAAA/qAH5_KtJSW4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg" alt="Imagine Dragons: music group" title="Imagine Dragons is an American rock band from Las Vegas, Nevad.">
  <img class="artist__image" src="http://www.rockwerchter.be/frontend/files/artists/source/kings-of-leon.jpg" alt="Kings of leon: music group" title="Kings of Leon is an American rock band that formed in Nashville, Tennessee, in 1999.">
  <figcaption> 
    Line-up Rock Werchter on Saturday 07-10-1017.
  </figcaption>
</figure>
{% endhighlight %}

In het bovenstaande voorbeeld groeperen we artiesten en/of bands die spelen op dezelfde avond op een rockfestival. In het `<figcaption>`{:.e}-element maken we duidelijk wanneer deze artiesten spelen tijdens het festival. Het `<figure>`{:.e}-element kan dienst doen als slideshow of als een oplijsting van artiesten die spelen op deze specifieke dag.

Willen we nog uitgebreide toelichting geven aan iedere artiest in het bovenstaande voorbeeld, dan kunnen we iedere afbeelding omsluiten door een `<figure>`{:.e}-element met bijhorend `<figcaption>`{:.e}-element.

{% highlight html %}
<figure>
  <figure>
    <img class="artist__image" src="https://nbocdn.akamaized.net/Assets/Images_Upload/2017/07/01/8e32e9fa-5dc8-11e7-aab3-014964ad3466_web_scale_0.0710227_0.0710227__.jpg?maxheight=513&maxwidth=767&scale=both" alt="Bazart: music group from Belgium" title="Bazart is een indie-popgroep uit België. De band maakt Nederlandstalige muziek.">
    <figcaption>
      Bazart is een indie-popgroep uit België. De band maakt Nederlandstalige muziek. Bazart werd opgericht door zanger Mathieu Terryn en zanger/gitarist Simon Nuytten. Naar eigen zeggen probeert de band kleinkunst in de Vlaamse betekenis populair te maken onder het Belgische publiek. Bazart werd genomineerd voor zeven MIA's in 2016 en verzilverde er vijf: "Hit van het jaar", "Beste Nederlandstalig", "Beste doorbraak", "Beste pop" en "Beste groep".
    </figcaption>
  </figure>
  ...
  <figcaption> 
    Line-up Rock Werchter on Saturday 07-10-1017.
  </figcaption>
</figure>
{% endhighlight %}

`<picture>`{:.e}-element
------------------------

Het `<picture>`{:.e}-element wordt gebruikt om meerdere versies van een afbeelding aan te bieden. Afhankelijk van het display van een device wordt een bepaalde versie van de afbeelding geactiveerd.

> Zie ook
> ---
> - <https://www.sitepoint.com/quick-tip-the-right-way-to-use-figure-and-figcaption-elements/>
> - <https://developer.mozilla.org/nl/docs/Web/HTML/Element/figure>
> - <http://www.anysurfer.be/nl/blog/detail/html5-figure-en-figcaption>
> - <https://www.w3.org/WAI/tutorials/images/groups/>
{:.card.card-link}

{% comment %}
Bestandsformaten
----------------

| Formaat | Uitspraak   | Best geschikt voor                                               |
|---------|-------------|------------------------------------------------------------------|
| GIF     | Jif of Djif | Animaties                                                        |
| JPEG    | Jay-Peg     | Foto's                                                           |
| PNG     | Ping        | Illustraties met veel kleurherhaling of foto's met transparantie |
| SVG     | S-V-G       | Illustraties, iconen voor hoogresolutieschermen                  |


JPEG met wavelets

Speel met de kwaliteitsinstellingen om een goed compromis te vinden tussen bestandsgrootte en visuele kwaliteit.

> Tip
> ---
> De gemiddelde webpagina is 3 tot 4 mb groot met alle afbeeldingen inbegrepen. Probeer hieronder te blijven, tenzij er een heel goede reden voor is (bijv. website van een fotograaf met heel veel kwalitatieve foto's).
{:.card.card-tip}

{% endcomment %}