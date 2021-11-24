create database dentists;

create table Dentists_tabela (
	location		varchar(55) null,
	period			numeric(4) null,
	indicator		varchar(23) null,
	"first tooltip"	float8 null
	
);


	
--Zadanie 4a 
select * 
from dentists_tabela;

--Zadanie 4b 
select period, "first tooltip" 
from dentists_tabela; 

--Zadanie 4c
ALTER TABLE dentists_tabela 
RENAME COLUMN period TO rok;

--Zadanie 4d
select *
from public.dentists_tabela
where location like 'B%' or rok =2006;
--Zadanie 4e
select * 
from public.dentists_tabela
where location like '%land';
--Zadanie 4f
select *
from public.dentists_tabela 
where location like '%land' or location like 'Poland';

--Zadanie 4g
select *
from public.dentists_tabela
where location like 'Poland'
order by rok ;



