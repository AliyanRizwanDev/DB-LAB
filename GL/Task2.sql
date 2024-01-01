ALTER TABLE patient MODIFY Gender char;
update patient set `name`='Akbar',`address`='Karachi' where patient_id=1;
DELETE FROM patient WHERE patient_id=5;
ALTER TABLE patient MODIFY patient_id int;