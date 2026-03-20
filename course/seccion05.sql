DELETE from
    country
where
    code2 = 'NA';



SELECT
    *
FROM
    country
where
    code = 'NLD';



alter table
    country
add
    PRIMARY key (code);



alter table
    country
add
    CHECK (surfacearea >= 0);


SELECT DISTINCT continent from country;

alter table
    country
add
    CHECK (
        (continent = 'Asia'::text)
        or (continent = 'South America'::text)
        or (continent = 'North America'::text)
        or (continent = 'Oceania'::text)
        or (continent = 'Antarctica'::text)
        or (continent = 'Africa'::text)
        or (continent = 'Europe'::text)
    );

alter table country drop CONSTRAINT "country_continent_check1";

alter table
    country
add
    CHECK (
        (continent = 'Asia'::text)
        or (continent = 'South America'::text)
        or (continent = 'North America'::text)
        or (continent = 'Oceania'::text)
        or (continent = 'Antarctica'::text)
        or (continent = 'Africa'::text)
        or (continent = 'Europe'::text)
        or (continent = 'Central America'::text)
    );



create UNIQUE INDEX "unique_country_name" on country (name);

select * from country where continent = 'Asia';

select
    *
from
    city
where
    name = 'Jinzhou'
    and countrycode = 'CHN'
    and district = 'Liaoning';


create unique index "unique_name_cuntrycode_district" on city (name, countrycode, district);

create index "index_district" on city (district);

INSERT INTO
    country
values
    ('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');



select * from country where code = 'AFG';
SELECT * from city where countrycode = 'AFG';

SELECT * from country where code = 'NAM';
SELECT * FROM city where countrycode = 'NAM';

SELECT * from countrylanguage where countrycode = 'NAM';

DELETE FROM city where countrycode = 'NAM';
DELETE from countrylanguage where countrycode = 'NAM';

alter table
    city
add
    CONSTRAINT fk_country_code FOREIGN key (countrycode) REFERENCES country(code);


alter table
    countrylanguage
add
    CONSTRAINT fk_country_code FOREIGN key (countrycode) REFERENCES country(code);