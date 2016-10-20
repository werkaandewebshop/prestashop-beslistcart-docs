# Productfeed

De module heeft een mogelijkheid om een feed te genereren. Deze feed is te vinden op de volgende locatie:

***http://www.uwdomeinnaam.nl/modules/beslistcart/feed.php***

Het is verstandig om 's nachts met een crontaak de output weg te schrijven naar een vaste locatie, en die locatie aan Beslist te melden. Dit kunt u doen door de volgende crontaak aan te maken:

```
30 0 * * * curl "http://www.uwdomeinnaam.nl/modules/beslistcart/feed.php" > /pad/naar/uw/docroot/beslist.xml
```

Deze taak zal elke nacht om 0:30 draaien. Afhankelijk van het aantal producten kan de taak erg lang duren en erg veel geheugen gebruiken. U kunt ook een externe feed gebruiken. Het is bekend dat de module goed werkt met [Channable](http://www.channable.com). Via een externe partij hebt u ook meer controle over uw feed.
