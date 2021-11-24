select * from orders o ;

--Wypisz dane z tabeli orders w kolejno�ci wed�ug daty zam�wienia, gdzie freight > 10 i ShipVia to 1,2 lub 3.
--Do wyniku zapytania dodaj osobne kolumny zawieraj�ce rok z daty zam�wienia, oraz miesi�c z daty zam�wienia

select *,
date_part('year', "OrderDate") as rok_zamowienia, 
date_part('month', "OrderDate") as mies_zamowienia
from orders o
where "Freight" > 10 and "ShipVia" in (1,2,3)
order by "OrderDate";

--Wypisz kolumn� ShipRegion wed�ug zasady: je�eli ShipRegion jest nullem wstaw 'PL',
-- w przeciwnym wypadku pozostaw ShipRegion niezmieniony. Wyznacz d�ugo�� nazwy kraju dostawy

SELECT COALESCE("ShipRegion", 'PL') as ship_region,
length("ShipCountry") as ship_country_length
from orders o ;