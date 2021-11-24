select * from orders o ;

--Wypisz dane z tabeli orders w kolejnoœci wed³ug daty zamówienia, gdzie freight > 10 i ShipVia to 1,2 lub 3.
--Do wyniku zapytania dodaj osobne kolumny zawieraj¹ce rok z daty zamówienia, oraz miesi¹c z daty zamówienia

select *,
date_part('year', "OrderDate") as rok_zamowienia, 
date_part('month', "OrderDate") as mies_zamowienia
from orders o
where "Freight" > 10 and "ShipVia" in (1,2,3)
order by "OrderDate";

--Wypisz kolumnê ShipRegion wed³ug zasady: je¿eli ShipRegion jest nullem wstaw 'PL',
-- w przeciwnym wypadku pozostaw ShipRegion niezmieniony. Wyznacz d³ugoœæ nazwy kraju dostawy

SELECT COALESCE("ShipRegion", 'PL') as ship_region,
length("ShipCountry") as ship_country_length
from orders o ;