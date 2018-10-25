Categorieën
===========
Vanaf versie 1.3.0 is er uitgebreidere ondersteuning voor de categorisatie van Beslist. Naast uw eigen categorisatie is het mogelijk om een voorgedefiniëerde Beslist mapping mee te sturen bij de producten. Dit kan op 3 niveaus: shop, shopcategorie en product.

Beslist interne mapping
-----------------------

De standaardcategorie van elk product wordt meegestuurd in de feed. Aan de hand van deze categorisatie maakt Beslist een mapping naar hun eigen categorieën. U hoeft dus in principe niets te doen om de producten in de juiste categorieën te krijgen.

Uw eigen mapping
----------------

**De stappen hieronder zijn voor de meeste gevallen niet nodig, in overleg met Beslist wordt bekeken of u zelf uw mapping kunt aanmaken**

Categorisatie op shopniveau
^^^^^^^^^^^^^^^^^^^^^^^^^^^

U kunt op de moduleconfiguratiepagina instellen welke standaardcategorie moet worden gebruikt voor Beslist. Deze zal meegenomen worden indien er geen andere match mogelijk is.

Categorisatie op shopcategorie
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In uw Prestashop omgeving kunt u onder `Catalogus` -> `Categorieën`. Selecteer de categorie waarvoor u een Beslist categorie wilt instellen. Op de wijzig pagina staat er een veld `Beslist categorie`. Deze categorie zal worden gebruikt wanneer er geen match op productniveau bestaat.

De matching op shopcategorie werkt door de gehele boom van uw shop. Indien u dus op een hoger niveau een Beslist categorie hebt ingesteld, zal deze worden gebruikt.

Categorisatie op productniveau
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Indien u niet op shop en shopcategorie niveau kunt aangeven welke Beslist categorie overeenkomt met het product, kunt u op de productpagina zelf een categorie voor het product aangeven. Deze categorie zal altijd meegenomen worden in de feed.

Bepalingsmethode per product
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In de feed wordt er per product een overeenkomende Beslist categorie gezocht, dit werkt als volgt:

1. Indien er een Beslist categorie bij het product is ingevuld, gebruikt de feed deze
2. Indien er een Beslist categorie bij de (hoofd)categorie van het product is ingevuld, gebruikt de feed deze
3. Indien er een Beslist categorie in de bovenliggende categorieën van het product wordt gevonden, gebruikt de feed deze
    - Er wordt gekeken welke categorie het diepst ligt, dus het kan zijn dat de hoofdcategorie van het product niet gebruikt wordt, maar een andere categorie waar het product ook in zit.
4. Als er nog steeds geen match mogelijk is, wordt de standaardcategorie van de shop gebruikt in de feed
