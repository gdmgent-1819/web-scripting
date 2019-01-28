---
title: Syntaxis
title_long: Syntaxis
permalink: javascript/syntaxis/
---

Inleiding
---------

De JS-syntax is een combinatie van de syntax uit Java- en C-talen. JS in ES5 bevat geen klassen, we gebruiken hiervoor object-prototypen. In JS zijn functions of methoden ook objecten! JS-statements zijn commando’s naar de webbrowser, ze vertellen wat de webbrowser moet doen. JS-code is een sequentie van statements, uitgevoerd door de webbrowser in een welbepaalde volgorde. Statements worden steeds gescheiden door een puntkomma (semi-colon `;`).

Code blocks bevatten gegroepeerde statements, die samen uitgevoerd zullen worden. Een code block start met een linker accolade (left curly bracket `{`) en eindigt met een rechter accolade `}`. Functies zijn de meest gekende code blokken. Het identificeren van keywords, variabelen, eigenschappen en labels moet gebeuren via een unieke naam. Deze namen fungeren als unieke identifiers. Een identifier moet starten met een letter, underscore (_) of een dollar teken $. De karakters hierna kunnen ook een getal zijn.

[Gereserveerde identifiers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Reserved_Words) (keywords) kunnen niet als eigen identifier gebruikt worden. Identifiers zijn **hoofdlettergevoelig (case sensitive)**, bv.: `myCat` is niet hetzelfde als `MyCat`. Extra witruimte (white space) wordt genegeerd door JavaScript, maar maakt de code leesbaarder. Tekst in een string kan onderbroken worden naar een volgende regel met een backslash `\`. [Unicode character set](http://www.w3schools.com/charsets/ref_html_utf8.asp) (karakters, leestekens en symbolen) wordt gehanteerd.
