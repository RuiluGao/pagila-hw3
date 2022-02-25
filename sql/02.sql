/*
 * Compute the country with the most customers in it. 
 */

SELECT country
FROM country
JOIN city using (country_id)
JOIN address using (city_id)
JOIN customer using (address_id)
GROUP BY country
ORDER BY count(customer_id) DESC
LIMIT 1;
