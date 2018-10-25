Productfeed
===========

De module heeft een mogelijkheid om een feed te genereren. De generator moet worden ingesteld via cron.
Een voorbeeld van een commando staat op de module configuratiepagina (onder 'Bekijk geavanceerde opties).

Bijvoorbeeld:

.. sourcecode:: bash

    0 1 * * * curl -L --max-redirs -1 https://www.uwdomeinnaam.nl/modules/beslistcart/cron-generate.php?secure_key=XXXYYY111222333  &>/dev/null

Deze taak zal elke nacht om 1:00 draaien. Afhankelijk van het aantal producten kan de taak erg lang duren. U kunt ook een externe feed gebruiken. Het is bekend dat de module goed werkt met `Channable <http://www.channable.com>`_. Via een externe partij hebt u meer controle over uw feed.
