create database dccrimes;

USE dccrimes;

select * from dcprecincts_cleaned;

select * from dcwards_cleaned;

select * from dccrimes2019_cleaned;


SELECT dccrimes2019_cleaned.OFFENSE, dccrimes2019_cleaned.SHIFT, dcwards_cleaned.WARD, dcwards_cleaned.AvgFamilyIncome
FROM dccrimes2019_cleaned
INNER JOIN dcwards_cleaned ON dccrimes2019_cleaned.WARD=dcwards_cleaned.WARD;
