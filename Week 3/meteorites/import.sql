CREATE TABLE "meteorite_temp"(
    "id" INTEGER,
    "name" TEXT,
    "nametype" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" NUMERIC,
    "long" NUMERIC
);

.import --csv --skip 1 meteorites.csv meteorite_temp
UPDATE "meteorite_temp"
SET "mass" = NULL WHERE "mass"=' ';
UPDATE "meteorite_temp"
SET "year" = NULL WHERE "year"=' ';
UPDATE "meteorite_temp"
SET "lat" = NULL WHERE "lat"=' ';
UPDATE "meteorite_temp"
SET "long" = NULL WHERE "long"=' ';

UPDATE "meteorite_temp"
SET "mass" = ROUND("mass",2);
UPDATE "meteorite_temp"
SET "lat" = ROUND("lat",2);
UPDATE "meteorite_temp"
SET "long" = ROUND("long",2);

DELETE FROM "meteorite_temp"
WHERE "nametype" = 'Relict';

CREATE TABLE "meteorites"(
    "id" INTEGER,
    "name" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" NUMERIC,
    "lat" NUMERIC,
    "long" NUMERIC,
    PRIMARY KEY("id")
);

INSERT INTO "meteorites" ("name","class","mass","discovery","year","lat","long")
SELECT "name","class","mass","discovery","year","lat","long" FROM "meteorite_temp"
ORDER BY "year" ASC, "name";