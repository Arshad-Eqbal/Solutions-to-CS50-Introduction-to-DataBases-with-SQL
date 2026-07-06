CREATE TABLE "ingredients"(
    "id" TEXT,
    "name" TEXT,
    "price" NUMERIC,
    "unit" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "donuts"(
    "id" TEXT,
    "name" TEXT,
    "price" NUMERIC,
    "gluten-free" TEXT,
    "ingredients_id" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("ingredients_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "orders"(
    "id" INT,
    "donut_id" TEXT,
    "customer_id" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "customers"(
    "id" TEXT,
    "first_name" TEXT,
    "last_name" TEXT,
    "history" TEXT,
    PRIMARY KEY ("id")
);