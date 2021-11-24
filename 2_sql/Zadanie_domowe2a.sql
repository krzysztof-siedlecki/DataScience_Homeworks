create database zadanie_domowe_2

CREATE TABLE GPW (
  TICKER Varchar(15),
  DATE_SESSION date,
  OPENPRICE numeric,
  HIGHPRICE numeric,
  LOWPRICE numeric,
  CLOSEPRICE numeric,
  VOLUME numeric
)


select * from GPW;


-- œrednia, minimalna, maxymalna cena otwarcia i zamkniêcia dla wszystkich akcji 
SELECT avg("openprice" - "closeprice") avg_diff,
min("openprice" - "closeprice") min_diff,
max("openprice" - "closeprice") max_diff
from GPW
;

-- œrednia, minimalna, maxymalna cena otwarcia i zamkniêcia dla akcji o obrocie powy¿ej 1000, a poni¿ej 1000000
SELECT avg("openprice" - "closeprice") avg_diff,
min("openprice" - "closeprice") min_diff,
max("openprice" - "closeprice") max_diff
from GPW where volume > 1000 and volume < 1000000;

-- œrednia, minimalna, maxymalna cena otwarcia i zamkniêcia dla firm o nazwie rozpoczynaj¹cej siê na literê 'A' (kolumna ticker)
SELECT avg("openprice" - "closeprice") avg_diff,
min("openprice" - "closeprice") min_diff,
max("openprice" - "closeprice") max_diff
from GPW where ticker like 'A%';

--Ticker który osi¹gn¹³ maksymaln¹ wartoœæ
SELECT ticker, volume from GPW order by volume desc limit 1;