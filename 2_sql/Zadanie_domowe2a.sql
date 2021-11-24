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


-- �rednia, minimalna, maxymalna cena otwarcia i zamkni�cia dla wszystkich akcji 
SELECT avg("openprice" - "closeprice") avg_diff,
min("openprice" - "closeprice") min_diff,
max("openprice" - "closeprice") max_diff
from GPW
;

-- �rednia, minimalna, maxymalna cena otwarcia i zamkni�cia dla akcji o obrocie powy�ej 1000, a poni�ej 1000000
SELECT avg("openprice" - "closeprice") avg_diff,
min("openprice" - "closeprice") min_diff,
max("openprice" - "closeprice") max_diff
from GPW where volume > 1000 and volume < 1000000;

-- �rednia, minimalna, maxymalna cena otwarcia i zamkni�cia dla firm o nazwie rozpoczynaj�cej si� na liter� 'A' (kolumna ticker)
SELECT avg("openprice" - "closeprice") avg_diff,
min("openprice" - "closeprice") min_diff,
max("openprice" - "closeprice") max_diff
from GPW where ticker like 'A%';

--Ticker kt�ry osi�gn�� maksymaln� warto��
SELECT ticker, volume from GPW order by volume desc limit 1;