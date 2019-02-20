---
title: Statements
title_long: Statements
permalink: javascript/conditionele_statements/
---

Conditionele If Statement
------------

Een if statement wordt enkel uitgevoerd als de expressie tussen de haakjes WAAR is geëvalueerd. Tenslotte kunnen de if- en else if-statements uitgebreid worden met één else-statement dat uitgevoerd wordt als alle voorgaande if- en else if-statements als ONWAAR geëvalueerd werden.

{% highlight js linenos %}
let testNum = -2
let result = '';

  if (testNum > 0) {
    result = "positive";
  } else {
    result = "NOT positive";
  }

console.log(result);
// expected output: "NOT positive"
{% endhighlight %}

> References
> ---
> - [Mozilla Developer Network: If ... Else ](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else)
{:.card.card-source}

Switch Statement
----------------

Dit statement komt overeen met een losse vergelijking. Een default op het einde is aangeraden om dit altijd toe te voegen om zo de onderhoudbaarheid en fouttolerantie van de code te bevorderen. Als een overeenkomst gevonden wordt, dan wordt alle volgende code tot aan de eerstvolgende break uitgevoerd.

{% highlight js linenos %}
let fruit = 'bananen';
switch (fruit) {
  case 'Appels':
    console.log('Appels kunnen rood en groen zijn.');
    break;
  case 'bananen':
    console.log('Bananen hebben een gele kleur.');
    break;
  default:
    console.log('Deze fruit kennen we nog niet, dus hebben we geen kleur.');
}
{% endhighlight %}

> References
> ---
> - [Mozilla Developer Network: Switch ](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/switch)
{:.card.card-source}

Ternary Operator
----------------

De Ternary operator voorziet een shortcut voor een enkele if / else statement.  

{% highlight js linenos %}
let age = 26;
let beverage = (age >= 21) ? "Beer" : "Juice";
console.log(beverage); // "Beer"
{% endhighlight %}

> References
> ---
> - [Mozilla Developer Network: Conditional ternary Operator ](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Conditional_Operator)
{:.card.card-source}