/*In this project, I wrote queries with aggregate functions to retrieve information from a table called 'fake_apps'.*/

/*Return the total number of apps in the table fake_apps.*/
SELECT COUNT(*) FROM fake_apps;

/*Return the name, category, and price of the app that has been downloaded the least amount of times.*/
SELECT name, category, price, MIN(downloads) FROM fake_apps;

/*Return the total number of apps for each category.*/
SELECT category, COUNT(category) FROM fake_apps GROUP BY category;

/*Return the name and category of the app that has been downloaded the most amount of times.*/
SELECT name, category, MAX(downloads) FROM fake_apps GROUP BY category;

/*Return the name and category of the app that has been downloaded the least amount of times.*/
SELECT name, category, MIN(downloads) FROM fake_apps GROUP BY category;

/*Return the average price for an app in each category.*/
SELECT category, AVG(price) FROM fake_apps GROUP BY category;

/*Return the average price for an app in each category. Round the averages to two decimal places.*/
SELECT category, ROUND(AVG(price), 2) FROM fake_apps GROUP BY category;

/*Return the maximum price for an app.*/
SELECT category, MAX(price) FROM fake_apps;

/*Return the minimum number of downloads for an app.*/
SELECT category, MIN(downloads) FROM fake_apps;

/*Return the total number of downloads for apps that belong to the Games category.*/
SELECT SUM(downloads) FROM fake_apps WHERE category = 'Games';

/*Return the total number of apps that are free.*/
SELECT COUNT(price) FROM fake_apps WHERE price = 0.0;

/*Return the total number of apps that cost 14.99.*/
SELECT COUNT(price) FROM fake_apps WHERE price = 14.99;

/*Return the sum of the total number of downloads for apps that belong to the Music category.*/
SELECT SUM(downloads) FROM fake_apps WHERE category = 'Music';

/*Return the sum of the total number of downloads for apps that belong to the Business category.*/
SELECT SUM(downloads) FROM fake_apps WHERE category = 'Business';

/*Return the name of each category with the total number of apps that belong to it.*/
SELECT category, Count(name) FROM fake_apps GROUP BY category;

/*Return the price and average number of downloads grouped by price.*/
SELECT price, AVG(downloads) FROM fake_apps GROUP BY price;

/*Return the price and average number of downloads grouped by price. Round the averages to the nearest integer.*/
SELECT price, ROUND(AVG(downloads)) FROM fake_apps GROUP BY price;

/*Return the name and category and price of the most expensive app for each category.*/
SELECT name, category, MAX(price) FROM fake_apps  GROUP BY category;

/*Return the total number of apps whose name begin with the letter 'A'.*/
SELECT  COUNT(*) FROM fake_apps WHERE name LIKE 'A%';

/*Return the total number of downloads for apps belonging to the Sports or Health & Fitness category.*/
SELECT SUM(downloads) FROM fake_apps WHERE category = 'Sports' OR 'Health' OR 'Fitness';