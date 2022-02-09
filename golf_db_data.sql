--
-- Table Data
--

INSERT INTO `player` (`ssn`, `name`, `age`) VALUES
('19941220-3333', 'Nicklas Jansson', 27),
('19960630-1111', 'Johan Andersson', 25),
('20000810-5522', 'Annika Persson', 21);

INSERT INTO `contest` (`contestname`, `contestdate`) VALUES
('Big Golf Cup Skövde', '2021-06-10');

INSERT INTO `compete` (`ssn`, `contestname`) VALUES
('19960630-1111', 'Big Golf Cup Skövde'),
('19941220-3333', 'Big Golf Cup Skövde'),
('20000810-5522', 'Big Golf Cup Skövde');

INSERT INTO `weather` (`type`, `wind`) VALUES
('Regn (hagel)', 10);

INSERT INTO `have` (`contestname`, `type`, `moment`) VALUES
('Big Golf Cup Skövde', 'Regn (hagel)', '12:00:00');

INSERT INTO `jacket` (`brand`, `size`, `material`, `ssn`) VALUES
('Nike', 'XXL', 'Goretex', '19960630-1111'),
('North Bend', 'XXL', 'Fleece', '19960630-1111');

INSERT INTO `construction` (`serialnumber`, `hardness`) VALUES
('09876543-21', 5),
('12345678-90', 10);

INSERT INTO `club` (`number`, `material`, `serialnumber`, `ssn`) VALUES
(1, 'Trä', '12345678-90', '19941220-3333'),
(1, 'Trä', '09876543-21', '20000810-5522');

