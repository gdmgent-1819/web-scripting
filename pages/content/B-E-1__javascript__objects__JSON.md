---
title: JSON
title_long: JavaScript Object Notation
permalink: javascript/objects/json/
---

Inleiding
---------

[JSON](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON) staat voor **JavaScript Object Notation** en wordt uitgesproken als "Jason". Het werd voor het eerst gespecificeerd door [Douglas Crockford](https://en.wikipedia.org/wiki/Douglas_Crockford), daarna door [RFC 7159](https://tools.ietf.org/html/rfc7159) en [ECMA-404](https://www.ecma-international.org/publications/standards/Ecma-404.htm). Een JSON-bestand is leesbare tekst om dataobjecten te versturen bestaande uit **key(attribute)/value pairs**. Het wordt tegenwoordig gebruikt als alternatief voor XML. Het is gelijkaardig met de **Literal notation** van een object in JavaScript.

{% highlight json %}
{
	key1:value1,
	key2:value2,
	*¦
}
{% endhighlight %}

JSON is een **taal-onafhankelijk** **tekstformaat** waardoor het door bijna alle programmeertalen kan gelezen en gegenereerd worden. Het is ideaal om te gebruiken als uitwisselingstaal (data-interchange) tussen verschillende systemen. JSON-bestanden zijn herkenbaar door de extensie: .json. Het mediatype van een JSON bestand is `application/json`. Indien we het JSON-bestand inladen m.b.v. een "callback-functie", dan is het mediatype hiervan `application/javascript`.

JSON-syntax
-----------

JSON bevat de volgende vorm:

- Een object is een ongeordende lijst van **key/value** paren en begint met een `{` en eindigt met een `}`
- Elke **key** wordt gevolgd door een `:` (dubbelpunt)
- De paren worden gescheiden door een `,` (comma)
- Een **key** is altijd een string en begint met een `"` en eindigt met een `"`
- De **value** kan de volgende **datatypen** bevatten: **string, number, object, array, boolean of null**

Een **Number** datatype is een positief- of negatief decimaal getal met een dubbele-precisie floating-point formaat (maximaal 9 digits). De exponentiële `E` notatie (`e, e+, e-, E, E+, E-`) wordt ook toegelaten. De waarde 1.51E-6 komt overeen met de waarde 0.00000151. 

{% highlight json %}
{
	"stock" : -1.659,
	"speed" : 1.51E-6
}
{% endhighlight %}

Een **Boolean** datatype bevat de waarde `true` of `false`.

{% highlight json %}
"isFemale" : true
{% endhighlight %}

Een **Null** datatype vertegenwoordigt een lege waarde en bevat `null` als waarde.

{% highlight json %}
{
	"data" : null
}
{% endhighlight %}

Een **Array** datatype is een geordende lijst van waarden. Een Array kan `0 tot n` waarden bevatten. Een Array begint altijd met `[` en eindigt met een `]`. De waarden binnen een Array worden gescheiden door een comma `,`. Mogelijke datatypen voor een waarde binnen een array: string, number, boolean, array, object of null.

{% highlight json %}
{
  "names" : ["Linus", "Bill", "Steve"]
}
{% endhighlight %}

Een **Object** datatype is een ongeordende associatieve array. Een associatieve array bevat "key/value" paren. Een object wordt omsloten door een `{` en `}` (curly brackets).

{% highlight json %}
{
	"address": {
		"street": "Industrieweg 232",
		"city": "Mariakerke",
		"country": "Belgium",
		"postalCode": "9000"
	}
}
{% endhighlight %}

Als voorbeeld declareren we een persoon via JSON. Een persoon heeft een voornaam, familienaam, lengte, gewicht, geslacht, thuisadres en een werkadres.

{% highlight json %}
{
    "firstName":"Philippe",
    "lastName":"De Pauw",
    "height":1.72,
    "weight":65.3,
    "isFemale":false,
    "addresses":[
        {
            "type":"company",
            "street": "Industrieweg 232",
            "city": "Mariakerke",
            "country": "Belgium",
            "postalCode": "9030"
        },
        {
            "type":"home",
            "street": "Akkerstraat 7",
            "city": "Gent",
            "country": "Belgium",
            "postalCode": "9000"
        }
    ]
}
{% endhighlight %}

JSON-object
-----------

Het JSON-object bevat methoden om JSON-bestanden of JSON-strings te parsen en om een JSON-object te converteren naar een string. Het bevat geen constructor.

> References
> ---
> - [Mozilla Developer Network: JSON object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON)
> - [ECMA 262: JSON object](https://www.ecma-international.org/ecma-262/5.1/#sec-15.12)
{:.card.card-source}

Methoden:

- `JSON.parse(een string)`: JSON-object genereren van een bestaande string.
- `JSON.stringify(een json-object)`: string genereren van een bestaand JSON-object.

{% highlight json %}
const person = `{
	"firstName": "Philippe",
	"lastName": "De Pauw - Waterschoot"
}`;
const personObj = JSON.parse(person);
console.log(`${personObj.firstName} ${personObj.lastName}`); // output: Philippe De Pauw - Waterschoot
{% endhighlight %}

Tijdens de conversie van een string naar een JSON-object kunner er fouten optreden, waaronder "Unexpected token". Om deze conversiefouten op te vangen kunnen we deze best omsluiten door een `try`/`catch`/`finally` block.

const person = `{
	firstName: "Philippe",
	lastName": "De Pauw"
}`;

{% highlight json %}
try {
	const personObj = JSON.parse(person);
	console.log(`${personObj.firstName} ${personObj.lastName}`);
} catch(ex) {
	console.log(`We have an error: ${ex.message}`);
} finally {
	console.log('Continue application');
}
{% endhighlight %}


JSON validatie
--------------

Om JSON te valideren kunnen we dit realiseren o.a. via online services, zoals:

> References
> ---
> - [Mozilla Developer Network: JSON object](http://jsonlint.com/)
> - [Curious Concept JSON formatter](http://jsonformatter.curiousconcept.com/)
> - [Freeformatter JSON validator](http://www.freeformatter.com/json-validator.html)
> - [JSON Schema Validator](https://json-schema-validator.herokuapp.com/) (inclusief JSON Schema)
{:.card.card-source}


![JSON formatter](http://www.arteveldehogeschool.be/campusGDM/wanm/1617_nmdad1/json_2.PNG)

Naast het gebruik van deze online services kunnen we natuurlijk JSON nakijken of deze goed opgebouwd (well-formedness) is via JavaScript.

{% highlight js %}
function IsJSONStringWellformed(strJSON){
    try{
        var o = JSON.parse(strJSON);
        if (o && typeof o === "object" && o !== null) {
            return true;
        } 
        return false;
    }
    catch(e){
    }
    return false;
}

var jsonString = '{"firstName":Philippe","lastName":"De Pauw"}';
console.log(IsJSONStringWellformed(jsonString));
{% endhighlight %}

Via de statische methode `parse(bepaalde string)` uit de klasse `JSON` kunnen we een JSON-string converteren naar een JSON-object. De bovenstaande code geeft in het console-venster de waarde `false`, omdat de waarde `Philippe"` een dubbele aanhalingsteken `"` ontbreekt. De juiste waarde moet dus zijn: `"Philippe"`.

De code van hierboven kunnen we nog korter schrijven door gebruik te maken van een reguliere expressie. We kunnen ook de globale functie `eval(bepaalde string)` als alternatief voor `JSON.parse(bepaalde string)`, bij voorkeur de laatste methode gebruiken.

{% highlight js %}
function IsJSONStringWellformed(strJSON){
    var isSyntaxOk = !(/[^,:{}\[\]0-9.\-+Eaeflnr-u \n\r\t]/.test(strJSON.replace(/"(\\.|[^"\\])*"/g, '')));
    if(isSyntaxOk){
        var o = JSON.parse(strJSON);
        if (o && typeof o === "object" && o !== null) {
            return true;
        } 
    }
    return false;
}

var jsonString = '{"firstName":Philippe","lastName":"De Pauw"}';
console.log(IsJSONStringWellformed(jsonString));
{% endhighlight %}

Om JSON effectief te valideren moeten we gebruik maken van JSON Schema. Dit is gelijkaardig met DTD en XMLSchema om XML documenten te valideren. JSON Schema beschrijft dus een bepaald JSON dataformaat. JSON Schema is op zichzelf ook JSON. Het geeft ook een complete structurele validatie.

{% highlight json %}
{
	"type":"object",
	"$schema": "http://json-schema.org/draft-03/schema",
	"id": "http://jsonschema.net",
	"required":false,
	"properties":{
		"addresses": {
			"type":"array",
			"id": "http://jsonschema.net/addresses",
			"required":false,
			"items":
				{
					"type":"object",
					"id": "http://jsonschema.net/addresses/0",
					"required":false,
					"properties":{
						"city": {
							"type":"string",
							"id": "http://jsonschema.net/addresses/0/city",
							"required":true
						},
						"country": {
							"type":"string",
							"id": "http://jsonschema.net/addresses/0/country",
							"required":true
						},
						"postalCode": {
							"type":"string",
							"id": "http://jsonschema.net/addresses/0/postalCode",
							"required":false
						},
						"street": {
							"type":"string",
							"id": "http://jsonschema.net/addresses/0/street",
							"required":true
						},
						"type": {
							"type":"string",
							"id": "http://jsonschema.net/addresses/0/type",
							"required":false
						}
					}
				}
			

		},
		"firstName": {
			"type":"string",
			"id": "http://jsonschema.net/firstName",
			"required":true
		},
		"height": {
			"type":"number",
			"id": "http://jsonschema.net/height",
			"required":true
		},
		"isFemale": {
			"type":"boolean",
			"id": "http://jsonschema.net/isFemale",
			"required":true
		},
		"lastName": {
			"type":"string",
			"id": "http://jsonschema.net/lastName",
			"required":false
		},
		"weight": {
			"type":"number",
			"id": "http://jsonschema.net/weight",
			"required":false
		}
	}
}
{% endhighlight %}

> JSON validatie m.b.v. JSON Schema via https://json-schema-validator.herokuapp.com/
>![JSON Schema](http://www.arteveldehogeschool.be/campusGDM/wanm/1617_nmdad1/json_3.PNG)
>

JSON-P
------

JSONP of JSON-P staat voor JSON met padding. Het is een manier om data te halen uit een ander domein zonder de CORS-regels toe te passen. CORS (Cross Origin Resource Sharing) is een verzameling van regels om data tussen websites te versturen die een verschillend domein hebben. JSONP werd ontwikkeld om data te kunnen verkrijgen uit een verschillend domein. Aanmaak, wijzigen of verwijderen van data wordt door JSONP niet ondersteund.

{% highlight json %}
Aanvraag URL:
http://www.abc.com/data.json?callback=de
{% endhighlight %}

De URL om JSON te verkrijgen wordt aangevuld met een query parameter `callback`. Deze parameter bevat als waarde de naam van de functie die uitgevoerd moet worden wanneer de server data terugstuurt.

{% highlight json %}
JSONP response:

de({
	"firstName":"Philippe",
	"surName":"De Pauw"
});
{% endhighlight %}

Via het XMLHttpRequest object kunnen we geen JSONP aanvragen uitvoeren. JSONP kunnen we enkel laden via `<script>`-tag of via externe bibliotheken, zoals jQuery, AngularJS, ... .

{% highlight js %}
function loadJSONP(url){

  var script = document.createElement('script');
  script.src = url;
  
  script.onload = function () {
    this.remove();
  };//After scripts is loaded and executed, remoe it from the DOM 
  
  var head = document.getElementsByTagName('head')[0];
  head.insertBefore(script);//Insert script into the DOM
}

function processJSONP(data){
  var channel = data.query.results.channel;
  document.querySelector('.weather').innerHTML = 
    'The temperature in ' + 
    channel.location.city + ', ' +
    channel.location.country + ' is ' +
    channel.item.condition.temp + '&deg; ' + 
    channel.units.temperature;
}

var url = 'https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%3D12591774&format=json&diagnostics=true&callback=processJSONP';
loadJSONP(url);
{% endhighlight %}

In de functie `loadJSONP(url)` generen we een `<script>` dynamisch waarvan de waarde van het `src`-attribuut gelijk is aan de waarde van de opgegeven URL.  Door injectie van dit script in de DOM zal de URL ingeladen worden. De callback functie `processJSONP(data)` zal vervolgens uitgevoerd worden wanneer we data ontvangen. In deze functie doorlopen we het JSON-object en genereren we HTML-inhoud in de container `.weather`.

JSON-LD
-------

> References
> ---
> - [JSON for Linking Data](https://json-ld.org/)
> - [W3C: JSON-LD](https://www.w3.org/TR/json-ld/)
{:.card.card-source}

BSON
----

> References
> ---
> - [BSON specificatie](http://bsonspec.org/)
{:.card.card-source}