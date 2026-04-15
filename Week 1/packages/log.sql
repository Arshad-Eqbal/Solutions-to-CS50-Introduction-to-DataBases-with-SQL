
-- *** The Lost Letter ***
--to find the address id of sender using given sender's address
SELECT * from "addresses" WHERE "address" = '900 Somerville Avenue';
--to find the address id of reciever, content type and package id using addres id of reciever
SELECT * from "packages" WHERE "from_address_id" = 432;
--to find the driver id, scan id, action and time using package id
SELECT * from "scans" WHERE "package_id" = 384;
--to find the type of sender's address using address id
SELECT * from "addresses" WHERE "id" = 854;

-- *** The Devious Delivery ***
--to find the to_address_id and content type using from address id = null
SELECT * from "packages" WHERE "from_address_id" IS NULL;
--to find the type of to reciever's address using id
SELECT * from "addresses" WHERE "id" = 50;

-- *** The Forgotten Gift ***
--to find the to_address_id of sender and reciever
SELECT * from "addresses" WHERE "address" = '728 Maple Place';
SELECT * from "addresses" WHERE "address" = '109 Tileston Street'
--to find the content and package id using from and to address id
SELECT * from "packages" WHERE "from_address_id" = 9873 AND "to_address_id" = 4983;
--to find the current address id of the package using package id
SELECT * from "scans" WHERE "package_id" = 9523;
--to find the current address of the package using address id
SELECT * from "address" WHERE "id" = 7432;