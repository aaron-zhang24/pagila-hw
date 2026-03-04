/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */

SELECT f.film_id, f.title, COUNT(*) as count 
FROM inventory as i
JOIN film as f ON i.film_id = f.film_id
WHERE f.title ILIKE 'h%'
GROUP BY f.film_id, f.title
ORDER BY f.title DESC; 
