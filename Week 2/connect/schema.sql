CREATE TABLE "Users"(
    "id" INT,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT,
    "password" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "Schools_and_Universities"(
    "id" INT,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year_founded" INT,
    PRIMARY KEY ("id")
);

CREATE TABLE "Companies"(
    "id" INT,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "Connections_people"(
    "id" INT,
    "user1" INT,
    "user2" INT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user1") REFERENCES "Users"("id"),
    FOREIGN KEY ("user2") REFERENCES "Users"("id")
);

CREATE TABLE "Connections_schools"(
    "id" INT,
    "user_id" INT,
    "school_id" INT,
    "start_date" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "end_date" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "degree" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_id") REFERENCES "Users"("id"),
    FOREIGN KEY ("school_id") REFERENCES "Schools and Universities"("id")
);

CREATE TABLE "Connections_companies"(
    "id" INT,
    "user_id" INT,
    "company_id" INT,
    "start_date" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "end_date" NUMERIC DEFAULT CURRENT_TIMESTAMP,
    "title" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_id") REFERENCES "Users"("id"),
    FOREIGN KEY ("company_id") REFERENCES "Companies"("id")
);