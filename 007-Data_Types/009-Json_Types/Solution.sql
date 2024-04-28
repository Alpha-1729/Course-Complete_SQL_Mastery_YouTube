-- Json Types
/*
>>>> JSON
        Lightweight format for storing and transferring data over the internet.
>>>> For JSON support, MySQL version should be atleast 
>>>>
>>>>
>>>>
>>>>
*/


USE sql_store;

-- Adding json column.
ALTER TABLE products
ADD COLUMN properties JSON NULL;

-- Updating a json column.
-- Method 1.
UPDATE products
SET properties = '
{
    "dimensions": [1, 2, 3],
    "weight": 10,
    "manufacturer": { "name": "Sony" }
}
'
WHERE product_id = 1;

-- Method 2.
UPDATE products
SET properties = JSON_OBJECT(
    'weight': 10,
    'dimensions': JSON_ARRAY(1, 2, 3),
    'manufacturer': JSON_OBJECT('name', 'sony')
)
WHERE product_id = 1;

-- Method 3
-- Updating only one properties of the JSON.
UPDATE products
SET properties = JSON_SET(
    '$.weight', 20,
    -- Adding a new properties in the JSON.
    '$.age': 10
)
WHERE product_id = 1;

-- Extract individual key value from Json column.
-- Method 1
SELECT product_id, JSON_EXTRACT(properties, '$.weight') AS weight
FROM products
WHERE product_id = 1;

-- Method 2 using column pass operator (->).
SELECT 
    product_id,
    properties -> '$.weight' AS weight,
    -- Accessing array element.
    properties -> '$.dimensions[0]' AS dimension,
    -- Accessing nested object.
    manufacturer -> '$.manufacturer.name' AS stringManufacturer,
    -- Remove double quotes around the string (->>).
    manufacturer ->> '$.manufacturer.name' AS manufacturer,
FROM products
WHERE product_id = 1;


-- Removing JSON properties from column.
UPDATE products
SET properties = JSON_REMOVE(
    properties,
    '$.age'
)
WHERE product_id = 1;
