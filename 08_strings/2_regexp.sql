-- Clean spaces

SELECT 
    s
    TRIM(REGEXP_REPLACE(s, ' +')) AS cleaned
FROM (SELECT '    Hello    there    pal    ' AS s);

SELECT
      s,
      REGEXP_REPLACE(s, '[^A-Za-zåäöÅÄÖ]', '') AS only_leters,
      REGEXP_REPLACE(s, '[^0-9]', '') AS only_numbers,
      REGEXP_SUBSTR(s, '\d+') AS  first_numbers,
      LTRIM(REGEXP_SUBSTR(s, '@(.+)$'), '@') AS email_domain
FROM (SELECT 'Order#1121312 - Björn23@hotmail.com' AS s);

EXIT
