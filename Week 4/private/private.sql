CREATE TABLE "decrypt"(
    "id" INTEGER,
    "start" INTEGER,
    "length" INTEGER
);

INSERT INTO "decrypt" VALUES
    (14,98,4),
    (114,3,5),
    (618,72,9),
    (630,7,3),
    (932,12,5),
    (2230,50,7),
    (2346,44,10),
    (3041,14,5)
;

CREATE VIEW "message" AS
SELECT substr("sentence","start","length") AS "phrase"
FROM "decrypt"
JOIN "sentences" ON "sentences"."id" = "decrypt"."id";