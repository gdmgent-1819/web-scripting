---
title: Operatoren
title_long: Operatoren
permalink: javascript/operators/
---

Toewijzings Operatoren
----------------------

| Operator | Betekenis                      |
|:--------:|--------------------------------|
|   `=`    | toewijzen van een waarde |
{:.table.table--primary}

{% highlight js linenos %}
let greeting = 'Hello';
{% endhighlight %}

Wiskundige Operatoren
----------------------

| Operator | Betekenis             |
|:--------:|-----------------------|
|   `**`   | Exponent (macht)      |
|   `*`    | Product               |
|   `/`    | Quotiënt              |
|   `%`    | Identiek aan          |
|----------|-----------------------|
|   `+`    | Som                   |
|   `-`    | Verschil              |
{:.table.table--primary}

Concatenatie van Strings
------------------------

| Operator | Betekenis                      |
|:--------:|--------------------------------|
|   `+`    | Concatenatie (aaneenschakelen) |
{:.table.table--primary}

{% highlight js linenos %}
let greeting = 'Hello';
let myName = 'Ellen';
let fullGreeting = greeting + ' ' + myName;

console.log(fullGreeting);
{% endhighlight %}

Vergelijkende Operatoren
------------------------

| Operator | Betekenis             |
|:--------:|-----------------------|
|  `===`   | Identiek aan          |
|  `!==`   | Niet identiek aan     |
|:--------:|-----------------------|
|   `==`   | Gelijk aan            |
|   `!=`   | Niet gelijk aan       |
|   `<>`   | Niet gelijk aan       |
|:--------:|-----------------------|
|   `<`    | Kleiner dan           |
|   `<=`   | Kleiner of gelijk aan |
|   `>`    | Groter dan            |
|   `>=`   | Groter of gelijk aan  |
|:--------:|-----------------------|
|  `<=>`   | Ruimteschip           |
{:.table.table--primary}

Logische Operatoren
-------------------

| Operator | Betekenis                      |
|:--------:|--------------------------------|
|   `&&`   | AND                            |
|   `||`   | OR                             |
|   `!`    | NOT                            |
{:.table.table--primary}

{% highlight js linenos %}
let a = 10;

if(a < 20 && a > 10 ){
    
}

{% endhighlight %}