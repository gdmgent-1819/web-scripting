---
title: AJAX
title_long: Asynchroon JavaScript XML
permalink: javascript/ajax/
---

Een veel toegepaste techniek in websites en andere applicaties is om data te verkrijgen van een server, meestal via een API, om bepaalde secties te updaten zonder dat heel de pagina moet herladen worden. Deze aanpak heeft een positieve invloed op de performantie en het gedrag van applicaties. Via [XMLHttpRequest]() en de [Fetch API]() kunnen we dit concept realiseren.


ZOnder deze techniekOriginally page loading on the web was simple — you'd send a request for a web site to a server, and as long as nothing went wrong, the assets that made the web page would be downloaded and displayed on your computer.

A basic representation of a web site architecture

The trouble with this model is that whenever you want to update any part of the page, for example to display a new set of products or load a new page, you've got to load the entire page again. This is extremely wasteful and results in a poor user experience, especially as pages get larger and more complex.