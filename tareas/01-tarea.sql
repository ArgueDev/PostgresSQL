-- 1. Ver todos los registros
SELECT * from users;

-- 2. Ver el registro cuyo id sea igual a 10
SELECT * FROM users WHERE "id" = 10;

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
SELECT * FROM users where name like 'Jim %';

-- 4. Todos los registros cuyo segundo nombre es Alexander
SELECT * FROM users where name like '% Alexander';

--- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'
UPDATE
    users
set
    "name" = 'Christian Arguello'
WHERE
    "id" = 1;

-- 6. Borrar el último registro de la tabla
select max(id) from users;

DELETE FROM users 
WHERE id = ( select max(id) from users );