---
title: Variabelen
title_long: Variabelen
permalink: javascript/variabelen/
---

Terminologie
------------

{% highlight js linenos %}
var a = 1
{% endhighlight %}

| # | Onderdeel | Benaming                     | Verklaring                             |
|--:|:---------:|------------------------------|----------------------------------------|
| 1 |   `var`   | **Keyword**                  | Keyword voor een variabele declaration |
| 1 |    `a`    | **Name** (of **Identifier**) | Naam van de variabele                  |
| 1 |    `=`    | **Operator**                 | Assignment operator                    |
| 1 |    `1`    | **Value**                    | Integer **Literal** (Value)            |
{:.table.table--primary}

Keyword `var` {{ badge-es5 }}
-------------

{% highlight js linenos %}
// Declaratie van de variabele met naam `a`.
var a; // Declaratie

// De waarde `1` toewijzen aan de variabele met naam `a`.
a = 1; // Toewijzing
{% endhighlight %}

{% highlight js linenos %}
// Declaratie van de variabele met naam `b`.
var b = 2; // Declaratie en toewijzing in één statement.
{% endhighlight %}

### Function Scope

{% highlight js linenos %}
var a = 1; // Global Scope

// Function Scope (in een IIFE)
(function() {
    var a = 2;
    console.info(a); // Resultaat: 2
})();

console.info(a); // Resultaat: 1
{% endhighlight %}

> Opmerking
> ---
> Gebruik bij voorkeur `let` of `const`. In de meeste gevallen kunnen die `var` vervangen.
{:.card.card-remark}

Keyword `let` {{ badge-es6 }}
-------------

Op het eerste gezicht vervangt `let` het generieke `var` voor een variabele, maar er zijn een aantal belangrijke consequenties.

> Opgelet
> ---
> - Met `let` mag de identifier **maar 1 keer gedeclareerd** worden per block.
> - Met `var` mag dit wel.
{:.card.card-warning}

{% highlight js linenos %}
var a;
var a = 1;
{% endhighlight %}

{% highlight js linenos %}
var b;
let b = 2; // Syntaxis-fout.
{% endhighlight %}

{% highlight js linenos %}
let c;
let c = 3; // Syntaxis-fout.
{% endhighlight %}

### Block Scope

{% highlight js linenos %}
let d;
{
    let d = 3;
}
{% endhighlight %}

> Opgelet
> ---
> - Met `let` is de scope van de variabele **gebonden aan het block**.
> - Met `var` niet, tenzij het een functie is (bijv. een IIFE).
{:.card.card-warning}

{% highlight js linenos %}
// Variabele in Global Scope
var a = 1;

// Variabele in Block Scope
{
    var a = 2;
    console.info(a); // Resultaat: 2
}

console.info(a); // Resultaat: 2
{% endhighlight %}

{% highlight js linenos %}
// Variabele in Global Scope
var b = 1;

// Variabele in Block Scope
{
    let b = 2;
    console.info(b); // Resultaat: 2
}

console.info(b); // Resultaat: 1
{% endhighlight %}

{% highlight js linenos %}
// Variabele in Global Scope
let c = 1;

// Variabele in Block Scope
{
    let c = 2;
    console.info(c); // Resultaat: 2
}

console.info(c); // Resultaat: 1
{% endhighlight %}

> Opgelet
> ---
> - Met `let` is er **geen *declaration hoisting***.
> - Met `var` mag je de variabele aanroepen voordat de declaratie gebeurd is.
{:.card.card-warning}

{% highlight js linenos %}
console.info(a); // Resultaat: undefined
var a;
{% endhighlight %}

{% highlight js linenos %}
let b;
console.info(b); // Resultaat: undefined
{% endhighlight %}

{% highlight js linenos %}
console.info(c); // Syntaxis-fout
let c;
{% endhighlight %}

Keyword `const` {{ badge-es6 }}
---------------

> Opgelet
> ---
> Een `const` is een *constant variable* en geen echte constante zoals in bepaalde andere programmeertalen.
{:.card.card-warning}

> Opmerkingen
> ---
> - Een `const` is hetzelfde als een `let`, met dat verschil dat de  **toewijzing** *(Eng.: assignment)* maar één keer kan gebeuren.
> - Een **initializer is verplicht**: de assigment moet samen met de declaratie.
{:.card.card-remark}

{% highlight js linenos %}
const a = 1;
a = 2; // Syntaxis-fout.
console.log(a); // 1
{% endhighlight %}

> Opgelet
> ---
> Dat de toewijzing maar één keer kan gebeuren wil niet zeggen dat de waarde **onveranderlijk** *(Eng.: immutable)* is.
{:.card.card-warning}

{% highlight js linenos %}
const b = [1];
++b[0];
console.log(b); // [2]
b = 2; // Syntaxis-fout.
{% endhighlight %}

> Tip
> ---
> De huidige consensus binnen de *JavaScript-community* is om altijd `const` te gebruiken[^const], tenzij de toewijzing *(Eng.: assignment)* meerdere keren moet gebeuren.
{:.card.card-tip}

[^const]: Het is voor browserfabrikanten mogelijk om een JavaScript-engine zo te optimaliseren dat `const` efficienter werkt dan `let`.

Samenvatting
------------

| Keyword | Declaration | Assignment | Initializer | Hoisted |
|---------|-------------|------------|-------------|---------|
| `var`   | &infin;     | &infin;    | Mag         | Ja      |
| `let`   | 1           | &infin;    | Mag         | Nee     |
| `const` | 1           | 1          | Moet        | Nee     |
{:.table.table--primary}

> Opmerking
> ---
> De **identifier** van een variabele, ongeacht het keyword **moet uniek zijn**, en mag ook geen functie-identifier zijn.
{:.card.card-remark}


> References
> ---
> - [Mozilla Developer Network:Grammar and types](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Grammar_and_Types#Declarations)
{:.card.card-source}