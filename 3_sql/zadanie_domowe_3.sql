select * from products p ;

select * from order_details od ;

select * from orders o ;

select * from categories c ;

drop table popularity

create table popularity
as
select c."CategoryName",
avg(od."Quantity") srednia_sprzedanych,
to_char(o."OrderDate",'YYYY-MM') miesiac_sprzedazy,
row_number() over(partition by to_char(o."OrderDate",'YYYY-MM') order by avg(od."Quantity") asc) Ranking_popularnosci
from public.categories c
join public.products p on c."CategoryID" =p."CategoryID" 
join public.order_details od on p."ProductID" = od."ProductID"
join public.orders o on od."OrderID" = o."OrderID" 
group by c."CategoryName" ,
date_part('month', o."OrderDate"),
date_part('year',o."OrderDate"),
miesiac_sprzedazy
order by date_part ('year', o."OrderDate"), date_part('month',o."OrderDate"), srednia_sprzedanych, ranking_popularnosci  ;

select * from popularity p ;


select *
,		lag(p.srednia_sprzedanych) over(partition by p."CategoryName" order by p.miesiac_sprzedazy , p.srednia_sprzedanych) srednia_sprzedanych_lagged
from popularity p;