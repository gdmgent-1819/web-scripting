---
title: Functies
title_long: Functies
permalink: javascript/functions/
---



We gaan functies gebruiken om herhaalde statements te groeperen en te hergebruiken.

## Functions

**Declaratie**
```
function sayHi()
{
    document.write("Hi! <br>");
}
```

**Aanroepen**  
We kunnen een functie aanroepen:  

```
sayHi();
```

**Output**
```
Hi!
```

## Function expressions

De functie expressies zijn heel gelijkaardig en hebben bijna de zelfde syntax als een gewone functie. 
Functie declaraties worden geladen voor dat er code is uitgevoerd, functie expresies worden geladen op het moment dat de lijn wordt geinterpreteerd.

Als je de functie probeert uit te voeren voor dat de lijn code is gelezen, dan zal je een foutmelding krijgen.

**Declaratie**
```
var sayHi = function()
{
    document.write("Hi! <br>");
}
```

**Aanroepen**
We kunnen een functie aanroepen:

```
sayHi();
```

**Output**
```
Hi!
```

## Return

Een functie kan een bepaalde waarde terug sturen door het gebruik van de **return-statement**.  
Wanneer de de code de return-statement heeft bereikt zal de functie ook stoppen met uitvoeren.

**Declaratie**
```
var getHiSentence = function()
{
    return 'Hi!';
}
```

**Aanroepen**
```
let sayHi = getHiSentence();
```

De return-waartde 'Hi!' zal nu in de variabele ```sayHi``` zitten.


## Function Parameters

We kunnen parameters meegeven in onze functie.  
Deze parameters gedragen zicht binnen de functie als variabelen.

**Declaratie**
```
var sayHi = function(name, age)
{
    document.write("Hey" + name + ".<br> You are" + age + "years old.");
}
```

**Aanroepen**
```
sayHi('Ellen', '12');
```

**Output**
```
Hey Ellen
You are 12 years old.
```

