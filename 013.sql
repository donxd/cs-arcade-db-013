/*Please add ; after each select statement*/
CREATE PROCEDURE securityBreach()
BEGIN
    SELECT 
        first_name,
        second_name,
        attribute -- ,
        -- CONCAT('^.+%', first_name, '_', second_name, '%.*$')
    FROM 
        users
    WHERE 
        -- attribute LIKE CONCAT('%%%', first_name, '%_', second_name, '%%%')
        REGEXP_LIKE(attribute, CONCAT('^.+%', first_name, '_', second_name, '%.*$'), 'c') 
        -- 1
    ORDER BY 
        attribute ASC;
END