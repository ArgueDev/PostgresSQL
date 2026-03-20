SELECT
    id,
    UPPER(name) as upper_name,
    LOWER(name) as lower_name,
    LENGTH(name) as lenght,
    (20 * 2) as constante,
    CONCAT('*', id, '-', name, '*'),
    name
FROM
    users;

SELECT
    name,
    SUBSTRING (name, 0, (position (' ' in name))) as first_name,
    --SUBSTRING (name, (position (' ' in name))) as last_name
    TRIM(SUBSTRING (name, (position (' ' in name)))) as last_name
FROM
    users;

UPDATE
    users
SET
    first_name = SUBSTRING (name, 0, (position (' ' in name))),
    last_name = SUBSTRING (name, (position (' ' in name) + 1));


SELECT
    *
FROM
    users;