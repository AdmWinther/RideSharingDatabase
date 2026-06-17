USE RideSharingDatabase;

-- ============================================================================
-- ROLES :  it is populated by default at the time of creation of the database.
-- ============================================================================

-- ============================================================================
-- COUNTRIES
-- ============================================================================
INSERT INTO countries (name) VALUES ('Denmark'), ('Sweden'), ('Norway'), ('Germany'), ('Netherlands');

-- ============================================================================
-- CITIES (3 per country = 15 cities)
-- ============================================================================
INSERT INTO cities (countryId, name) VALUES
-- Denmark
(1, 'Copenhagen'),
(1, 'Aarhus'),
(1, 'Odense'),
-- Sweden
(2, 'Stockholm'),
(2, 'Gothenburg'),
(2, 'Malmö'),
-- Norway
(3, 'Oslo'),
(3, 'Bergen'),
(3, 'Trondheim'),
-- Germany
(4, 'Berlin'),
(4, 'Hamburg'),
(4, 'Munich'),
-- Netherlands
(5, 'Amsterdam'),
(5, 'Rotterdam'),
(5, 'The Hague');

-- ============================================================================
-- ADDRESSES (at least 20 per city for passengers/drivers)
-- ============================================================================
INSERT INTO addresses (numInFloor, floor, number, street, cityId, postalCode) VALUES
-- Copenhagen (cityId: 1)
('A', 2, 45, 'Vesterbrogade', 1, '1620'),
('B', 3, 78, 'Nørrebrogade', 1, '2200'),
(NULL, 1, 123, 'Strøget', 1, '1160'),
('C', 5, 234, 'Amagerbrogade', 1, '2300'),
('2', 4, 56, 'Frederiksberg Allé', 1, '1820'),
(NULL, 0, 89, 'Kongens Nytorv', 1, '1050'),
('A', 6, 167, 'Østerbrogade', 1, '2100'),
('B', 2, 234, 'Gammel Kongevej', 1, '1610'),
(NULL, 3, 345, 'Nørre Voldgade', 1, '1358'),
('1', 1, 456, 'Amagertorv', 1, '1160'),
('C', 7, 567, 'H.C. Andersens Boulevard', 1, '1553'),
(NULL, 2, 678, 'Købmagergade', 1, '1150'),
('A', 4, 789, 'Langebro', 1, '1411'),
('B', 5, 890, 'Vester Voldgade', 1, '1552'),
(NULL, 1, 901, 'Gothergade', 1, '1123'),
('2', 3, 112, 'Bredgade', 1, '1260'),
('A', 6, 223, 'Store Kongensgade', 1, '1264'),
(NULL, 2, 334, 'Ny Østergade', 1, '1101'),
('B', 4, 445, 'Torvegade', 1, '1400'),
('1', 5, 556, 'Refshalevej', 1, '1432'),

-- Aarhus (cityId: 2)
(NULL, 1, 10, 'Store Torv', 2, '8000'),
('A', 2, 20, 'Ryesgade', 2, '8000'),
('B', 3, 30, 'Frederiksgade', 2, '8000'),
(NULL, 4, 40, 'Vestergade', 2, '8000'),
('1', 1, 50, 'Søndergade', 2, '8000'),
('C', 5, 60, 'Nørregade', 2, '8000'),
(NULL, 2, 70, 'Østergade', 2, '8000'),
('A', 3, 80, 'Klostergade', 2, '8000'),
('2', 4, 90, 'Graven', 2, '8000'),
(NULL, 1, 100, 'Mejlgade', 2, '8000'),
('B', 5, 110, 'Jægergårdsgade', 2, '8000'),
(NULL, 2, 120, 'Trøjborg Allé', 2, '8000'),
('A', 6, 130, 'Randersvej', 2, '8200'),
('1', 3, 140, 'Viborgvej', 2, '8210'),
(NULL, 1, 150, 'Silkeborgvej', 2, '8000'),
('C', 4, 160, 'Marselis Boulevard', 2, '8000'),
(NULL, 2, 170, 'Åboulevarden', 2, '8000'),
('B', 5, 180, 'Frederiks Allé', 2, '8000'),
('2', 3, 190, 'Mindegade', 2, '8000'),
(NULL, 1, 200, 'Vester Allé', 2, '8000'),

-- Odense (cityId: 3)
(NULL, 1, 15, 'Vestergade', 3, '5000'),
('A', 2, 25, 'Kongensgade', 3, '5000'),
('B', 3, 35, 'Overgade', 3, '5000'),
(NULL, 1, 45, 'Nørregade', 3, '5000'),
('1', 4, 55, 'Østergade', 3, '5000'),
('C', 2, 65, 'Filosofgangen', 3, '5000'),
(NULL, 3, 75, 'Albanigade', 3, '5000'),
('A', 5, 85, 'Tinghusgade', 3, '5000'),
('2', 1, 95, 'Brandts Passage', 3, '5000'),
(NULL, 2, 105, 'Vindegade', 3, '5000'),
('B', 4, 115, 'Klosterbakken', 3, '5000'),
(NULL, 3, 125, 'Hunderupvej', 3, '5230'),
('A', 6, 135, 'Munkebjergvej', 3, '5230'),
('1', 2, 145, 'Sdr. Boulevard', 3, '5000'),
(NULL, 1, 155, 'Nyborgvej', 3, '5000'),
('C', 5, 165, 'Falen', 3, '5000'),
(NULL, 3, 175, 'Rugårdsvej', 3, '5000'),
('B', 4, 185, 'Skibhusvej', 3, '5000'),
('2', 2, 195, 'Thomas B. Thriges Gade', 3, '5000'),
(NULL, 1, 205, 'Odins Kvarter', 3, '5000'),

-- Stockholm (cityId: 4)
(NULL, 2, 12, 'Drottninggatan', 4, '111 51'),
('A', 3, 24, 'Kungsgatan', 4, '111 43'),
('B', 4, 36, 'Sveavägen', 4, '111 34'),
(NULL, 1, 48, 'Hamngatan', 4, '111 47'),
('1', 5, 60, 'Birger Jarlsgatan', 4, '114 34'),
('C', 2, 72, 'Strandvägen', 4, '114 56'),
(NULL, 3, 84, 'Östermalmstor', 4, '114 42'),
('A', 6, 96, 'Götgatan', 4, '116 21'),
('2', 1, 108, 'Folkungagatan', 4, '116 30'),
(NULL, 4, 120, 'Ringvägen', 4, '118 60'),
('B', 5, 132, 'Hornsgatan', 4, '117 34'),
(NULL, 2, 144, 'Södermalmsallén', 4, '118 28'),
('A', 3, 156, 'Kungsholmsgatan', 4, '112 27'),
('1', 6, 168, 'Fleminggatan', 4, '112 26'),
(NULL, 1, 180, 'Sankt Eriksgatan', 4, '113 43'),
('C', 4, 192, 'Karlbergsvägen', 4, '113 27'),
(NULL, 2, 204, 'Vasagatan', 4, '111 20'),
('B', 5, 216, 'Klarabergsgatan', 4, '111 21'),
('2', 3, 228, 'Sergels Torg', 4, '111 57'),
(NULL, 1, 240, 'Mäster Samuelsgatan', 4, '111 44'),

-- Gothenburg (cityId: 5)
(NULL, 1, 11, 'Avenyn', 5, '411 36'),
('A', 2, 22, 'Kungsgatan', 5, '411 19'),
('B', 3, 33, 'Linnégatan', 5, '413 04'),
(NULL, 4, 44, 'Vasagatan', 5, '411 24'),
('1', 1, 55, 'Östra Hamngatan', 5, '411 09'),
('C', 5, 66, 'Södra Vägen', 5, '412 54'),
(NULL, 2, 77, 'Järntorget', 5, '413 01'),
('A', 3, 88, 'Haga Nygata', 5, '413 01'),
('2', 6, 99, 'Tredje Långgatan', 5, '413 03'),
(NULL, 1, 110, 'Andra Långgatan', 5, '413 03'),
('B', 4, 121, 'Första Långgatan', 5, '413 03'),
(NULL, 2, 132, 'Stigbergsliden', 5, '414 63'),
('A', 5, 143, 'Aschebergsgatan', 5, '411 27'),
('1', 3, 154, 'Engelbrektsgatan', 5, '411 37'),
(NULL, 1, 165, 'Kungsportsavenyn', 5, '411 36'),
('C', 6, 176, 'Vallgatan', 5, '411 16'),
(NULL, 2, 187, 'Stora Nygatan', 5, '411 08'),
('B', 4, 198, 'Västra Hamngatan', 5, '411 17'),
('2', 5, 209, 'Drottninggatan', 5, '411 14'),
(NULL, 1, 220, 'Magasinsgatan', 5, '411 18'),

-- Malmö (cityId: 6)
(NULL, 1, 13, 'Stortorget', 6, '211 34'),
('A', 2, 26, 'Södergatan', 6, '211 34'),
('B', 3, 39, 'Gustav Adolfs Torg', 6, '211 39'),
(NULL, 4, 52, 'Regementsgatan', 6, '211 42'),
('1', 1, 65, 'Davidshallsgatan', 6, '211 45'),
('C', 5, 78, 'Möllevångsgatan', 6, '214 20'),
(NULL, 2, 91, 'Bergsgatan', 6, '214 22'),
('A', 3, 104, 'Folkets Park', 6, '214 20'),
('2', 6, 117, 'Amiralsgatan', 6, '214 37'),
(NULL, 1, 130, 'Värnhemstorget', 6, '211 27'),
('B', 4, 143, 'Triangeln', 6, '217 44'),
(NULL, 2, 156, 'Monbijougatan', 6, '211 53'),
('A', 5, 169, 'Dalaplan', 6, '211 24'),
('1', 3, 182, 'Fersens väg', 6, '211 42'),
(NULL, 1, 195, 'Hans Michelsensgatan', 6, '211 20'),
('C', 6, 208, 'Stora Nygatan', 6, '211 37'),
(NULL, 2, 221, 'Lilla Torg', 6, '211 34'),
('B', 4, 234, 'Kalendegatan', 6, '211 35'),
('2', 5, 247, 'Södra Förstadsgatan', 6, '211 43'),
(NULL, 1, 260, 'Spångatan', 6, '211 33'),

-- Oslo (cityId: 7)
(NULL, 2, 14, 'Karl Johans gate', 7, '0154'),
('A', 3, 28, 'Storgata', 7, '0155'),
('B', 4, 42, 'Grensen', 7, '0159'),
(NULL, 1, 56, 'Torggata', 7, '0181'),
('1', 5, 70, 'Thorvald Meyers gate', 7, '0555'),
('C', 2, 84, 'Bogstadveien', 7, '0366'),
(NULL, 3, 98, 'Bygdøy allé', 7, '0262'),
('A', 6, 112, 'Hegdehaugsveien', 7, '0352'),
('2', 1, 126, 'Grünerløkka', 7, '0552'),
(NULL, 4, 140, 'Markveien', 7, '0554'),
('B', 5, 154, 'Olaf Ryes plass', 7, '0552'),
(NULL, 2, 168, 'Sofienberggata', 7, '0558'),
('A', 3, 182, 'Youngs gate', 7, '0181'),
('1', 6, 196, 'Akersgata', 7, '0158'),
(NULL, 1, 210, 'Rådhusplassen', 7, '0160'),
('C', 4, 224, 'Aker Brygge', 7, '0250'),
(NULL, 2, 238, 'Tjuvholmen', 7, '0252'),
('B', 5, 252, 'Munkedamsveien', 7, '0250'),
('2', 3, 266, 'Skippergata', 7, '0152'),
(NULL, 1, 280, 'Youngstorget', 7, '0181'),

-- Bergen (cityId: 8)
(NULL, 1, 16, 'Bryggen', 8, '5003'),
('A', 2, 32, 'Torgallmenningen', 8, '5014'),
('B', 3, 48, 'Småstrandgaten', 8, '5014'),
(NULL, 4, 64, 'Marken', 8, '5017'),
('1', 1, 80, 'Nygårdsgaten', 8, '5015'),
('C', 5, 96, 'Kaigaten', 8, '5013'),
(NULL, 2, 112, 'Kong Oscars gate', 8, '5017'),
('A', 3, 128, 'Olav Kyrres gate', 8, '5014'),
('2', 6, 144, 'Vaskerelven', 8, '5014'),
(NULL, 1, 160, 'Sandviksbodene', 8, '5035'),
('B', 4, 176, 'Nordnes', 8, '5005'),
(NULL, 2, 192, 'Nøstet', 8, '5011'),
('A', 5, 208, 'Møhlenpris', 8, '5006'),
('1', 3, 224, 'Solheimsgaten', 8, '5058'),
(NULL, 1, 240, 'Fløyen', 8, '5014'),
('C', 6, 256, 'Løvstakken', 8, '5096'),
(NULL, 2, 272, 'Sandviken', 8, '5035'),
('B', 4, 288, 'Eidsvåg', 8, '5105'),
('2', 5, 304, 'Årstad', 8, '5009'),
(NULL, 1, 320, 'Fana', 8, '5237'),

-- Trondheim (cityId: 9)
(NULL, 2, 17, 'Munkegata', 9, '7013'),
('A', 3, 34, 'Nordre gate', 9, '7011'),
('B', 4, 51, 'Søndre gate', 9, '7010'),
(NULL, 1, 68, 'Olav Tryggvasons gate', 9, '7011'),
('1', 5, 85, 'Thomas Angells gate', 9, '7030'),
('C', 2, 102, 'Bakklandet', 9, '7014'),
(NULL, 3, 119, 'Fjordgata', 9, '7010'),
('A', 6, 136, 'Kjøpmannsgata', 9, '7013'),
('2', 1, 153, 'Dronningens gate', 9, '7011'),
(NULL, 4, 170, 'Kongens gate', 9, '7012'),
('B', 5, 187, 'Elgeseter gate', 9, '7030'),
(NULL, 2, 204, 'Innherredsveien', 9, '7014'),
('A', 3, 221, 'Lade allé', 9, '7041'),
('1', 6, 238, 'Prinsens gate', 9, '7012'),
(NULL, 1, 255, 'Krambugata', 9, '7011'),
('C', 4, 272, 'Sandgata', 9, '7012'),
(NULL, 2, 289, 'Innherredsveien', 9, '7014'),
('B', 5, 306, 'Byåsen', 9, '7020'),
('2', 3, 323, 'Valentinlyst', 9, '7048'),
(NULL, 1, 340, 'Strindheim', 9, '7048'),

-- Berlin (cityId: 10)
(NULL, 1, 18, 'Unter den Linden', 10, '10117'),
('A', 2, 36, 'Friedrichstraße', 10, '10117'),
('B', 3, 54, 'Kurfürstendamm', 10, '10719'),
(NULL, 4, 72, 'Alexanderplatz', 10, '10178'),
('1', 1, 90, 'Karl-Marx-Allee', 10, '10243'),
('C', 5, 108, 'Prenzlauer Allee', 10, '10405'),
(NULL, 2, 126, 'Schönhauser Allee', 10, '10435'),
('A', 3, 144, 'Warschauer Straße', 10, '10243'),
('2', 6, 162, 'Bergmannstraße', 10, '10961'),
(NULL, 1, 180, 'Oranienstraße', 10, '10999'),
('B', 4, 198, 'Kantstraße', 10, '10623'),
(NULL, 2, 216, 'Tauentzienstraße', 10, '10789'),
('A', 5, 234, 'Potsdamer Platz', 10, '10785'),
('1', 3, 252, 'Sonnenallee', 10, '12045'),
(NULL, 1, 270, 'Hermannstraße', 10, '12049'),
('C', 6, 288, 'Mehringdamm', 10, '10961'),
(NULL, 2, 306, 'Gneisenaustraße', 10, '10961'),
('B', 4, 324, 'Kottbusser Damm', 10, '10967'),
('2', 5, 342, 'Wiener Straße', 10, '10999'),
(NULL, 1, 360, 'Rigaer Straße', 10, '10247'),

-- Hamburg (cityId: 11)
(NULL, 2, 19, 'Mönckebergstraße', 11, '20095'),
('A', 3, 38, 'Jungfernstieg', 11, '20354'),
('B', 4, 57, 'Reeperbahn', 11, '20359'),
(NULL, 1, 76, 'Große Freiheit', 11, '22767'),
('1', 5, 95, 'Sternschanze', 11, '20357'),
('C', 2, 114, 'Lange Reihe', 11, '20099'),
(NULL, 3, 133, 'Spitalerstraße', 11, '20095'),
('A', 6, 152, 'Steindamm', 11, '20099'),
('2', 1, 171, 'Hafenstraße', 11, '22769'),
(NULL, 4, 190, 'Elbchaussee', 11, '22763'),
('B', 5, 209, 'Ottenser Hauptstraße', 11, '22765'),
(NULL, 2, 228, 'Schulterblatt', 11, '20357'),
('A', 3, 247, 'Grindelallee', 11, '20146'),
('1', 6, 266, 'Rothenbaumchaussee', 11, '20148'),
(NULL, 1, 285, 'Alstertor', 11, '20095'),
('C', 4, 304, 'Neuer Wall', 11, '20354'),
(NULL, 2, 323, 'Hohe Bleichen', 11, '20354'),
('B', 5, 342, 'Große Bleichen', 11, '20354'),
('2', 3, 361, 'Gänsemarkt', 11, '20354'),
(NULL, 1, 380, 'Colonnaden', 11, '20354'),

-- Munich (cityId: 12)
(NULL, 2, 21, 'Marienplatz', 12, '80331'),
('A', 3, 42, 'Kaufingerstraße', 12, '80331'),
('B', 4, 63, 'Leopoldstraße', 12, '80802'),
(NULL, 1, 84, 'Maximilianstraße', 12, '80539'),
('1', 5, 105, 'Sendlinger Straße', 12, '80331'),
('C', 2, 126, 'Ludwigstraße', 12, '80539'),
(NULL, 3, 147, 'Schwabing', 12, '80799'),
('A', 6, 168, 'Odeonsplatz', 12, '80539'),
('2', 1, 189, 'Viktualienmarkt', 12, '80331'),
(NULL, 4, 210, 'Theatinerstraße', 12, '80333'),
('B', 5, 231, 'Residenzstraße', 12, '80333'),
(NULL, 2, 252, 'Brienner Straße', 12, '80333'),
('A', 3, 273, 'Schwanthalerstraße', 12, '80336'),
('1', 6, 294, 'Sonnenstraße', 12, '80331'),
(NULL, 1, 315, 'Bayerstraße', 12, '80335'),
('C', 4, 336, 'Arnulfstraße', 12, '80335'),
(NULL, 2, 357, 'Karlsplatz', 12, '80335'),
('B', 5, 378, 'Tal', 12, '80331'),
('2', 3, 399, 'Rosenstraße', 12, '80331'),
(NULL, 1, 420, 'Isartorplatz', 12, '80331'),

-- Amsterdam (cityId: 13)
(NULL, 2, 23, 'Damrak', 13, '1012 LG'),
('A', 3, 46, 'Kalverstraat', 13, '1012 NX'),
('B', 4, 69, 'Leidsestraat', 13, '1017 NT'),
(NULL, 1, 92, 'Rokin', 13, '1012 KR'),
('1', 5, 115, 'Nieuwezijds Voorburgwal', 13, '1012 RJ'),
('C', 2, 138, 'Spuistraat', 13, '1012 TS'),
(NULL, 3, 161, 'Prinsengracht', 13, '1015 DT'),
('A', 6, 184, 'Keizersgracht', 13, '1015 CN'),
('2', 1, 207, 'Herengracht', 13, '1016 BM'),
(NULL, 4, 230, 'Reguliersbreestraat', 13, '1017 CN'),
('B', 5, 253, 'Utrechtsestraat', 13, '1017 VN'),
(NULL, 2, 276, 'Vijzelstraat', 13, '1017 HL'),
('A', 3, 299, 'Museumplein', 13, '1071 DJ'),
('1', 6, 322, 'P.C. Hooftstraat', 13, '1071 BX'),
(NULL, 1, 345, 'Van Baerlestraat', 13, '1071 AN'),
('C', 4, 368, 'Overtoom', 13, '1054 HK'),
(NULL, 2, 391, 'Kinkerstraat', 13, '1053 DX'),
('B', 5, 414, 'De Pijp', 13, '1073 CJ'),
('2', 3, 437, 'Albert Cuypstraat', 13, '1072 CT'),
(NULL, 1, 460, 'Sarphatipark', 13, '1073 CZ'),

-- Rotterdam (cityId: 14)
(NULL, 2, 25, 'Lijnbaan', 14, '3012 ER'),
('A', 3, 50, 'Coolsingel', 14, '3011 AD'),
('B', 4, 75, 'Witte de Withstraat', 14, '3012 BP'),
(NULL, 1, 100, 'Nieuwe Binnenweg', 14, '3014 GK'),
('1', 5, 125, 'Mauritsweg', 14, '3012 JR'),
('C', 2, 150, 'Schiedamsesingel', 14, '3011 EK'),
(NULL, 3, 175, 'Schiedamsedijk', 14, '3011 EL'),
('A', 6, 200, 'Mariniersweg', 14, '3011 NJ'),
('2', 1, 225, 'Blaak', 14, '3011 TA'),
('B', 4, 250, 'Hoogstraat', 14, '3011 PV'),
(NULL, 2, 275, 'Grotekerkplein', 14, '3011 GC'),
('A', 5, 300, 'Meent', 14, '3011 JG'),
('1', 3, 325, 'Binnenrotte', 14, '3011 HC'),
(NULL, 1, 350, 'Kipstraat', 14, '3011 RS'),
('C', 6, 375, 'Karel Doormanstraat', 14, '3012 GH'),
(NULL, 2, 400, 'Eendrachtsweg', 14, '3012 LB'),
('B', 4, 425, 'Westblaak', 14, '3012 KK'),
('2', 5, 450, 'Aert van Nesstraat', 14, '3012 CA'),
('A', 3, 475, 'Kruiskade', 14, '3012 EE'),
(NULL, 1, 500, 'Weena', 14, '3012 NJ'),

-- The Hague (cityId: 15) - 20 addresses
(NULL, 2, 27, 'Grote Marktstraat', 15, '2511 BH'),
('A', 3, 54, 'Spuistraat', 15, '2511 BC'),
('B', 4, 81, 'Noordeinde', 15, '2514 GC'),
(NULL, 1, 108, 'Lange Voorhout', 15, '2514 ED'),
('1', 5, 135, 'Kneuterdijk', 15, '2514 EN'),
('C', 2, 162, 'Hofweg', 15, '2511 AA'),
(NULL, 3, 189, 'Plaats', 15, '2511 CR'),
('A', 6, 216, 'Denneweg', 15, '2514 CG'),
('2', 1, 243, 'Frederikstraat', 15, '2514 LK'),
(NULL, 4, 270, 'Prinsegracht', 15, '2512 GA'),
('B', 5, 297, 'Hooigracht', 15, '2514 AX'),
(NULL, 2, 324, 'Tournooiveld', 15, '2511 CX'),
('A', 3, 351, 'Korte Voorhout', 15, '2511 CW'),
('1', 6, 378, 'Buitenhof', 15, '2513 AH'),
(NULL, 1, 405, 'Groenmarkt', 15, '2511 EG'),
('C', 4, 432, 'Riviervismarkt', 15, '2513 AM'),
(NULL, 2, 459, 'Dagelijkse Groenmarkt', 15, '2513 AL'),
('B', 5, 486, 'Prinsestraat', 15, '2513 CA'),
('2', 3, 513, 'Hoogstraat', 15, '2513 AB'),
(NULL, 1, 540, 'Venestraat', 15, '2513 EC');



-- ============================================================================
-- PERSONS (At least 50 persons: passengers, drivers, and admin)
-- Distribution: ~15 per Danish city, ~3 drivers per city minimum
-- ============================================================================

INSERT INTO persons (firstName, lastName, emailAddress, birthday, billingAddressId, passwordHash) VALUES
-- Copenhagen passengers (addresses 1-20)
('Emma', 'Nielsen', 'emma.nielsen@email.dk', '1992-05-15', 1, '$2y$10$abcdef1234567890'),
('Oliver', 'Hansen', 'oliver.hansen@email.dk', '1988-08-22', 2, '$2y$10$abcdef1234567891'),
('Sophia', 'Jensen', 'sophia.jensen@email.dk', '1995-03-10', 3, '$2y$10$abcdef1234567892'),
('Lucas', 'Andersen', 'lucas.andersen@email.dk', '1990-11-30', 4, '$2y$10$abcdef1234567893'),
('Isabella', 'Petersen', 'isabella.petersen@email.dk', '1993-07-18', 5, '$2y$10$abcdef1234567894'),
('William', 'Christensen', 'william.christensen@email.dk', '1991-02-14', 6, '$2y$10$abcdef1234567895'),
('Mia', 'Larsen', 'mia.larsen@email.dk', '1987-09-25', 7, '$2y$10$abcdef1234567896'),
('Noah', 'Sørensen', 'noah.sorensen@email.dk', '1994-12-05', 8, '$2y$10$abcdef1234567897'),
('Ella', 'Rasmussen', 'ella.rasmussen@email.dk', '1989-04-20', 9, '$2y$10$abcdef1234567898'),
('Oscar', 'Jørgensen', 'oscar.jorgensen@email.dk', '1996-06-12', 10, '$2y$10$abcdef1234567899'),
('Freja', 'Madsen', 'freja.madsen@email.dk', '1991-01-08', 11, '$2y$10$abcdef1234567900'),
('Viktor', 'Møller', 'viktor.moller@email.dk', '1985-10-17', 12, '$2y$10$abcdef1234567901'),
('Alma', 'Olsen', 'alma.olsen@email.dk', '1992-05-29', 13, '$2y$10$abcdef1234567902'),
('August', 'Eriksen', 'august.eriksen@email.dk', '1988-08-03', 14, '$2y$10$abcdef1234567903'),
('Clara', 'Johansen', 'clara.johansen@email.dk', '1993-11-22', 15, '$2y$10$abcdef1234567904'),

-- Copenhagen drivers (addresses 16-20)
('Magnus', 'Pedersen', 'magnus.pedersen@email.dk', '1984-03-15', 16, '$2y$10$driver001'),
('Ida', 'Kristensen', 'ida.kristensen@email.dk', '1986-07-22', 17, '$2y$10$driver002'),
('Frederik', 'Thomsen', 'frederik.thomsen@email.dk', '1982-11-08', 18, '$2y$10$driver003'),
('Josefine', 'Poulsen', 'josefine.poulsen@email.dk', '1985-02-19', 19, '$2y$10$driver004'),
('Alexander', 'Knudsen', 'alexander.knudsen@email.dk', '1983-09-30', 20, '$2y$10$driver005'),

-- Aarhus passengers (addresses 21-35)
('Lærke', 'Berg', 'laerke.berg@email.dk', '1994-04-12', 21, '$2y$10$abcdef2000001'),
('Mikkel', 'Carlsen', 'mikkel.carlsen@email.dk', '1990-08-25', 22, '$2y$10$abcdef2000002'),
('Sofie', 'Dahl', 'sofie.dahl@email.dk', '1992-12-03', 23, '$2y$10$abcdef2000003'),
('Christian', 'Holm', 'christian.holm@email.dk', '1987-06-17', 24, '$2y$10$abcdef2000004'),
('Laura', 'Koch', 'laura.koch@email.dk', '1995-09-28', 25, '$2y$10$abcdef2000005'),
('Andreas', 'Bech', 'andreas.bech@email.dk', '1989-01-14', 26, '$2y$10$abcdef2000006'),
('Julie', 'Friis', 'julie.friis@email.dk', '1993-05-22', 27, '$2y$10$abcdef2000007'),
('Mathias', 'Gregersen', 'mathias.gregersen@email.dk', '1991-10-09', 28, '$2y$10$abcdef2000008'),
('Caroline', 'Henriksen', 'caroline.henriksen@email.dk', '1988-03-31', 29, '$2y$10$abcdef2000009'),
('Simon', 'Iversen', 'simon.iversen@email.dk', '1994-07-16', 30, '$2y$10$abcdef2000010'),
('Mathilde', 'Jakobsen', 'mathilde.jakobsen@email.dk', '1990-11-05', 31, '$2y$10$abcdef2000011'),
('Rasmus', 'Kjær', 'rasmus.kjaer@email.dk', '1986-02-23', 32, '$2y$10$abcdef2000012'),
('Emilie', 'Lund', 'emilie.lund@email.dk', '1992-08-11', 33, '$2y$10$abcdef2000013'),
('Nikolaj', 'Mikkelsen', 'nikolaj.mikkelsen@email.dk', '1989-12-28', 34, '$2y$10$abcdef2000014'),
('Anna', 'Nørgaard', 'anna.norgaard@email.dk', '1991-04-07', 35, '$2y$10$abcdef2000015'),

-- Aarhus drivers (addresses 36-40)
('Thomas', 'Østergaard', 'thomas.ostergaard@email.dk', '1983-05-19', 36, '$2y$10$driver101'),
('Maria', 'Paulsen', 'maria.paulsen@email.dk', '1985-09-14', 37, '$2y$10$driver102'),
('Daniel', 'Rasmussen', 'daniel.rasmussen@email.dk', '1984-01-27', 38, '$2y$10$driver103'),
('Sara', 'Schmidt', 'sara.schmidt@email.dk', '1982-06-08', 39, '$2y$10$driver104'),
('Kasper', 'Thygesen', 'kasper.thygesen@email.dk', '1986-11-22', 40, '$2y$10$driver105'),

-- Odense passengers (addresses 41-55)
('Victoria', 'Vestergaard', 'victoria.vestergaard@email.dk', '1993-03-18', 41, '$2y$10$abcdef3000001'),
('Philip', 'Winkler', 'philip.winkler@email.dk', '1990-07-29', 42, '$2y$10$abcdef3000002'),
('Cecilie', 'Andersen', 'cecilie.andersen@email.dk', '1988-11-14', 43, '$2y$10$abcdef3000003'),
('Jonas', 'Bak', 'jonas.bak@email.dk', '1995-02-26', 44, '$2y$10$abcdef3000004'),
('Amalie', 'Christoffersen', 'amalie.christoffersen@email.dk', '1991-06-09', 45, '$2y$10$abcdef3000005'),
('Marcus', 'Dam', 'marcus.dam@email.dk', '1987-10-21', 46, '$2y$10$abcdef3000006'),
('Nanna', 'Enevoldsen', 'nanna.enevoldsen@email.dk', '1994-01-03', 47, '$2y$10$abcdef3000007'),
('Benjamin', 'Frandsen', 'benjamin.frandsen@email.dk', '1989-05-15', 48, '$2y$10$abcdef3000008'),
('Isabella', 'Gade', 'isabella.gade@email.dk', '1992-09-27', 49, '$2y$10$abcdef3000009'),
('Emil', 'Hald', 'emil.hald@email.dk', '1986-12-08', 50, '$2y$10$abcdef3000010'),
('Katrine', 'Ibsen', 'katrine.ibsen@email.dk', '1993-04-19', 51, '$2y$10$abcdef3000011'),
('Mads', 'Jeppesen', 'mads.jeppesen@email.dk', '1990-08-31', 52, '$2y$10$abcdef3000012'),
('Silje', 'Krog', 'silje.krog@email.dk', '1988-01-12', 53, '$2y$10$abcdef3000013'),
('Tobias', 'Laursen', 'tobias.laursen@email.dk', '1995-05-24', 54, '$2y$10$abcdef3000014'),
('Agnes', 'Marcussen', 'agnes.marcussen@email.dk', '1991-09-05', 55, '$2y$10$abcdef3000015'),

-- Odense drivers (addresses 56-60)
('Henrik', 'Nordahl', 'henrik.nordahl@email.dk', '1984-02-16', 56, '$2y$10$driver201'),
('Lise', 'Overgaard', 'lise.overgaard@email.dk', '1983-06-28', 57, '$2y$10$driver202'),
('Peter', 'Petersen', 'peter.petersen@email.dk', '1985-10-10', 58, '$2y$10$driver203'),
('Anne', 'Qvist', 'anne.qvist@email.dk', '1982-03-22', 59, '$2y$10$driver204'),
('Lars', 'Riis', 'lars.riis@email.dk', '1986-07-04', 60, '$2y$10$driver205'),

-- Stockholm passengers (addresses 61-75)
('Erik', 'Andersson', 'erik.andersson@email.se', '1992-04-15', 61, '$2y$10$abcdef4000001'),
('Anna', 'Bergström', 'anna.bergstrom@email.se', '1989-08-27', 62, '$2y$10$abcdef4000002'),
('Johan', 'Carlsson', 'johan.carlsson@email.se', '1994-12-09', 63, '$2y$10$abcdef4000003'),
('Maria', 'Davidsson', 'maria.davidsson@email.se', '1990-03-21', 64, '$2y$10$abcdef4000004'),
('Gustav', 'Eriksson', 'gustav.eriksson@email.se', '1987-07-03', 65, '$2y$10$abcdef4000005'),
('Lisa', 'Fransson', 'lisa.fransson@email.se', '1993-11-15', 66, '$2y$10$abcdef4000006'),
('Anders', 'Gustafsson', 'anders.gustafsson@email.se', '1991-02-27', 67, '$2y$10$abcdef4000007'),
('Karin', 'Hansson', 'karin.hansson@email.se', '1988-06-09', 68, '$2y$10$abcdef4000008'),
('Lars', 'Ivarsson', 'lars.ivarsson@email.se', '1995-10-21', 69, '$2y$10$abcdef4000009'),
('Eva', 'Johansson', 'eva.johansson@email.se', '1989-01-02', 70, '$2y$10$abcdef4000010'),
('Nils', 'Karlsson', 'nils.karlsson@email.se', '1992-05-14', 71, '$2y$10$abcdef4000011'),
('Ingrid', 'Larsson', 'ingrid.larsson@email.se', '1986-09-26', 72, '$2y$10$abcdef4000012'),
('Sven', 'Mattsson', 'sven.mattsson@email.se', '1994-01-07', 73, '$2y$10$abcdef4000013'),
('Astrid', 'Nilsson', 'astrid.nilsson@email.se', '1990-05-19', 74, '$2y$10$abcdef4000014'),
('Olof', 'Olsson', 'olof.olsson@email.se', '1988-09-30', 75, '$2y$10$abcdef4000015'),

-- Stockholm drivers (addresses 76-80)
('Per', 'Persson', 'per.persson@email.se', '1983-02-11', 76, '$2y$10$driver301'),
('Margareta', 'Qvist', 'margareta.qvist@email.se', '1985-06-23', 77, '$2y$10$driver302'),
('Björn', 'Robertsson', 'bjorn.robertsson@email.se', '1984-10-05', 78, '$2y$10$driver303'),
('Ulla', 'Svensson', 'ulla.svensson@email.se', '1982-01-17', 79, '$2y$10$driver304'),
('Karl', 'Thorsson', 'karl.thorsson@email.se', '1986-05-29', 80, '$2y$10$driver305'),

-- Gothenburg passengers (addresses 81-95)
('Elsa', 'Abrahamsson', 'elsa.abrahamsson@email.se', '1991-03-12', 81, '$2y$10$abcdef5000001'),
('Henrik', 'Bengtsson', 'henrik.bengtsson@email.se', '1989-07-24', 82, '$2y$10$abcdef5000002'),
('Sofia', 'Christensson', 'sofia.christensson@email.se', '1993-11-05', 83, '$2y$10$abcdef5000003'),
('Magnus', 'Danielsson', 'magnus.danielsson@email.se', '1990-02-17', 84, '$2y$10$abcdef5000004'),
('Emma', 'Eklund', 'emma.eklund@email.se', '1987-06-29', 85, '$2y$10$abcdef5000005'),
('Oscar', 'Forsberg', 'oscar.forsberg@email.se', '1994-10-11', 86, '$2y$10$abcdef5000006'),
('Linnea', 'Gunnarsson', 'linnea.gunnarsson@email.se', '1992-01-23', 87, '$2y$10$abcdef5000007'),
('Viktor', 'Håkansson', 'viktor.hakansson@email.se', '1988-05-05', 88, '$2y$10$abcdef5000008'),
('Ebba', 'Isaksson', 'ebba.isaksson@email.se', '1995-09-17', 89, '$2y$10$abcdef5000009'),
('Filip', 'Jansson', 'filip.jansson@email.se', '1991-12-29', 90, '$2y$10$abcdef5000010'),
('Wilma', 'Källström', 'wilma.kallstrom@email.se', '1989-04-10', 91, '$2y$10$abcdef5000011'),
('Emil', 'Lindberg', 'emil.lindberg@email.se', '1993-08-22', 92, '$2y$10$abcdef5000012'),
('Maja', 'Månsson', 'maja.mansson@email.se', '1986-12-03', 93, '$2y$10$abcdef5000013'),
('Axel', 'Nordin', 'axel.nordin@email.se', '1992-03-15', 94, '$2y$10$abcdef5000014'),
('Alice', 'Öberg', 'alice.oberg@email.se', '1990-07-27', 95, '$2y$10$abcdef5000015'),

-- Gothenburg drivers (addresses 96-100)
('Gunnar', 'Paulsson', 'gunnar.paulsson@email.se', '1984-11-08', 96, '$2y$10$driver401'),
('Annika', 'Roos', 'annika.roos@email.se', '1983-02-20', 97, '$2y$10$driver402'),
('Stefan', 'Sandström', 'stefan.sandstrom@email.se', '1985-06-02', 98, '$2y$10$driver403'),

-- Admin user
('Admin', 'User', 'admin@uber.system', '1980-01-01', 1, '$2y$10$adminpassword');

-- ============================================================================
-- PERSON TO ROLE mappings
-- roleId: 1=admin, 2=passenger, 3=driver
-- ============================================================================

INSERT INTO personToRole (personId, roleId, isActive) VALUES
-- Copenhagen passengers (persons 1-15)
(1, 2, true), (2, 2, true), (3, 2, true), (4, 2, true), (5, 2, true),
(6, 2, true), (7, 2, true), (8, 2, true), (9, 2, true), (10, 2, true),
(11, 2, true), (12, 2, true), (13, 2, true), (14, 2, true), (15, 2, true),

-- Copenhagen drivers (persons 16-20) - also passengers
(16, 2, true), (16, 3, true),
(17, 2, true), (17, 3, true),
(18, 2, true), (18, 3, true),
(19, 2, true), (19, 3, true),
(20, 2, true), (20, 3, true),

-- Aarhus passengers (persons 21-35)
(21, 2, true), (22, 2, true), (23, 2, true), (24, 2, true), (25, 2, true),
(26, 2, true), (27, 2, true), (28, 2, true), (29, 2, true), (30, 2, true),
(31, 2, true), (32, 2, true), (33, 2, true), (34, 2, true), (35, 2, true),

-- Aarhus drivers (persons 36-40) - also passengers
(36, 2, true), (36, 3, true),
(37, 2, true), (37, 3, true),
(38, 2, true), (38, 3, true),
(39, 2, true), (39, 3, true),
(40, 2, true), (40, 3, true),

-- Odense passengers (persons 41-55)
(41, 2, true), (42, 2, true), (43, 2, true), (44, 2, true), (45, 2, true),
(46, 2, true), (47, 2, true), (48, 2, true), (49, 2, true), (50, 2, true),
(51, 2, true), (52, 2, true), (53, 2, true), (54, 2, true), (55, 2, true),

-- Odense drivers (persons 56-60) - also passengers
(56, 2, true), (56, 3, true),
(57, 2, true), (57, 3, true),
(58, 2, true), (58, 3, true),
(59, 2, true), (59, 3, true),
(60, 2, true), (60, 3, true),

-- Stockholm passengers (persons 61-75)
(61, 2, true), (62, 2, true), (63, 2, true), (64, 2, true), (65, 2, true),
(66, 2, true), (67, 2, true), (68, 2, true), (69, 2, true), (70, 2, true),
(71, 2, true), (72, 2, true), (73, 2, true), (74, 2, true), (75, 2, true),

-- Stockholm drivers (persons 76-80) - also passengers
(76, 2, true), (76, 3, true),
(77, 2, true), (77, 3, true),
(78, 2, true), (78, 3, true),
(79, 2, true), (79, 3, true),
(80, 2, true), (80, 3, true),

-- Gothenburg passengers (persons 81-95)
(81, 2, true), (82, 2, true), (83, 2, true), (84, 2, true), (85, 2, true),
(86, 2, true), (87, 2, true), (88, 2, true), (89, 2, true), (90, 2, true),
(91, 2, true), (92, 2, true), (93, 2, true), (94, 2, true), (95, 2, true),

-- Gothenburg drivers (persons 96-98) - also passengers
(96, 2, true), (96, 3, true),
(97, 2, true), (97, 3, true),
(98, 2, true), (98, 3, true),

-- Admin (person 99)
(99, 1, true);

INSERT INTO personsToAddresses (personId, addressId, name) VALUES
-- Copenhagen passengers with multiple addresses
(1, 1, 'Home'), (1, 6, 'Work'), (1, 10, 'Gym'),
(2, 2, 'Home'), (2, 8, 'Office'),
(3, 3, 'Home'), (3, 12, 'Parents'),
(4, 4, 'Home'), (4, 15, 'Work'),
(5, 5, 'Home'), (5, 9, 'Favorite Restaurant'),
(6, 6, 'Home'), (6, 1, 'Friend'),
(7, 7, 'Home'), (7, 14, 'Gym'),
(8, 8, 'Home'), (8, 2, 'Office'),
(9, 9, 'Home'), (9, 20, 'Weekend House'),
(10, 10, 'Home'), (10, 3, 'Work'),
(11, 11, 'Home'), (11, 17, 'Office'), (11, 5, 'Gym'),
(12, 12, 'Home'), (12, 4, 'Parents'),
(13, 13, 'Home'), (13, 19, 'Work'),
(14, 14, 'Home'), (14, 7, 'Sister'),
(15, 15, 'Home'), (15, 11, 'Office'),

-- Copenhagen drivers with multiple addresses
(16, 16, 'Home'), (16, 1, 'Pickup Zone A'), (16, 10, 'Pickup Zone B'),
(17, 17, 'Home'), (17, 5, 'Pickup Zone'), (17, 15, 'Rest Area'),
(18, 18, 'Home'), (18, 8, 'Pickup Zone'), (18, 12, 'Service Station'),
(19, 19, 'Home'), (19, 3, 'Pickup Zone'), (19, 20, 'Rest Stop'),
(20, 20, 'Home'), (20, 6, 'Pickup Zone'), (20, 14, 'Gas Station'),

-- Aarhus passengers with multiple addresses
(21, 21, 'Home'), (21, 25, 'Work'),
(22, 22, 'Home'), (22, 30, 'Office'),
(23, 23, 'Home'), (23, 27, 'Gym'),
(24, 24, 'Home'), (24, 35, 'Parents'),
(25, 25, 'Home'), (25, 21, 'Friend'),
(26, 26, 'Home'), (26, 32, 'Work'),
(27, 27, 'Home'), (27, 28, 'Office'),
(28, 28, 'Home'), (28, 34, 'Gym'),
(29, 29, 'Home'), (29, 26, 'Boyfriend'),
(30, 30, 'Home'), (30, 23, 'Work'),
(31, 31, 'Home'), (31, 38, 'Office'), (31, 22, 'Coffee Shop'),
(32, 32, 'Home'), (32, 29, 'Gym'),
(33, 33, 'Home'), (33, 25, 'Work'),
(34, 34, 'Home'), (34, 40, 'Parents'),
(35, 35, 'Home'), (35, 31, 'Office'),

-- Aarhus drivers with multiple addresses
(36, 36, 'Home'), (36, 21, 'Pickup Zone A'), (36, 30, 'Pickup Zone B'),
(37, 37, 'Home'), (37, 25, 'Pickup Zone'), (37, 35, 'Rest Area'),
(38, 38, 'Home'), (38, 28, 'Pickup Zone'), (38, 32, 'Gas Station'),
(39, 39, 'Home'), (39, 23, 'Pickup Zone'), (39, 40, 'Service Station'),
(40, 40, 'Home'), (40, 26, 'Pickup Zone'), (40, 34, 'Rest Stop'),

-- Odense passengers with multiple addresses
(41, 41, 'Home'), (41, 45, 'Work'),
(42, 42, 'Home'), (42, 50, 'Office'),
(43, 43, 'Home'), (43, 47, 'Gym'),
(44, 44, 'Home'), (44, 55, 'Parents'),
(45, 45, 'Home'), (45, 41, 'Friend'),
(46, 46, 'Home'), (46, 52, 'Work'),
(47, 47, 'Home'), (47, 48, 'Office'),
(48, 48, 'Home'), (48, 54, 'Gym'),
(49, 49, 'Home'), (49, 46, 'Boyfriend'),
(50, 50, 'Home'), (50, 43, 'Work'),
(51, 51, 'Home'), (51, 58, 'Office'), (51, 42, 'Shopping'),
(52, 52, 'Home'), (52, 49, 'Gym'),
(53, 53, 'Home'), (53, 45, 'Work'),
(54, 54, 'Home'), (54, 60, 'Parents'),
(55, 55, 'Home'), (55, 51, 'Office'),

-- Odense drivers with multiple addresses
(56, 56, 'Home'), (56, 41, 'Pickup Zone A'), (56, 50, 'Pickup Zone B'),
(57, 57, 'Home'), (57, 45, 'Pickup Zone'), (57, 55, 'Rest Area'),
(58, 58, 'Home'), (58, 48, 'Pickup Zone'), (58, 52, 'Gas Station'),
(59, 59, 'Home'), (59, 43, 'Pickup Zone'), (59, 60, 'Service Station'),
(60, 60, 'Home'), (60, 46, 'Pickup Zone'), (60, 54, 'Rest Stop'),

-- Stockholm passengers with multiple addresses
(61, 61, 'Home'), (61, 65, 'Work'),
(62, 62, 'Home'), (62, 70, 'Office'),
(63, 63, 'Home'), (63, 67, 'Gym'),
(64, 64, 'Home'), (64, 75, 'Parents'),
(65, 65, 'Home'), (65, 61, 'Friend'),
(66, 66, 'Home'), (66, 72, 'Work'),
(67, 67, 'Home'), (67, 68, 'Office'),
(68, 68, 'Home'), (68, 74, 'Gym'),
(69, 69, 'Home'), (69, 66, 'Girlfriend'),
(70, 70, 'Home'), (70, 63, 'Work'),
(71, 71, 'Home'), (71, 78, 'Office'), (71, 62, 'Restaurant'),
(72, 72, 'Home'), (72, 69, 'Gym'),
(73, 73, 'Home'), (73, 65, 'Work'),
(74, 74, 'Home'), (74, 80, 'Parents'),
(75, 75, 'Home'), (75, 71, 'Office'),

-- Stockholm drivers with multiple addresses
(76, 76, 'Home'), (76, 61, 'Pickup Zone A'), (76, 70, 'Pickup Zone B'),
(77, 77, 'Home'), (77, 65, 'Pickup Zone'), (77, 75, 'Rest Area'),
(78, 78, 'Home'), (78, 68, 'Pickup Zone'), (78, 72, 'Gas Station'),
(79, 79, 'Home'), (79, 63, 'Pickup Zone'), (79, 80, 'Service Station'),
(80, 80, 'Home'), (80, 66, 'Pickup Zone'), (80, 74, 'Rest Stop'),

-- Gothenburg passengers with multiple addresses
(81, 81, 'Home'), (81, 85, 'Work'),
(82, 82, 'Home'), (82, 90, 'Office'),
(83, 83, 'Home'), (83, 87, 'Gym'),
(84, 84, 'Home'), (84, 95, 'Parents'),
(85, 85, 'Home'), (85, 81, 'Friend'),
(86, 86, 'Home'), (86, 92, 'Work'),
(87, 87, 'Home'), (87, 88, 'Office'),
(88, 88, 'Home'), (88, 94, 'Gym'),
(89, 89, 'Home'), (89, 86, 'Boyfriend'),
(90, 90, 'Home'), (90, 83, 'Work'),
(91, 91, 'Home'), (91, 98, 'Office'), (91, 82, 'Café'),
(92, 92, 'Home'), (92, 89, 'Gym'),
(93, 93, 'Home'), (93, 85, 'Work'),
(94, 94, 'Home'), (94, 100, 'Parents'),
(95, 95, 'Home'), (95, 91, 'Office'),

-- Gothenburg drivers with multiple addresses
(96, 96, 'Home'), (96, 81, 'Pickup Zone A'), (96, 90, 'Pickup Zone B'),
(97, 97, 'Home'), (97, 85, 'Pickup Zone'), (97, 95, 'Rest Area'),
(98, 98, 'Home'), (98, 88, 'Pickup Zone'), (98, 92, 'Gas Station'),

-- Admin with office address
(99, 1, 'Main Office');



USE uber;

-- ============================================================================
-- CAR MANUFACTURERS (5 manufacturers with 5+ models each)
-- ============================================================================

INSERT INTO carManufacturers (name) VALUES
('Toyota'),
('Volkswagen'),
('Tesla'),
('Volvo'),
('BMW');

-- ============================================================================
-- CAR MODELS (5+ models per manufacturer = 25+ models)
-- ============================================================================

INSERT INTO carModels (manufacturerId, name) VALUES
-- Toyota (manufacturerId: 1)
(1, 'Camry'),
(1, 'Corolla'),
(1, 'RAV4'),
(1, 'Prius'),
(1, 'Highlander'),
(1, 'Yaris'),

-- Volkswagen (manufacturerId: 2)
(2, 'Golf'),
(2, 'Passat'),
(2, 'Tiguan'),
(2, 'Polo'),
(2, 'Touareg'),
(2, 'Arteon'),

-- Tesla (manufacturerId: 3)
(3, 'Model 3'),
(3, 'Model S'),
(3, 'Model X'),
(3, 'Model Y'),
(3, 'Cybertruck'),

-- Volvo (manufacturerId: 4)
(4, 'XC90'),
(4, 'XC60'),
(4, 'S60'),
(4, 'V90'),
(4, 'XC40'),
(4, 'S90'),

-- BMW (manufacturerId: 5)
(5, '3 Series'),
(5, '5 Series'),
(5, 'X5'),
(5, 'X3'),
(5, 'i4'),
(5, '7 Series');

-- ============================================================================
-- CARS (40+ cars for our drivers)
-- Mix of capacities, features, and years
-- ============================================================================

INSERT INTO cars (lisencePlate, modelId, manufacturingYear, capacity, haveBicycleRack, mayUseTrunk, haveTrailerHook) VALUES
-- Copenhagen drivers' cars (drivers 16-20)
('AB12345', 1, 2020, 5, true, true, false),    -- Toyota Camry
('CD67890', 7, 2019, 5, false, true, false),   -- VW Golf
('EF23456', 13, 2022, 5, true, true, false),   -- Tesla Model 3
('GH78901', 19, 2021, 7, false, true, true),   -- Volvo XC90
('IJ34567', 25, 2020, 5, false, true, false),  -- BMW 3 Series

('KL89012', 3, 2018, 5, true, true, true),     -- Toyota RAV4
('MN45678', 9, 2021, 7, true, true, true),     -- VW Tiguan
('OP90123', 14, 2023, 5, true, true, false),   -- Tesla Model S
('QR56789', 20, 2019, 5, false, true, false),  -- Volvo XC60
('ST01234', 27, 2022, 5, false, true, false),  -- BMW 5 Series

-- Aarhus drivers' cars (drivers 36-40)
('UV67890', 2, 2020, 5, false, true, false),   -- Toyota Corolla
('WX23456', 8, 2019, 5, true, true, false),    -- VW Passat
('YZ78901', 15, 2022, 7, true, true, false),   -- Tesla Model X
('AA34567', 21, 2021, 5, false, true, false),  -- Volvo S60
('BB89012', 26, 2020, 5, false, true, false),  -- BMW X5

('CC45678', 4, 2018, 5, true, true, false),    -- Toyota Prius
('DD90123', 10, 2021, 4, false, true, false),  -- VW Polo
('EE56789', 16, 2023, 5, true, true, false),   -- Tesla Model Y
('FF01234', 22, 2019, 7, true, true, true),    -- Volvo V90
('GG67890', 28, 2022, 5, false, true, false),  -- BMW X3

-- Odense drivers' cars (drivers 56-60)
('HH23456', 5, 2020, 7, true, true, true),     -- Toyota Highlander
('II78901', 11, 2019, 7, true, true, true),    -- VW Touareg
('JJ34567', 13, 2022, 5, true, true, false),   -- Tesla Model 3
('KK89012', 23, 2021, 5, false, true, false),  -- Volvo XC40
('LL45678', 29, 2020, 5, false, true, false),  -- BMW i4

('MM90123', 6, 2018, 4, false, true, false),   -- Toyota Yaris
('NN56789', 12, 2021, 5, false, true, false),  -- VW Arteon
('OO01234', 14, 2023, 5, true, true, false),   -- Tesla Model S
('PP67890', 24, 2019, 5, false, true, false),  -- Volvo S90
('QQ23456', 29, 2022, 5, false, true, false),  -- BMW 7 Series

-- Stockholm drivers' cars (drivers 76-80)
('ABC123', 1, 2020, 5, true, true, false),     -- Toyota Camry
('DEF456', 7, 2019, 5, false, true, false),    -- VW Golf
('GHI789', 16, 2022, 5, true, true, false),    -- Tesla Model Y
('JKL012', 19, 2021, 7, true, true, true),     -- Volvo XC90
('MNO345', 25, 2020, 5, false, true, false),   -- BMW 3 Series

('PQR678', 3, 2018, 5, true, true, true),      -- Toyota RAV4
('STU901', 9, 2021, 7, true, true, true),      -- VW Tiguan
('VWX234', 15, 2023, 7, true, true, false),    -- Tesla Model X
('YZA567', 20, 2019, 5, false, true, false),   -- Volvo XC60
('BCD890', 27, 2022, 5, false, true, false),   -- BMW 5 Series

-- Gothenburg drivers' cars (drivers 96-98)
('EFG123', 2, 2020, 5, false, true, false),    -- Toyota Corolla
('HIJ456', 8, 2019, 5, true, true, false),     -- VW Passat
('KLM789', 13, 2022, 5, true, true, false),    -- Tesla Model 3

('NOP012', 4, 2018, 5, true, true, false),     -- Toyota Prius
('QRS345', 11, 2021, 7, true, true, true),     -- VW Touareg
('TUV678', 16, 2023, 5, true, true, false);    -- Tesla Model Y

-- ============================================================================
-- CARS TO DRIVERS (Mapping with multiple scenarios)
-- Some cars shared by multiple drivers (family members)
-- Some drivers have access to multiple cars
-- ============================================================================

INSERT INTO carsToDrivers (carId, driverId) VALUES
-- Copenhagen drivers (16-20)
-- Driver 16 has 1 car
(1, 16),
-- Driver 17 has 2 cars (uses own car and partner's car)
(2, 17), (7, 17),
-- Driver 18 has 1 car, but shares it with driver 19 (family/household)
(3, 18), (3, 19),
-- Driver 19 also has their own car (so driver 19 has access to 2 cars)
(4, 19),
-- Driver 20 has 1 car
(5, 20),
-- Extra car shared between drivers 16 and 20 (roommates sharing a car)
(6, 16), (6, 20),

-- Aarhus drivers (36-40)
-- Driver 36 has 2 cars
(11, 36), (16, 36),
-- Driver 37 shares a car with driver 38 (family)
(12, 37), (12, 38),
-- Driver 38 also has their own car
(13, 38),
-- Driver 39 has 1 car
(14, 39),
-- Driver 40 has access to 3 cars (family fleet: mom's, dad's, own)
(15, 40), (17, 40), (18, 40),

-- Odense drivers (56-60)
-- Driver 56 has 1 car
(21, 56),
-- Driver 57 and 58 share a household car
(22, 57), (22, 58),
-- Driver 57 also has their own car
(26, 57),
-- Driver 58 has access to another car
(23, 58),
-- Driver 59 has 2 cars
(24, 59), (27, 59),
-- Driver 60 has 1 car, shared with driver 56 (partners)
(25, 60), (25, 56),

-- Stockholm drivers (76-80)
-- Driver 76 has 1 car
(31, 76),
-- Driver 77 has 2 cars
(32, 77), (36, 77),
-- Driver 78 shares with driver 79 (siblings sharing parent's car)
(33, 78), (33, 79),
-- Driver 79 has their own car too
(34, 79),
-- Driver 80 has access to 2 cars
(35, 80), (37, 80),

-- Gothenburg drivers (96-98)
-- Driver 96 has 2 cars
(41, 96), (44, 96),
-- Driver 97 has 1 car, shared with driver 98
(42, 97), (42, 98),
-- Driver 98 also has access to another car
(43, 98), (45, 98),
-- Extra car shared among all 3 Gothenburg drivers (company car)
(46, 96), (46, 97), (46, 98);


USE uber;

-- ============================================================================
-- REQUESTED RIDES (200+ ride requests)
-- Status: 1=pending, 2=expired, 3=accepted, 4=cancelled
-- Mix of current, past, and expired requests
-- ============================================================================

INSERT INTO requestedRides (status, passengerId, requestTimeAndDate, requestExpireDateTime, passengerNumber, pickupAddressId, pickupTime, dropoffAddressId, addBicycle, addTrunkSpace) VALUES
-- Recent/Current pending requests (status=1)
(1, 1, '2025-01-01 08:00:00', '2025-01-01 10:00:00', 1, 1, '2025-01-01 09:00:00', 6, false, false),
(1, 3, '2025-01-01 08:30:00', '2025-01-01 10:30:00', 2, 3, '2025-01-01 09:30:00', 12, false, true),
(1, 5, '2025-01-01 09:00:00', '2025-01-01 11:00:00', 1, 5, '2025-01-01 10:00:00', 9, true, false),
(1, 7, '2025-01-01 09:15:00', '2025-01-01 11:15:00', 3, 7, '2025-01-01 10:15:00', 14, false, true),
(1, 9, '2025-01-01 09:30:00', '2025-01-01 11:30:00', 1, 9, '2025-01-01 10:30:00', 20, false, false),

-- Accepted requests from past days (status=3)
(3, 2, '2024-12-28 07:30:00', '2024-12-28 09:30:00', 1, 2, '2024-12-28 08:30:00', 8, false, false),
(3, 4, '2024-12-28 08:00:00', '2024-12-28 10:00:00', 2, 4, '2024-12-28 09:00:00', 15, false, true),
(3, 6, '2024-12-28 14:30:00', '2024-12-28 16:30:00', 1, 6, '2024-12-28 15:30:00', 1, false, false),
(3, 8, '2024-12-28 16:00:00', '2024-12-28 18:00:00', 4, 8, '2024-12-28 17:00:00', 2, false, true),
(3, 10, '2024-12-28 18:30:00', '2024-12-28 20:30:00', 1, 10, '2024-12-28 19:30:00', 3, true, false),

(3, 11, '2024-12-29 07:00:00', '2024-12-29 09:00:00', 2, 11, '2024-12-29 08:00:00', 17, false, false),
(3, 13, '2024-12-29 09:30:00', '2024-12-29 11:30:00', 1, 13, '2024-12-29 10:30:00', 19, false, true),
(3, 15, '2024-12-29 13:00:00', '2024-12-29 15:00:00', 3, 15, '2024-12-29 14:00:00', 11, false, false),
(3, 1, '2024-12-29 17:30:00', '2024-12-29 19:30:00', 1, 6, '2024-12-29 18:30:00', 1, false, false),
(3, 3, '2024-12-29 19:00:00', '2024-12-29 21:00:00', 2, 12, '2024-12-29 20:00:00', 3, false, true),

(3, 21, '2024-12-30 06:45:00', '2024-12-30 08:45:00', 1, 21, '2024-12-30 07:45:00', 25, false, false),
(3, 23, '2024-12-30 08:15:00', '2024-12-30 10:15:00', 1, 23, '2024-12-30 09:15:00', 30, true, false),
(3, 25, '2024-12-30 12:30:00', '2024-12-30 14:30:00', 2, 25, '2024-12-30 13:30:00', 21, false, true),
(3, 27, '2024-12-30 15:00:00', '2024-12-30 17:00:00', 1, 27, '2024-12-30 16:00:00', 28, false, false),
(3, 29, '2024-12-30 18:45:00', '2024-12-30 20:45:00', 3, 29, '2024-12-30 19:45:00', 26, false, true),

(3, 22, '2024-12-31 07:00:00', '2024-12-31 09:00:00', 1, 22, '2024-12-31 08:00:00', 30, false, false),
(3, 24, '2024-12-31 10:30:00', '2024-12-31 12:30:00', 2, 24, '2024-12-31 11:30:00', 35, false, false),
(3, 26, '2024-12-31 14:00:00', '2024-12-31 16:00:00', 1, 26, '2024-12-31 15:00:00', 32, true, false),
(3, 28, '2024-12-31 16:30:00', '2024-12-31 18:30:00', 4, 28, '2024-12-31 17:30:00', 34, false, true),
(3, 30, '2024-12-31 20:00:00', '2024-12-31 22:00:00', 2, 30, '2024-12-31 21:00:00', 23, false, false),

(3, 41, '2024-12-27 08:00:00', '2024-12-27 10:00:00', 1, 41, '2024-12-27 09:00:00', 45, false, false),
(3, 43, '2024-12-27 11:30:00', '2024-12-27 13:30:00', 2, 43, '2024-12-27 12:30:00', 47, false, true),
(3, 45, '2024-12-27 15:00:00', '2024-12-27 17:00:00', 1, 45, '2024-12-27 16:00:00', 41, false, false),
(3, 47, '2024-12-27 18:30:00', '2024-12-27 20:30:00', 3, 47, '2024-12-27 19:30:00', 48, false, true),
(3, 49, '2024-12-27 21:00:00', '2024-12-27 23:00:00', 2, 49, '2024-12-27 22:00:00', 46, false, false),

(3, 42, '2024-12-26 07:30:00', '2024-12-26 09:30:00', 1, 42, '2024-12-26 08:30:00', 50, false, false),
(3, 44, '2024-12-26 10:00:00', '2024-12-26 12:00:00', 2, 44, '2024-12-26 11:00:00', 55, true, false),
(3, 46, '2024-12-26 13:30:00', '2024-12-26 15:30:00', 1, 46, '2024-12-26 14:30:00', 52, false, true),
(3, 48, '2024-12-26 16:00:00', '2024-12-26 18:00:00', 4, 48, '2024-12-26 17:00:00', 54, false, false),
(3, 50, '2024-12-26 19:30:00', '2024-12-26 21:30:00', 1, 50, '2024-12-26 20:30:00', 43, false, false),

(3, 61, '2024-12-25 08:00:00', '2024-12-25 10:00:00', 1, 61, '2024-12-25 09:00:00', 65, false, false),
(3, 63, '2024-12-25 11:30:00', '2024-12-25 13:30:00', 2, 63, '2024-12-25 12:30:00', 67, false, true),
(3, 65, '2024-12-25 15:00:00', '2024-12-25 17:00:00', 1, 65, '2024-12-25 16:00:00', 61, true, false),
(3, 67, '2024-12-25 18:30:00', '2024-12-25 20:30:00', 3, 67, '2024-12-25 19:30:00', 68, false, false),
(3, 69, '2024-12-25 21:00:00', '2024-12-25 23:00:00', 2, 69, '2024-12-25 22:00:00', 66, false, true),

(3, 62, '2024-12-24 07:00:00', '2024-12-24 09:00:00', 1, 62, '2024-12-24 08:00:00', 70, false, false),
(3, 64, '2024-12-24 10:30:00', '2024-12-24 12:30:00', 2, 64, '2024-12-24 11:30:00', 75, false, false),
(3, 66, '2024-12-24 14:00:00', '2024-12-24 16:00:00', 1, 66, '2024-12-24 15:00:00', 72, true, false),
(3, 68, '2024-12-24 17:30:00', '2024-12-24 19:30:00', 4, 68, '2024-12-24 18:30:00', 74, false, true),
(3, 70, '2024-12-24 20:00:00', '2024-12-24 22:00:00', 2, 70, '2024-12-24 21:00:00', 63, false, false),

(3, 81, '2024-12-23 08:30:00', '2024-12-23 10:30:00', 1, 81, '2024-12-23 09:30:00', 85, false, false),
(3, 83, '2024-12-23 12:00:00', '2024-12-23 14:00:00', 2, 83, '2024-12-23 13:00:00', 87, false, true),
(3, 85, '2024-12-23 15:30:00', '2024-12-23 17:30:00', 1, 85, '2024-12-23 16:30:00', 81, false, false),
(3, 87, '2024-12-23 19:00:00', '2024-12-23 21:00:00', 3, 87, '2024-12-23 20:00:00', 88, true, false),
(3, 89, '2024-12-23 21:30:00', '2024-12-23 23:30:00', 2, 89, '2024-12-23 22:30:00', 86, false, false),

-- More accepted rides for variety
(3, 12, '2024-12-22 08:00:00', '2024-12-22 10:00:00', 1, 12, '2024-12-22 09:00:00', 4, false, false),
(3, 14, '2024-12-22 11:00:00', '2024-12-22 13:00:00', 2, 14, '2024-12-22 12:00:00', 7, false, true),
(3, 2, '2024-12-21 07:30:00', '2024-12-21 09:30:00', 1, 8, '2024-12-21 08:30:00', 2, false, false),

-- Expired requests (status=2)
(2, 5, '2024-12-20 06:00:00', '2024-12-20 08:00:00', 1, 5, '2024-12-20 07:00:00', 9, false, false),
(2, 7, '2024-12-20 10:00:00', '2024-12-20 12:00:00', 2, 7, '2024-12-20 11:00:00', 14, true, false),
(2, 9, '2024-12-19 15:00:00', '2024-12-19 17:00:00', 1, 9, '2024-12-19 16:00:00', 20, false, true),
(2, 11, '2024-12-19 18:00:00', '2024-12-19 20:00:00', 3, 11, '2024-12-19 19:00:00', 17, false, false),
(2, 13, '2024-12-18 07:00:00', '2024-12-18 09:00:00', 1, 13, '2024-12-18 08:00:00', 19, false, false),

-- Cancelled requests (status=4)
(4, 15, '2024-12-20 12:00:00', '2024-12-20 14:00:00', 2, 15, '2024-12-20 13:00:00', 11, false, true),
(4, 1, '2024-12-19 09:00:00', '2024-12-19 11:00:00', 1, 1, '2024-12-19 10:00:00', 6, false, false),
(4, 3, '2024-12-18 14:00:00', '2024-12-18 16:00:00', 3, 3, '2024-12-18 15:00:00', 12, false, false),

-- Additional accepted rides for more variety (older dates)
(3, 31, '2024-12-15 08:00:00', '2024-12-15 10:00:00', 1, 31, '2024-12-15 09:00:00', 35, false, false),
(3, 32, '2024-12-15 12:00:00', '2024-12-15 14:00:00', 2, 32, '2024-12-15 13:00:00', 26, false, true),
(3, 33, '2024-12-14 07:30:00', '2024-12-14 09:30:00', 1, 33, '2024-12-14 08:30:00', 27, true, false),
(3, 34, '2024-12-14 15:00:00', '2024-12-14 17:00:00', 3, 34, '2024-12-14 16:00:00', 40, false, false),
(3, 35, '2024-12-13 09:00:00', '2024-12-13 11:00:00', 1, 35, '2024-12-13 10:00:00', 31, false, true),

(3, 51, '2024-12-12 08:30:00', '2024-12-12 10:30:00', 2, 51, '2024-12-12 09:30:00', 58, false, false),
(3, 52, '2024-12-12 13:00:00', '2024-12-12 15:00:00', 1, 52, '2024-12-12 14:00:00', 49, false, false),
(3, 53, '2024-12-11 07:00:00', '2024-12-11 09:00:00', 1, 53, '2024-12-11 08:00:00', 45, true, false),
(3, 54, '2024-12-11 16:00:00', '2024-12-11 18:00:00', 4, 54, '2024-12-11 17:00:00', 60, false, true),
(3, 55, '2024-12-10 10:00:00', '2024-12-10 12:00:00', 1, 55, '2024-12-10 11:00:00', 51, false, false),

(3, 71, '2024-12-09 08:00:00', '2024-12-09 10:00:00', 1, 71, '2024-12-09 09:00:00', 78, false, false),
(3, 72, '2024-12-09 12:30:00', '2024-12-09 14:30:00', 2, 72, '2024-12-09 13:30:00', 69, false, true),
(3, 73, '2024-12-08 07:30:00', '2024-12-08 09:30:00', 1, 73, '2024-12-08 08:30:00', 65, false, false),
(3, 74, '2024-12-08 15:00:00', '2024-12-08 17:00:00', 3, 74, '2024-12-08 16:00:00', 80, true, false),
(3, 75, '2024-12-07 09:30:00', '2024-12-07 11:30:00', 1, 75, '2024-12-07 10:30:00', 71, false, false),

(3, 82, '2024-12-06 08:00:00', '2024-12-06 10:00:00', 2, 82, '2024-12-06 09:00:00', 90, false, true),
(3, 84, '2024-12-06 13:00:00', '2024-12-06 15:00:00', 1, 84, '2024-12-06 14:00:00', 95, false, false),
(3, 86, '2024-12-05 07:30:00', '2024-12-05 09:30:00', 1, 86, '2024-12-05 08:30:00', 92, true, false),
(3, 88, '2024-12-05 16:00:00', '2024-12-05 18:00:00', 4, 88, '2024-12-05 17:00:00', 94, false, false),
(3, 90, '2024-12-04 10:00:00', '2024-12-04 12:00:00', 1, 90, '2024-12-04 11:00:00', 83, false, true),

-- More rides to reach 200+ total
(3, 4, '2024-12-03 08:00:00', '2024-12-03 10:00:00', 1, 4, '2024-12-03 09:00:00', 15, false, false),
(3, 6, '2024-12-03 12:00:00', '2024-12-03 14:00:00', 2, 6, '2024-12-03 13:00:00', 1, false, true),
(3, 8, '2024-12-02 07:30:00', '2024-12-02 09:30:00', 1, 8, '2024-12-02 08:30:00', 2, false, false),
(3, 10, '2024-12-02 15:00:00', '2024-12-02 17:00:00', 3, 10, '2024-12-02 16:00:00', 3, true, false),
(3, 12, '2024-12-01 09:00:00', '2024-12-01 11:00:00', 1, 12, '2024-12-01 10:00:00', 4, false, false),

(3, 21, '2024-11-30 08:30:00', '2024-11-30 10:30:00', 2, 21, '2024-11-30 09:30:00', 25, false, true),
(3, 23, '2024-11-30 13:00:00', '2024-11-30 15:00:00', 1, 23, '2024-11-30 14:00:00', 30, false, false),
(3, 25, '2024-11-29 07:00:00', '2024-11-29 09:00:00', 1, 25, '2024-11-29 08:00:00', 21, true, false),
(3, 27, '2024-11-29 16:00:00', '2024-11-29 18:00:00', 4, 27, '2024-11-29 17:00:00', 28, false, true),
(3, 29, '2024-11-28 10:00:00', '2024-11-28 12:00:00', 1, 29, '2024-11-28 11:00:00', 26, false, false),

(3, 41, '2024-11-27 08:00:00', '2024-11-27 10:00:00', 1, 41, '2024-11-27 09:00:00', 45, false, false),
(3, 43, '2024-11-27 12:30:00', '2024-11-27 14:30:00', 2, 43, '2024-11-27 13:30:00', 47, false, true),
(3, 45, '2024-11-26 07:30:00', '2024-11-26 09:30:00', 1, 45, '2024-11-26 08:30:00', 41, false, false),
(3, 47, '2024-11-26 15:00:00', '2024-11-26 17:00:00', 3, 47, '2024-11-26 16:00:00', 48, true, false),
(3, 49, '2024-11-25 09:30:00', '2024-11-25 11:30:00', 1, 49, '2024-11-25 10:30:00', 46, false, false),

(3, 61, '2024-11-24 08:00:00', '2024-11-24 10:00:00', 2, 61, '2024-11-24 09:00:00', 65, false, true),
(3, 63, '2024-11-24 13:00:00', '2024-11-24 15:00:00', 1, 63, '2024-11-24 14:00:00', 67, false, false),
(3, 65, '2024-11-23 07:30:00', '2024-11-23 09:30:00', 1, 65, '2024-11-23 08:30:00', 61, true, false),
(3, 67, '2024-11-23 16:00:00', '2024-11-23 18:00:00', 4, 67, '2024-11-23 17:00:00', 68, false, false),
(3, 69, '2024-11-22 10:00:00', '2024-11-22 12:00:00', 1, 69, '2024-11-22 11:00:00', 66, false, true),

(3, 81, '2024-11-21 08:30:00', '2024-11-21 10:30:00', 1, 81, '2024-11-21 09:30:00', 85, false, false),
(3, 83, '2024-11-21 12:00:00', '2024-11-21 14:00:00', 2, 83, '2024-11-21 13:00:00', 87, false, true),
(3, 85, '2024-11-20 07:30:00', '2024-11-20 09:30:00', 1, 85, '2024-11-20 08:30:00', 81, false, false),
(3, 87, '2024-11-20 15:00:00', '2024-11-20 17:00:00', 3, 87, '2024-11-20 16:00:00', 88, true, false),
(3, 89, '2024-11-19 09:30:00', '2024-11-19 11:30:00', 1, 89, '2024-11-19 10:30:00', 86, false, false),

-- Additional rides for more data
(3, 14, '2024-11-18 08:00:00', '2024-11-18 10:00:00', 1, 14, '2024-11-18 09:00:00', 7, false, false),
(3, 22, '2024-11-18 12:00:00', '2024-11-18 14:00:00', 2, 22, '2024-11-18 13:00:00', 30, false, true),
(3, 24, '2024-11-17 07:30:00', '2024-11-17 09:30:00', 1, 24, '2024-11-17 08:30:00', 35, false, false),
(3, 26, '2024-11-17 15:00:00', '2024-11-17 17:00:00', 3, 26, '2024-11-17 16:00:00', 32, true, false),
(3, 28, '2024-11-16 09:00:00', '2024-11-16 11:00:00', 1, 28, '2024-11-16 10:00:00', 34, false, false),

(3, 42, '2024-11-15 08:30:00', '2024-11-15 10:30:00', 2, 42, '2024-11-15 09:30:00', 50, false, true),
(3, 44, '2024-11-15 13:00:00', '2024-11-15 15:00:00', 1, 44, '2024-11-15 14:00:00', 55, false, false),
(3, 46, '2024-11-14 07:30:00', '2024-11-14 09:30:00', 1, 46, '2024-11-14 08:30:00', 52, true, false),
(3, 48, '2024-11-14 16:00:00', '2024-11-14 18:00:00', 4, 48, '2024-11-14 17:00:00', 54, false, true),
(3, 50, '2024-11-13 10:00:00', '2024-11-13 12:00:00', 1, 50, '2024-11-13 11:00:00', 43, false, false),

(3, 62, '2024-11-12 08:00:00', '2024-11-12 10:00:00', 1, 62, '2024-11-12 09:00:00', 70, false, false),
(3, 64, '2024-11-12 12:30:00', '2024-11-12 14:30:00', 2, 64, '2024-11-12 13:30:00', 75, false, true),
(3, 66, '2024-11-11 07:00:00', '2024-11-11 09:00:00', 1, 66, '2024-11-11 08:00:00', 72, false, false),
(3, 68, '2024-11-11 15:30:00', '2024-11-11 17:30:00', 3, 68, '2024-11-11 16:30:00', 74, true, false),
(3, 70, '2024-11-10 09:00:00', '2024-11-10 11:00:00', 1, 70, '2024-11-10 10:00:00', 63, false, false),

(3, 82, '2024-11-09 08:30:00', '2024-11-09 10:30:00', 2, 82, '2024-11-09 09:30:00', 90, false, true),
(3, 84, '2024-11-09 13:00:00', '2024-11-09 15:00:00', 1, 84, '2024-11-09 14:00:00', 95, false, false),
(3, 86, '2024-11-08 07:30:00', '2024-11-08 09:30:00', 1, 86, '2024-11-08 08:30:00', 92, true, false),
(3, 88, '2024-11-08 16:00:00', '2024-11-08 18:00:00', 4, 88, '2024-11-08 17:00:00', 94, false, false),
(3, 90, '2024-11-07 10:00:00', '2024-11-07 12:00:00', 1, 90, '2024-11-07 11:00:00', 83, false, true);

INSERT INTO requestedRides (status, passengerId, requestTimeAndDate, requestExpireDateTime, passengerNumber, pickupAddressId, pickupTime, dropoffAddressId, addBicycle, addTrunkSpace) VALUES
-- Recent/Current pending requests (status=1)
(1, 1, '2025-01-01 08:00:00', '2025-01-01 10:00:00', 1, 1, '2025-01-01 09:00:00', 6, false, false),
(1, 3, '2025-01-01 08:30:00', '2025-01-01 10:30:00', 2, 3, '2025-01-01 09:30:00', 12, false, true),
(1, 5, '2025-01-01 09:00:00', '2025-01-01 11:00:00', 1, 5, '2025-01-01 10:00:00', 9, true, false),
(1, 7, '2025-01-01 09:15:00', '2025-01-01 11:15:00', 3, 7, '2025-01-01 10:15:00', 14, false, true),
(1, 9, '2025-01-01 09:30:00', '2025-01-01 11:30:00', 1, 9, '2025-01-01 10:30:00', 20, false, false),

-- Accepted requests from past days (status=3)
(3, 2, '2024-12-28 07:30:00', '2024-12-28 09:30:00', 1, 2, '2024-12-28 08:30:00', 8, false, false),
(3, 4, '2024-12-28 08:00:00', '2024-12-28 10:00:00', 2, 4, '2024-12-28 09:00:00', 15, false, true),
(3, 6, '2024-12-28 14:30:00', '2024-12-28 16:30:00', 1, 6, '2024-12-28 15:30:00', 1, false, false),
(3, 8, '2024-12-28 16:00:00', '2024-12-28 18:00:00', 4, 8, '2024-12-28 17:00:00', 2, false, true),
(3, 10, '2024-12-28 18:30:00', '2024-12-28 20:30:00', 1, 10, '2024-12-28 19:30:00', 3, true, false),

(3, 11, '2024-12-29 07:00:00', '2024-12-29 09:00:00', 2, 11, '2024-12-29 08:00:00', 17, false, false),
(3, 13, '2024-12-29 09:30:00', '2024-12-29 11:30:00', 1, 13, '2024-12-29 10:30:00', 19, false, true),
(3, 15, '2024-12-29 13:00:00', '2024-12-29 15:00:00', 3, 15, '2024-12-29 14:00:00', 11, false, false),
(3, 1, '2024-12-29 17:30:00', '2024-12-29 19:30:00', 1, 6, '2024-12-29 18:30:00', 1, false, false),
(3, 3, '2024-12-29 19:00:00', '2024-12-29 21:00:00', 2, 12, '2024-12-29 20:00:00', 3, false, true),

(3, 21, '2024-12-30 06:45:00', '2024-12-30 08:45:00', 1, 21, '2024-12-30 07:45:00', 25, false, false),
(3, 23, '2024-12-30 08:15:00', '2024-12-30 10:15:00', 1, 23, '2024-12-30 09:15:00', 30, true, false),
(3, 25, '2024-12-30 12:30:00', '2024-12-30 14:30:00', 2, 25, '2024-12-30 13:30:00', 21, false, true),
(3, 27, '2024-12-30 15:00:00', '2024-12-30 17:00:00', 1, 27, '2024-12-30 16:00:00', 28, false, false),
(3, 29, '2024-12-30 18:45:00', '2024-12-30 20:45:00', 3, 29, '2024-12-30 19:45:00', 26, false, true),

(3, 22, '2024-12-31 07:00:00', '2024-12-31 09:00:00', 1, 22, '2024-12-31 08:00:00', 30, false, false),
(3, 24, '2024-12-31 10:30:00', '2024-12-31 12:30:00', 2, 24, '2024-12-31 11:30:00', 35, false, false),
(3, 26, '2024-12-31 14:00:00', '2024-12-31 16:00:00', 1, 26, '2024-12-31 15:00:00', 32, true, false),
(3, 28, '2024-12-31 16:30:00', '2024-12-31 18:30:00', 4, 28, '2024-12-31 17:30:00', 34, false, true),
(3, 30, '2024-12-31 20:00:00', '2024-12-31 22:00:00', 2, 30, '2024-12-31 21:00:00', 23, false, false),

(3, 41, '2024-12-27 08:00:00', '2024-12-27 10:00:00', 1, 41, '2024-12-27 09:00:00', 45, false, false),
(3, 43, '2024-12-27 11:30:00', '2024-12-27 13:30:00', 2, 43, '2024-12-27 12:30:00', 47, false, true),
(3, 45, '2024-12-27 15:00:00', '2024-12-27 17:00:00', 1, 45, '2024-12-27 16:00:00', 41, false, false),
(3, 47, '2024-12-27 18:30:00', '2024-12-27 20:30:00', 3, 47, '2024-12-27 19:30:00', 48, false, true),
(3, 49, '2024-12-27 21:00:00', '2024-12-27 23:00:00', 2, 49, '2024-12-27 22:00:00', 46, false, false),

(3, 42, '2024-12-26 07:30:00', '2024-12-26 09:30:00', 1, 42, '2024-12-26 08:30:00', 50, false, false),
(3, 44, '2024-12-26 10:00:00', '2024-12-26 12:00:00', 2, 44, '2024-12-26 11:00:00', 55, true, false),
(3, 46, '2024-12-26 13:30:00', '2024-12-26 15:30:00', 1, 46, '2024-12-26 14:30:00', 52, false, true),
(3, 48, '2024-12-26 16:00:00', '2024-12-26 18:00:00', 4, 48, '2024-12-26 17:00:00', 54, false, false),
(3, 50, '2024-12-26 19:30:00', '2024-12-26 21:30:00', 1, 50, '2024-12-26 20:30:00', 43, false, false),

(3, 61, '2024-12-25 08:00:00', '2024-12-25 10:00:00', 1, 61, '2024-12-25 09:00:00', 65, false, false),
(3, 63, '2024-12-25 11:30:00', '2024-12-25 13:30:00', 2, 63, '2024-12-25 12:30:00', 67, false, true),
(3, 65, '2024-12-25 15:00:00', '2024-12-25 17:00:00', 1, 65, '2024-12-25 16:00:00', 61, true, false),
(3, 67, '2024-12-25 18:30:00', '2024-12-25 20:30:00', 3, 67, '2024-12-25 19:30:00', 68, false, false),
(3, 69, '2024-12-25 21:00:00', '2024-12-25 23:00:00', 2, 69, '2024-12-25 22:00:00', 66, false, true),

(3, 62, '2024-12-24 07:00:00', '2024-12-24 09:00:00', 1, 62, '2024-12-24 08:00:00', 70, false, false),
(3, 64, '2024-12-24 10:30:00', '2024-12-24 12:30:00', 2, 64, '2024-12-24 11:30:00', 75, false, false),
(3, 66, '2024-12-24 14:00:00', '2024-12-24 16:00:00', 1, 66, '2024-12-24 15:00:00', 72, true, false),
(3, 68, '2024-12-24 17:30:00', '2024-12-24 19:30:00', 4, 68, '2024-12-24 18:30:00', 74, false, true),
(3, 70, '2024-12-24 20:00:00', '2024-12-24 22:00:00', 2, 70, '2024-12-24 21:00:00', 63, false, false),

(3, 81, '2024-12-23 08:30:00', '2024-12-23 10:30:00', 1, 81, '2024-12-23 09:30:00', 85, false, false),
(3, 83, '2024-12-23 12:00:00', '2024-12-23 14:00:00', 2, 83, '2024-12-23 13:00:00', 87, false, true),
(3, 85, '2024-12-23 15:30:00', '2024-12-23 17:30:00', 1, 85, '2024-12-23 16:30:00', 81, false, false),
(3, 87, '2024-12-23 19:00:00', '2024-12-23 21:00:00', 3, 87, '2024-12-23 20:00:00', 88, true, false),
(3, 89, '2024-12-23 21:30:00', '2024-12-23 23:30:00', 2, 89, '2024-12-23 22:30:00', 86, false, false),

-- More accepted rides for variety
(3, 12, '2024-12-22 08:00:00', '2024-12-22 10:00:00', 1, 12, '2024-12-22 09:00:00', 4, false, false),
(3, 14, '2024-12-22 11:00:00', '2024-12-22 13:00:00', 2, 14, '2024-12-22 12:00:00', 7, false, true),
(3, 2, '2024-12-21 07:30:00', '2024-12-21 09:30:00', 1, 8, '2024-12-21 08:30:00', 2, false, false),

-- Expired requests (status=2)
(2, 5, '2024-12-20 06:00:00', '2024-12-20 08:00:00', 1, 5, '2024-12-20 07:00:00', 9, false, false),
(2, 7, '2024-12-20 10:00:00', '2024-12-20 12:00:00', 2, 7, '2024-12-20 11:00:00', 14, true, false),
(2, 9, '2024-12-19 15:00:00', '2024-12-19 17:00:00', 1, 9, '2024-12-19 16:00:00', 20, false, true),
(2, 11, '2024-12-19 18:00:00', '2024-12-19 20:00:00', 3, 11, '2024-12-19 19:00:00', 17, false, false),
(2, 13, '2024-12-18 07:00:00', '2024-12-18 09:00:00', 1, 13, '2024-12-18 08:00:00', 19, false, false),

-- Cancelled requests (status=4)
(4, 15, '2024-12-20 12:00:00', '2024-12-20 14:00:00', 2, 15, '2024-12-20 13:00:00', 11, false, true),
(4, 1, '2024-12-19 09:00:00', '2024-12-19 11:00:00', 1, 1, '2024-12-19 10:00:00', 6, false, false),
(4, 3, '2024-12-18 14:00:00', '2024-12-18 16:00:00', 3, 3, '2024-12-18 15:00:00', 12, false, false),

-- Additional accepted rides for more variety (older dates)
(3, 31, '2024-12-15 08:00:00', '2024-12-15 10:00:00', 1, 31, '2024-12-15 09:00:00', 35, false, false),
(3, 32, '2024-12-15 12:00:00', '2024-12-15 14:00:00', 2, 32, '2024-12-15 13:00:00', 26, false, true),
(3, 33, '2024-12-14 07:30:00', '2024-12-14 09:30:00', 1, 33, '2024-12-14 08:30:00', 27, true, false),
(3, 34, '2024-12-14 15:00:00', '2024-12-14 17:00:00', 3, 34, '2024-12-14 16:00:00', 40, false, false),
(3, 35, '2024-12-13 09:00:00', '2024-12-13 11:00:00', 1, 35, '2024-12-13 10:00:00', 31, false, true),

(3, 51, '2024-12-12 08:30:00', '2024-12-12 10:30:00', 2, 51, '2024-12-12 09:30:00', 58, false, false),
(3, 52, '2024-12-12 13:00:00', '2024-12-12 15:00:00', 1, 52, '2024-12-12 14:00:00', 49, false, false),
(3, 53, '2024-12-11 07:00:00', '2024-12-11 09:00:00', 1, 53, '2024-12-11 08:00:00', 45, true, false),
(3, 54, '2024-12-11 16:00:00', '2024-12-11 18:00:00', 4, 54, '2024-12-11 17:00:00', 60, false, true),
(3, 55, '2024-12-10 10:00:00', '2024-12-10 12:00:00', 1, 55, '2024-12-10 11:00:00', 51, false, false),

(3, 71, '2024-12-09 08:00:00', '2024-12-09 10:00:00', 1, 71, '2024-12-09 09:00:00', 78, false, false),
(3, 72, '2024-12-09 12:30:00', '2024-12-09 14:30:00', 2, 72, '2024-12-09 13:30:00', 69, false, true),
(3, 73, '2024-12-08 07:30:00', '2024-12-08 09:30:00', 1, 73, '2024-12-08 08:30:00', 65, false, false),
(3, 74, '2024-12-08 15:00:00', '2024-12-08 17:00:00', 3, 74, '2024-12-08 16:00:00', 80, true, false),
(3, 75, '2024-12-07 09:30:00', '2024-12-07 11:30:00', 1, 75, '2024-12-07 10:30:00', 71, false, false),

(3, 82, '2024-12-06 08:00:00', '2024-12-06 10:00:00', 2, 82, '2024-12-06 09:00:00', 90, false, true),
(3, 84, '2024-12-06 13:00:00', '2024-12-06 15:00:00', 1, 84, '2024-12-06 14:00:00', 95, false, false),
(3, 86, '2024-12-05 07:30:00', '2024-12-05 09:30:00', 1, 86, '2024-12-05 08:30:00', 92, true, false),
(3, 88, '2024-12-05 16:00:00', '2024-12-05 18:00:00', 4, 88, '2024-12-05 17:00:00', 94, false, false),
(3, 90, '2024-12-04 10:00:00', '2024-12-04 12:00:00', 1, 90, '2024-12-04 11:00:00', 83, false, true),

-- More rides to reach 200+ total
(3, 4, '2024-12-03 08:00:00', '2024-12-03 10:00:00', 1, 4, '2024-12-03 09:00:00', 15, false, false),
(3, 6, '2024-12-03 12:00:00', '2024-12-03 14:00:00', 2, 6, '2024-12-03 13:00:00', 1, false, true),
(3, 8, '2024-12-02 07:30:00', '2024-12-02 09:30:00', 1, 8, '2024-12-02 08:30:00', 2, false, false),
(3, 10, '2024-12-02 15:00:00', '2024-12-02 17:00:00', 3, 10, '2024-12-02 16:00:00', 3, true, false),
(3, 12, '2024-12-01 09:00:00', '2024-12-01 11:00:00', 1, 12, '2024-12-01 10:00:00', 4, false, false),

(3, 21, '2024-11-30 08:30:00', '2024-11-30 10:30:00', 2, 21, '2024-11-30 09:30:00', 25, false, true),
(3, 23, '2024-11-30 13:00:00', '2024-11-30 15:00:00', 1, 23, '2024-11-30 14:00:00', 30, false, false),
(3, 25, '2024-11-29 07:00:00', '2024-11-29 09:00:00', 1, 25, '2024-11-29 08:00:00', 21, true, false),
(3, 27, '2024-11-29 16:00:00', '2024-11-29 18:00:00', 4, 27, '2024-11-29 17:00:00', 28, false, true),
(3, 29, '2024-11-28 10:00:00', '2024-11-28 12:00:00', 1, 29, '2024-11-28 11:00:00', 26, false, false),

(3, 41, '2024-11-27 08:00:00', '2024-11-27 10:00:00', 1, 41, '2024-11-27 09:00:00', 45, false, false),
(3, 43, '2024-11-27 12:30:00', '2024-11-27 14:30:00', 2, 43, '2024-11-27 13:30:00', 47, false, true),
(3, 45, '2024-11-26 07:30:00', '2024-11-26 09:30:00', 1, 45, '2024-11-26 08:30:00', 41, false, false),
(3, 47, '2024-11-26 15:00:00', '2024-11-26 17:00:00', 3, 47, '2024-11-26 16:00:00', 48, true, false),
(3, 49, '2024-11-25 09:30:00', '2024-11-25 11:30:00', 1, 49, '2024-11-25 10:30:00', 46, false, false),

(3, 61, '2024-11-24 08:00:00', '2024-11-24 10:00:00', 2, 61, '2024-11-24 09:00:00', 65, false, true),
(3, 63, '2024-11-24 13:00:00', '2024-11-24 15:00:00', 1, 63, '2024-11-24 14:00:00', 67, false, false),
(3, 65, '2024-11-23 07:30:00', '2024-11-23 09:30:00', 1, 65, '2024-11-23 08:30:00', 61, true, false),
(3, 67, '2024-11-23 16:00:00', '2024-11-23 18:00:00', 4, 67, '2024-11-23 17:00:00', 68, false, false),
(3, 69, '2024-11-22 10:00:00', '2024-11-22 12:00:00', 1, 69, '2024-11-22 11:00:00', 66, false, true),

(3, 81, '2024-11-21 08:30:00', '2024-11-21 10:30:00', 1, 81, '2024-11-21 09:30:00', 85, false, false),
(3, 83, '2024-11-21 12:00:00', '2024-11-21 14:00:00', 2, 83, '2024-11-21 13:00:00', 87, false, true),
(3, 85, '2024-11-20 07:30:00', '2024-11-20 09:30:00', 1, 85, '2024-11-20 08:30:00', 81, false, false),
(3, 87, '2024-11-20 15:00:00', '2024-11-20 17:00:00', 3, 87, '2024-11-20 16:00:00', 88, true, false),
(3, 89, '2024-11-19 09:30:00', '2024-11-19 11:30:00', 1, 89, '2024-11-19 10:30:00', 86, false, false),

-- Additional rides for more data
(3, 14, '2024-11-18 08:00:00', '2024-11-18 10:00:00', 1, 14, '2024-11-18 09:00:00', 7, false, false),
(3, 22, '2024-11-18 12:00:00', '2024-11-18 14:00:00', 2, 22, '2024-11-18 13:00:00', 30, false, true),
(3, 24, '2024-11-17 07:30:00', '2024-11-17 09:30:00', 1, 24, '2024-11-17 08:30:00', 35, false, false),
(3, 26, '2024-11-17 15:00:00', '2024-11-17 17:00:00', 3, 26, '2024-11-17 16:00:00', 32, true, false),
(3, 28, '2024-11-16 09:00:00', '2024-11-16 11:00:00', 1, 28, '2024-11-16 10:00:00', 34, false, false),

(3, 42, '2024-11-15 08:30:00', '2024-11-15 10:30:00', 2, 42, '2024-11-15 09:30:00', 50, false, true),
(3, 44, '2024-11-15 13:00:00', '2024-11-15 15:00:00', 1, 44, '2024-11-15 14:00:00', 55, false, false),
(3, 46, '2024-11-14 07:30:00', '2024-11-14 09:30:00', 1, 46, '2024-11-14 08:30:00', 52, true, false),
(3, 48, '2024-11-14 16:00:00', '2024-11-14 18:00:00', 4, 48, '2024-11-14 17:00:00', 54, false, true),
(3, 50, '2024-11-13 10:00:00', '2024-11-13 12:00:00', 1, 50, '2024-11-13 11:00:00', 43, false, false),

(3, 62, '2024-11-12 08:00:00', '2024-11-12 10:00:00', 1, 62, '2024-11-12 09:00:00', 70, false, false),
(3, 64, '2024-11-12 12:30:00', '2024-11-12 14:30:00', 2, 64, '2024-11-12 13:30:00', 75, false, true),
(3, 66, '2024-11-11 07:00:00', '2024-11-11 09:00:00', 1, 66, '2024-11-11 08:00:00', 72, false, false),
(3, 68, '2024-11-11 15:30:00', '2024-11-11 17:30:00', 3, 68, '2024-11-11 16:30:00', 74, true, false),
(3, 70, '2024-11-10 09:00:00', '2024-11-10 11:00:00', 1, 70, '2024-11-10 10:00:00', 63, false, false),

(3, 82, '2024-11-09 08:30:00', '2024-11-09 10:30:00', 2, 82, '2024-11-09 09:30:00', 90, false, true),
(3, 84, '2024-11-09 13:00:00', '2024-11-09 15:00:00', 1, 84, '2024-11-09 14:00:00', 95, false, false),
(3, 86, '2024-11-08 07:30:00', '2024-11-08 09:30:00', 1, 86, '2024-11-08 08:30:00', 92, true, false),
(3, 88, '2024-11-08 16:00:00', '2024-11-08 18:00:00', 4, 88, '2024-11-08 17:00:00', 94, false, false),
(3, 90, '2024-11-07 10:00:00', '2024-11-07 12:00:00', 1, 90, '2024-11-07 11:00:00', 83, false, true),
(3, 85, '2024-11-09 13:00:00', '2024-11-09 15:00:00', 1, 85, '2024-11-09 14:00:00', 95, false, false),
(3, 87, '2024-11-08 07:30:00', '2024-11-08 09:30:00', 1, 87, '2024-11-08 08:30:00', 92, true, false),
(3, 89, '2024-11-08 16:00:00', '2024-11-08 18:00:00', 4, 89, '2024-11-08 17:00:00', 94, false, false),
(3, 91, '2024-11-07 10:00:00', '2024-11-07 12:00:00', 1, 91, '2024-11-07 11:00:00', 83, false, true),
(3, 92, '2024-11-06 08:00:00', '2024-11-06 10:00:00', 1, 92, '2024-11-06 09:00:00', 98, false, false),
(3, 93, '2024-11-06 13:00:00', '2024-11-06 15:00:00', 2, 93, '2024-11-06 14:00:00', 89, false, true),
(3, 94, '2024-11-05 08:00:00', '2024-11-05 10:00:00', 1, 94, '2024-11-05 09:00:00', 100, false, false),
(3, 95, '2024-11-05 12:00:00', '2024-11-05 14:00:00', 3, 95, '2024-11-05 13:00:00', 91, true, false),
(3, 1, '2024-11-04 07:30:00', '2024-11-04 09:30:00', 1, 1, '2024-11-04 08:30:00', 6, false, false),
(3, 3, '2024-11-04 15:00:00', '2024-11-04 17:00:00', 2, 3, '2024-11-04 16:00:00', 12, false, true),
(3, 5, '2024-11-03 08:00:00', '2024-11-03 10:00:00', 1, 5, '2024-11-03 09:00:00', 9, true, false),
(3, 7, '2024-11-03 13:00:00', '2024-11-03 15:00:00', 3, 7, '2024-11-03 14:00:00', 14, false, false),
(3, 9, '2024-11-02 09:00:00', '2024-11-02 11:00:00', 1, 9, '2024-11-02 10:00:00', 20, false, true),
(3, 11, '2024-11-02 14:00:00', '2024-11-02 16:00:00', 2, 11, '2024-11-02 15:00:00', 17, false, false),
(3, 13, '2024-11-01 07:30:00', '2024-11-01 09:30:00', 1, 13, '2024-11-01 08:30:00', 19, true, false),
(3, 15, '2024-11-01 12:00:00', '2024-11-01 14:00:00', 3, 15, '2024-11-01 13:00:00', 11, false, true),
(3, 2, '2024-10-31 08:00:00', '2024-10-31 10:00:00', 1, 2, '2024-10-31 09:00:00', 8, false, false),
(3, 4, '2024-10-31 13:30:00', '2024-10-31 15:30:00', 2, 4, '2024-10-31 14:30:00', 15, false, true),
(3, 6, '2024-10-30 07:00:00', '2024-10-30 09:00:00', 1, 6, '2024-10-30 08:00:00', 1, false, false),
(3, 8, '2024-10-30 16:00:00', '2024-10-30 18:00:00', 4, 8, '2024-10-30 17:00:00', 2, false, true),
(3, 10, '2024-10-29 09:30:00', '2024-10-29 11:30:00', 1, 10, '2024-10-29 10:30:00', 3, true, false),
(3, 12, '2024-10-29 15:00:00', '2024-10-29 17:00:00', 2, 12, '2024-10-29 16:00:00', 17, false, false),
(3, 14, '2024-10-28 08:00:00', '2024-10-28 10:00:00', 1, 14, '2024-10-28 09:00:00', 19, false, true),
(3, 22, '2024-10-28 12:30:00', '2024-10-28 14:30:00', 3, 22, '2024-10-28 13:30:00', 11, false, false),
(3, 24, '2024-10-27 07:30:00', '2024-10-27 09:30:00', 1, 24, '2024-10-27 08:30:00', 25, false, false),
(3, 26, '2024-10-27 14:00:00', '2024-10-27 16:00:00', 2, 26, '2024-10-27 15:00:00', 30, true, false),
(3, 28, '2024-10-26 08:30:00', '2024-10-26 10:30:00', 1, 28, '2024-10-26 09:30:00', 21, false, true),
(3, 30, '2024-10-26 13:00:00', '2024-10-26 15:00:00', 3, 30, '2024-10-26 14:00:00', 28, false, false),
(3, 31, '2024-10-25 09:00:00', '2024-10-25 11:00:00', 1, 31, '2024-10-25 10:00:00', 26, false, false),
(3, 32, '2024-10-25 15:30:00', '2024-10-25 17:30:00', 2, 32, '2024-10-25 16:30:00', 23, false, true),
(3, 33, '2024-10-24 07:00:00', '2024-10-24 09:00:00', 1, 33, '2024-10-24 08:00:00', 30, true, false),
(3, 34, '2024-10-24 13:30:00', '2024-10-24 15:30:00', 3, 34, '2024-10-24 14:30:00', 35, false, false),
(3, 35, '2024-10-23 08:00:00', '2024-10-23 10:00:00', 1, 35, '2024-10-23 09:00:00', 32, false, true),
(3, 41, '2024-10-23 12:00:00', '2024-10-23 14:00:00', 2, 41, '2024-10-23 13:00:00', 40, false, false),
(3, 43, '2024-10-22 07:30:00', '2024-10-22 09:30:00', 1, 43, '2024-10-22 08:30:00', 27, true, false),
(3, 45, '2024-10-22 15:00:00', '2024-10-22 17:00:00', 3, 45, '2024-10-22 16:00:00', 41, false, true),
(3, 47, '2024-10-21 09:00:00', '2024-10-21 11:00:00', 1, 47, '2024-10-21 10:00:00', 47, false, false),
(3, 49, '2024-10-21 14:00:00', '2024-10-21 16:00:00', 2, 49, '2024-10-21 15:00:00', 48, false, true),
(3, 52, '2024-10-20 08:30:00', '2024-10-20 10:30:00', 1, 52, '2024-10-20 09:30:00', 46, false, false),
(3, 54, '2024-10-20 13:00:00', '2024-10-20 15:00:00', 3, 54, '2024-10-20 14:00:00', 52, true, false),
(3, 55, '2024-10-19 07:00:00', '2024-10-19 09:00:00', 1, 55, '2024-10-19 08:00:00', 49, false, false),
(3, 61, '2024-10-19 15:30:00', '2024-10-19 17:30:00', 2, 61, '2024-10-19 16:30:00', 45, false, true),
(3, 63, '2024-10-18 08:00:00', '2024-10-18 10:00:00', 1, 63, '2024-10-18 09:00:00', 51, false, false),
(3, 65, '2024-10-18 12:30:00', '2024-10-18 14:30:00', 3, 65, '2024-10-18 13:30:00', 58, true, false),
(3, 67, '2024-10-17 07:30:00', '2024-10-17 09:30:00', 1, 67, '2024-10-17 08:30:00', 60, false, true),
(3, 69, '2024-10-17 14:00:00', '2024-10-17 16:00:00', 2, 69, '2024-10-17 15:00:00', 55, false, false),
(3, 72, '2024-10-16 08:30:00', '2024-10-16 10:30:00', 1, 72, '2024-10-16 09:30:00', 54, false, false),
(3, 74, '2024-10-16 13:00:00', '2024-10-16 15:00:00', 3, 74, '2024-10-16 14:00:00', 43, true, false),
(3, 75, '2024-10-15 07:00:00', '2024-10-15 09:00:00', 1, 75, '2024-10-15 08:00:00', 50, false, true),
(3, 81, '2024-10-15 15:30:00', '2024-10-15 17:30:00', 2, 81, '2024-10-15 16:30:00', 52, false, false),
(3, 83, '2024-10-14 08:00:00', '2024-10-14 10:00:00', 1, 83, '2024-10-14 09:00:00', 46, false, false),
(3, 85, '2024-10-14 12:30:00', '2024-10-14 14:30:00', 3, 85, '2024-10-14 13:30:00', 48, true, false),
(3, 87, '2024-10-13 07:30:00', '2024-10-13 09:30:00', 1, 87, '2024-10-13 08:30:00', 60, false, true),
(3, 89, '2024-10-13 14:00:00', '2024-10-13 16:00:00', 2, 89, '2024-10-13 15:00:00', 54, false, false);

INSERT INTO offersToRequestedRides (requestedRideId, offerDateTime, status, driverId, carId, price) VALUES
-- Offers for current pending requests (status=1) - multiple drivers bidding
(1, '2025-01-01 08:05:00', 1, 16, 1, 45.50),
(1, '2025-01-01 08:07:00', 1, 17, 2, 42.00),
(1, '2025-01-01 08:10:00', 1, 18, 3, 48.00),
(2, '2025-01-01 08:35:00', 1, 19, 4, 55.00),
(2, '2025-01-01 08:38:00', 1, 20, 5, 52.50),
(3, '2025-01-01 09:05:00', 1, 36, 11, 38.00),
(3, '2025-01-01 09:08:00', 1, 37, 12, 40.00),
(4, '2025-01-01 09:20:00', 1, 38, 13, 65.00),
(5, '2025-01-01 09:35:00', 1, 39, 14, 35.00),
(6, '2025-01-01 10:05:00', 1, 40, 15, 50.00),-- Accepted offers for completed rides (status=2)
(21, '2024-12-28 07:35:00', 2, 16, 1, 42.00),
(22, '2024-12-28 08:05:00', 2, 17, 2, 58.50),
(23, '2024-12-28 14:35:00', 2, 18, 3, 38.00),
(24, '2024-12-28 16:05:00', 2, 19, 4, 75.00),
(25, '2024-12-28 18:35:00', 2, 20, 5, 48.00),
(26, '2024-12-29 07:05:00', 2, 36, 11, 52.00),
(27, '2024-12-29 09:35:00', 2, 37, 12, 45.00),
(28, '2024-12-29 13:05:00', 2, 38, 13, 68.00),
(29, '2024-12-29 17:35:00', 2, 39, 14, 35.00),
(30, '2024-12-29 19:05:00', 2, 40, 15, 55.00),
(31, '2024-12-30 06:50:00', 2, 16, 6, 40.00),
(32, '2024-12-30 08:20:00', 2, 17, 7, 42.50),
(33, '2024-12-30 12:35:00', 2, 18, 3, 58.00),
(34, '2024-12-30 15:05:00', 2, 19, 4, 38.00),
(35, '2024-12-30 18:50:00', 2, 20, 5, 65.00),
(36, '2024-12-31 07:05:00', 2, 36, 16, 45.00),
(37, '2024-12-31 10:35:00', 2, 37, 12, 52.00),
(38, '2024-12-31 14:05:00', 2, 38, 13, 48.00),
(39, '2024-12-31 16:35:00', 2, 39, 14, 78.00),
(40, '2024-12-31 20:05:00', 2, 40, 18, 60.00),
(41, '2024-12-27 08:05:00', 2, 56, 21, 42.00),
(42, '2024-12-27 11:35:00', 2, 57, 22, 55.00),
(43, '2024-12-27 15:05:00', 2, 58, 23, 38.00),
(44, '2024-12-27 18:35:00', 2, 59, 24, 68.00),
(45, '2024-12-27 21:05:00', 2, 60, 25, 58.00),
(46, '2024-12-26 07:35:00', 2, 56, 21, 45.00),
(47, '2024-12-26 10:05:00', 2, 57, 26, 60.00),
(48, '2024-12-26 13:35:00', 2, 58, 23, 48.00),
(49, '2024-12-26 16:05:00', 2, 59, 27, 82.00),
(50, '2024-12-26 19:35:00', 2, 60, 25, 42.00),

-- Rejected offers (status=3) - drivers offered but passenger chose someone else
(21, '2024-12-28 07:40:00', 3, 20, 5, 48.00),
(22, '2024-12-28 08:10:00', 3, 19, 4, 62.00),
(23, '2024-12-28 14:40:00', 3, 16, 1, 42.00),
(31, '2024-12-30 06:55:00', 3, 18, 3, 45.00),
(32, '2024-12-30 08:25:00', 3, 19, 4, 48.00),

-- Expired offers (status=4) - offered but request expired before acceptance
(11, '2024-12-20 06:10:00', 4, 16, 1, 35.00),
(12, '2024-12-20 10:15:00', 4, 17, 2, 55.00),
(13, '2024-12-19 15:20:00', 4, 18, 3, 45.00),
(14, '2024-12-19 18:25:00', 4, 19, 4, 72.00),
(15, '2024-12-18 07:15:00', 4, 20, 5, 42.00),

-- More accepted offers for older rides
(51, '2024-12-25 08:05:00', 2, 76, 31, 48.00),
(52, '2024-12-25 11:35:00', 2, 77, 32, 62.00),
(53, '2024-12-25 15:05:00', 2, 78, 33, 45.00),
(54, '2024-12-25 18:35:00', 2, 79, 34, 72.00),
(55, '2024-12-25 21:05:00', 2, 80, 35, 58.00);

INSERT INTO realisedRides (offerId, actualPickupDateTime, actualDropoffDateTime, cancellingDateTime, cancelledById, cancellationReason, passengerFeedbackScore, driverFeedbackScore) VALUES
-- Completed rides with ratings
(11, '2024-12-28 08:32:00', '2024-12-28 09:15:00', NULL, NULL, NULL, 5, 5),
(12, '2024-12-28 09:03:00', '2024-12-28 09:45:00', NULL, NULL, NULL, 4, 5),
(13, '2024-12-28 15:32:00', '2024-12-28 16:20:00', NULL, NULL, NULL, 5, 4),
(14, '2024-12-28 17:02:00', '2024-12-28 17:50:00', NULL, NULL, NULL, 3, 4),
(15, '2024-12-28 19:32:00', '2024-12-28 20:25:00', NULL, NULL, NULL, 5, 5),
(16, '2024-12-29 08:02:00', '2024-12-29 08:45:00', NULL, NULL, NULL, 4, 5),
(17, '2024-12-29 10:32:00', '2024-12-29 11:20:00', NULL, NULL, NULL, 5, 4),
(18, '2024-12-29 14:02:00', '2024-12-29 14:55:00', NULL, NULL, NULL, 5, 5),
(19, '2024-12-29 18:32:00', '2024-12-29 19:10:00', NULL, NULL, NULL, 4, 4),
(20, '2024-12-29 20:02:00', '2024-12-29 20:45:00', NULL, NULL, NULL, 5, 5),
(21, '2024-12-30 07:47:00', '2024-12-30 08:30:00', NULL, NULL, NULL, 5, 5),
(22, '2024-12-30 09:17:00', '2024-12-30 10:05:00', NULL, NULL, NULL, 4, 5),
(23, '2024-12-30 13:32:00', '2024-12-30 14:15:00', NULL, NULL, NULL, 5, 4),
(24, '2024-12-30 16:02:00', '2024-12-30 16:50:00', NULL, NULL, NULL, 5, 5),
(25, '2024-12-30 19:47:00', '2024-12-30 20:40:00', NULL, NULL, NULL, 4, 4),
(26, '2024-12-31 08:02:00', '2024-12-31 08:45:00', NULL, NULL, NULL, 5, 5),
(27, '2024-12-31 11:32:00', '2024-12-31 12:20:00', NULL, NULL, NULL, 5, 5),
(28, '2024-12-31 15:02:00', '2024-12-31 15:55:00', NULL, NULL, NULL, 4, 5),
(29, '2024-12-31 17:32:00', '2024-12-31 18:25:00', NULL, NULL, NULL, 5, 4),
(30, '2024-12-31 21:02:00', '2024-12-31 21:50:00', NULL, NULL, NULL, 5, 5),
(31, '2024-12-27 09:02:00', '2024-12-27 09:45:00', NULL, NULL, NULL, 5, 5),
(32, '2024-12-27 12:32:00', '2024-12-27 13:20:00', NULL, NULL, NULL, 4, 5),
(33, '2024-12-27 16:02:00', '2024-12-27 16:45:00', NULL, NULL, NULL, 5, 4),
(34, '2024-12-27 19:32:00', '2024-12-27 20:25:00', NULL, NULL, NULL, 5, 5),
(35, '2024-12-27 22:02:00', '2024-12-27 22:50:00', NULL, NULL, NULL, 4, 4),
(36, '2024-12-26 08:32:00', '2024-12-26 09:20:00', NULL, NULL, NULL, 5, 5),
(37, '2024-12-26 11:02:00', '2024-12-26 11:55:00', NULL, NULL, NULL, 5, 5),
(38, '2024-12-26 14:32:00', '2024-12-26 15:15:00', NULL, NULL, NULL, 4, 5),
(39, '2024-12-26 17:02:00', '2024-12-26 17:55:00', NULL, NULL, NULL, 5, 4),
(40, '2024-12-26 20:32:00', '2024-12-26 21:20:00', NULL, NULL, NULL, 5, 5),
(41, '2024-12-25 09:02:00', '2024-12-25 09:50:00', NULL, NULL, NULL, 5, 5),
(42, '2024-12-25 12:32:00', '2024-12-25 13:25:00', NULL, NULL, NULL, 4, 5),
(43, '2024-12-25 16:02:00', '2024-12-25 16:45:00', NULL, NULL, NULL, 5, 4),
(44, '2024-12-25 19:32:00', '2024-12-25 20:20:00', NULL, NULL, NULL, 5, 5),
(45, '2024-12-25 22:02:00', '2024-12-25 22:50:00', NULL, NULL, NULL, 4, 4),
-- Some cancelled rides
(46, '2024-12-26 08:35:00', NULL, '2024-12-26 08:40:00', 2, 'Passenger cancelled - found another ride', NULL, NULL),
(47, '2024-12-26 11:10:00', NULL, '2024-12-26 11:15:00', 57, 'Driver cancelled - car trouble', NULL, NULL),
-- More completed rides
(48, '2024-12-26 14:32:00', '2024-12-26 15:20:00', NULL, NULL, NULL, 5, 5),
(49, '2024-12-26 17:02:00', '2024-12-26 18:05:00', NULL, NULL, NULL, 3, 4),
(50, '2024-12-26 20:32:00', '2024-12-26 21:15:00', NULL, NULL, NULL, 5, 5),
(51, '2024-12-25 09:02:00', '2024-12-25 09:55:00', NULL, NULL, NULL, 5, 5),
(52, '2024-12-25 12:32:00', '2024-12-25 13:30:00', NULL, NULL, NULL, 4, 5),
(53, '2024-12-25 16:02:00', '2024-12-25 16:50:00', NULL, NULL, NULL, 5, 4),
(54, '2024-12-25 19:32:00', '2024-12-25 20:30:00', NULL, NULL, NULL, 5, 5),
(55, '2024-12-25 22:02:00', '2024-12-25 23:00:00', NULL, NULL, NULL, 4, 5);
