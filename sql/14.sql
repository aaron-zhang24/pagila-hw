/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT f.title as title
FROM category as c
JOIN film_category as fc ON c.category_id = fc.category_id
JOIN film as f ON fc.film_id = f.film_id
WHERE c.name = 'Family';

