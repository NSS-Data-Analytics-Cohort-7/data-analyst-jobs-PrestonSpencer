/*SELECT count (*) 
FROM data_analyst_jobs;
Q1: How many rows in the table? 1793 */

/*SELECT *
FROM data_analyst_jobs
LIMIT 10;
Q2: Company in 10th row = ExxonMobil */

/*SELECT count(location)
FROM data_analyst_jobs
WHERE location = 'TN';
Q3a: How many postings in Tennessee = 21 */

/*SELECT count(location)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY';
Q3b: How many postings in Tennessee or Kentucky = 27 */

/*SELECT count(*)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > '4';
Q4: How many postings in TN with star rating above 4? = 3 */

/*SELECT count(*)
FROM data_analyst_jobs
WHERE review_count 
BETWEEN 500 AND 1000;
Q5: Postings with review count between 500 and 1000? = 151 */

/*SELECT AVG(star_rating) AS avg_rating, location
FROM data_analyst_jobs
GROUP BY location
ORDER BY avg_rating DESC;
Q6: State with highest average rating? = NE, Nebraska */

/*SELECT count(DISTINCT title)
FROM data_analyst_jobs;
Q7: Unique job titles? = 881 */

/*SELECT count(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';
Q8: Unique job title in CA = 230 */

/*SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company;
Q9: Companies with more than 5000 reviews? = 40 (not including null) */

/*SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY AVG(star_rating) DESC;
Q10: Company with more than 5000 reviews and highest star rating = General Motors
General Motors star rating = 4.1999998090000000 */

/* SELECT count(DISTINCT title)
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%'
OR title LIKE '%ANALYST%'
OR title LIKE '%analyst%';
Q11: Different job titles containing 'Analyst' = 774 */

/*SELECT title
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%' 
AND title NOT LIKE '%ANALYST%'
AND title NOT LIKE '%analyst%'
AND title NOT LIKE '%Analytics%'
AND title NOT LIKE '%ANALYTICS%'
AND title NOT LIKE '%analytics%';
Q12: How many job titles do not contain 'Analyst' or 'Analytics'? = 4
What word do these positions have in common? = Tableau */

/*SELECT domain, count(title), days_since_posting
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND days_since_posting > 21
AND skill LIKE '%SQL%' OR skill LIKE '%Sql%' OR skill LIKE '%sql%'
OR title LIKE '%SQL%' OR title LIKE '%Sql%' OR title LIKE '%sql%' 
GROUP BY domain, days_since_posting
ORDER BY count(title) DESC;
BONUS Q: Which 3 industries in top 4 on list?  
-Banks and Financial Services
-Internet and Software
-Health Care
BONUS Q: How many jobs listed for more than 3 weeks for each of top 4?
-Banks and Financial Services = 51
-Internet and Software = 49
-Health Care = 45
-Consulting and Business Services = 44 */








