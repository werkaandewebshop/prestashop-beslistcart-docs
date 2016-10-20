# Beslist.nl configuratie

De Beslist.nl configuratie moet ingesteld worden op uw [Beslist.nl account](https://cl.beslist.nl/v2/user/login)

## Winkelwagen instellingen
De module ondersteunt 1 manier van verzendkosten berekenen, namelijk de optie 'De bestelkosten worden berekend op basis van de totaalomzet van de bestelling(en).'.
Stel dit dus als optie in op Beslist.nl (voor zowel België als Nederland). Dit doet u op de pagina `Winkelwagen` -> `Instellingen`. Zorg ervoor dat de specificatie overeenkomt met de berekening van de verzendkosten binnen uw Prestashop installatie. U kunt ervoor kiezen om een nieuwe vervoerder aan te maken, waarbij de instellingen exact overeenkomen met de instellingen op Beslist.

### API sleutels
De module gebruikt meerdere Beslist API's. Namelijk:

1. Order API
2. Shopitem API

Hiervoor is het nodig om API sleutels te verkijgen. Deze krijgt u van Beslist aangeleverd via e-mail.

### Test API
In eerste instantie wordt er een sleutel aangeleverd voor de testomgeving van de Shopitem API. De Order API gebruikt altijd de productieomgeving, maar kan op een andere manier getest worden.

Nadat u een aantal succesvolle Shopitem API meldingen hebt gedaan, kunt u een productie API sleutel ontvangen van Beslist.

Let op: de module kan alleen in zijn geheel in testmodus gezet worden, indien u de Order API al wilt gebruiken, houdt er dan rekening mee dat de Shopitem API niets doet.
