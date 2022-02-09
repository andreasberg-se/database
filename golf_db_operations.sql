
--
-- 1. Get the age of Johan Andersson.
--

SELECT age FROM player WHERE name = "Johan Andersson";

-- --------------------------------------------------------

--
-- 2. Get the date from the contest Big Golf Cup Skövde.
--

SELECT contestdate FROM contest WHERE contestname = "Big Golf Cup Skövde";

-- --------------------------------------------------------

--
-- 3. Get the material of Johan Anderssons club.
--

SELECT c.material FROM club c INNER JOIN player p ON c.ssn = p.ssn WHERE p.name = "Johan Andersson";

-- Hint! Returns an empty result since he does not own a club.

-- --------------------------------------------------------

--
-- 4. Get all jackets owned by Johan Andersson.
--

SELECT j.brand FROM jacket j INNER JOIN player p ON j.ssn = p.ssn WHERE p.name = "Johan Andersson";

-- --------------------------------------------------------

--
-- 5. Get all players that completed in Big Golf Cup Skövde.
--

SELECT p.name FROM player p INNER JOIN compete cm ON cm.ssn = p.ssn INNER JOIN contest cn ON cn.contestname = cm.contestname WHERE cn.contestname = "Big Golf Cup Skövde";

-- --------------------------------------------------------

--
-- 6. Get wind (ms) during the contest Big Golf Cup Skövde.
--

SELECT w.wind FROM weather w INNER JOIN have h ON h.type = w.type INNER JOIN contest cn ON cn.contestname = h.contestname WHERE cn.contestname = "Big Golf Cup Skövde";

-- --------------------------------------------------------

--
-- 7. Get all players under 30 year old.
--

SELECT name FROM player WHERE age < 30;

-- --------------------------------------------------------

--
-- 8. Delete Johan Anderssons jackets.
--

DELETE jacket FROM jacket INNER JOIN player p ON p.ssn = jacket.ssn WHERE p.name = "Johan Andersson";

-- --------------------------------------------------------

--
-- 9. Delete Nicklas Jansson.
--

DELETE player FROM player WHERE name = "Nicklas Jansson";

-- --------------------------------------------------------

--
-- 10. Get the average age of all players (round to nearest number).
--

SELECT ROUND(AVG(age)) FROM player;

-- --------------------------------------------------------

