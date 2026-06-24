SELECT "first_name", "last_name" FROM "players"
WHERE "id" IN
(SELECT "player_id" FROM (
SELECT "salaries"."player_id" FROM "salaries"
JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
WHERE "salaries"."year" = 2001 AND
"H" != 0 AND
"performances"."year" = "salaries"."year"
ORDER BY ("salary"/"H")
LIMIT 10)
INTERSECT
SELECT "player_id" FROM(
SELECT "salaries"."player_id" FROM "salaries"
JOIN "performances" ON "performances"."player_id" = "salaries"."player_id"
WHERE "salaries"."year" = 2001 AND
"RBI" != 0 AND
"performances"."year" = "salaries"."year"
ORDER BY ("salary"/"RBI")
LIMIT 10
))
ORDER BY "id"