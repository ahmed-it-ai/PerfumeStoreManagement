select bottle.name , bottleOfBranch.CountOfBottle 
from bottle , bottleOfBranch       
where bottleOfBranch.bottleId = bottle.Id
and bottleOfBranch.BranchId = 1 ; 

select * from bottle
delete from bottle where id not in  (1 ,2) ;
