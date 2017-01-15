# Module configuratie

De module configuratie is te vinden in uw Prestashop installatie. Navigeer naar `Modules` -> `Modules en Services`, zoek de `Beslist Shopping cart integration` module en klik op `Configureer`.

## Configureer de testverbinding
Het is zeer aan te raden om eerst een testverbinding te configureren. Van Beslist heeft u (als het goed is) een de gegevens voor een testverbinding ontvangen. Ook wanneer u in een ander systeem draait is het belangrijk eerst de Test API keys te gebruiken.

***Let er goed op dat u de Test API sleutels gebruikt voor de testverbinding***

## Configuratie opties
Hier vindt u een korte uitleg voor elke configuratie optie.

### Beslist Winkelwagen instellingen
De instellingen onder de kop `Beslist Winkelwagen instellingen` gelden voor zowel Beslist.nl als Beslist.be.

* `Beslist winkelwagen activeren`: Activeer of deactiveer de module.
* `Gebruik testverbinding`: Activeer de Test API's
* `Shop ID`: Het Shop ID dat u van Beslist hebt ontvangen.
* `Client ID`: Het Client ID dat u van Beslist hebt ontvangen.
* `Order API key`: De persoonlijke Order API sleutel die u van Beslist hebt ontvangen.
* `Shopitem API key`: De sleutel die u voor de Shopitem API hebt ontvangen.
* `Standaard maatattribuut`: Indien uw producten gebruik maken van verschillende maten, kunt u dat hier opgeven.
* `Standaard kleurattribuut`: Indien uw producten gebruik maken van verschillende kleuren, kunt u dat hier opgeven.
* `Beslist productreferentie veld`: Hier geeft u aan welk veld wordt gebruikt als uniek veld. Als het goed is hebt u dit aan Beslist doorgegeven. Standaard gebruikt de module een combinatie van het Prestashop ID van het product en het productcombinatie ID (dit veld wordt ook in de feed gebruikt, en werkt met Channable). De overige opties zijn EAN-13 (barcode) en Productreferentie (uw interne referentie).
* `Test productnummer`: Hier vult u de code ('$combinatieid-$productid', EAN-13 of productreferentie) in van het product dat u wilt gebruiken tijdens de test. De ingevulde code moet overeenkomen met het `Beslist productreferentie veld`-veld.
    * Default: een combinatie van het product- en combinatie ID van het product (#combinatie-#product). Voorbeeld:
        * `3-4` Product ID: 4, Combinatie ID: 3 (zichtbaar in de url en database, `id_product` & `id_product_attribute`)
        * `4` Product ID: 4, geen combinatie (zichtbaar in de url en database, `id_product`)
    * EAN-13: De EAN code van het product (zichtbaar op de productpagina)
    * Productreferentie: De productreferentie van het product (zichtbaar op de productpagina)
* `Vanaf datum`: De datum vanaf wanneer orders moeten worden gesynchroniseerd. Dit veld wordt automatisch bijgewerkt na een synchronisatie.

### Pricing settings
Deze instellingen worden gebruikt op productpagina binnen uw Prestashop installatie. Hier kunt u instellen welke berekening er uitgevoerd moet worden over de prijs.

* `Addition amount`: Telt een vast bedrag bij het nettobedrag van het product op
* `Multiplication factor`: Vermenigvuldigt het nettobedrag + de `addition amount` met dit getal
* `Round up amount`: Rondt de berekende prijs af op een decimaal.

### Beslist.nl instellingen
Deze instellingen gelden alleen voor de publicaties op Beslist.nl, de Nederlandse website.

* `Gebruik Beslist.nl`: Synchroniseer orders en producten met Beslist.nl (Nederland).
* `Vervoerder`: Selecteer een vervoerder voor uw Nederlandse orders. De bestel- en transportkosten moeten overeenkomen (op Beslist.nl en in uw Prestashop vervoerdersconfiguratie).
* `Levertijd`: De levertijd voor Nederlandse bestellingen waarvan de producten op voorraad zijn.
* `Levertijd bij geen voorraad`: De levertijd voor Nederlandse bestellingen waarvan de producten niet op voorraad zijn.

### Beslist.be instellingen
Deze instellingen gelden alleen voor de publicaties op Beslist.be, de Belgische website.

* `Gebruik Beslist.be`: Synchroniseer orders en producten met Beslist.be (België).
* `Vervoerder`: Selecteer een vervoerder voor uw Belgische orders. De bestel- en transportkosten moeten overeenkomen (op Beslist.be en in uw Prestashop vervoerdersconfiguratie).
* `Levertijd`: De levertijd voor Belgische bestellingen waarvan de producten op voorraad zijn.
* `Levertijd bij geen voorraad`: De levertijd voor Belgische bestellingen waarvan de producten niet op voorraad zijn.

### Categoriën
De Beslist categoriën worden in uw Prestashop installatie opgeslagen, zodat u per product kunt selecteren in welke categorie deze komt te staan. U kunt de categoriën van Beslist opnieuw ophalen door `Update Beslist categoriën` op `JA` te zetten, en vervolgens op opslaan te klikken.

* `Update Beslist categoriën`: Ververs de lokale lijst met categoriën van Beslist
* `Standaard categorie`: Selecteer een standaardcategorie voor uw producten. Voor meer informatie over categorieën kunt u kijken op de [categorieën pagina](../gebruik/categorieen.md)

## Live verbinding
Nadat u de testverbinding heeft geconfigureerd en de tests goed heeft uitgevoerd, kunt u de module configuren voor de productiemodus. Daarvoor hoeven maar een paar velden gewijzigd te worden:

* `Gebruik testverbinding`: Zet dit veld op `NEE`
* `Shopitem API key`: Uw Shopitem API sleutel

U bent nu klaar om orders te ontvangen. Lees in de [gebruikersdocumentatie](../gebruik/orders.md) hoe dit werkt.
