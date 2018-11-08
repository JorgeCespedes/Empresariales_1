use bdpersonallocal;

select * from TBOSE;

select * from TBPais;

select idOSE, nombreOSE, nombrePais 
from tbOSE
inner join TBPais
where tbOSE.idPais = tbPais.idPais;

select * from TBOSE
where idTipoOse=1;

select idOse, nombreOSE, denominacionOse 
from TBOSE
where idTipoOse=1;



select idOse, nombreOSE, denominacionOse, idTipoOse
from TBOSE
group by idTipoOse;





