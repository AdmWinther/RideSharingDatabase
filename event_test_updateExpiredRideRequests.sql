use RideSharingDatabase;

Select * from requestedRides;

SELECT count(*) FROM requestedRides;

-- pending rides (status = 1)
Select * from requestedRides where requestedRides.status = "1";

-- expired rides (status = 2)
Select * from requestedRides where requestedRides.status = "2";

-- accepted rides (status = 3)
Select * from requestedRides where requestedRides.status = "3";
Select count(*) from requestedRides where requestedRides.status = "3";

-- cancelled rides (status = 4)
Select * from requestedRides where requestedRides.status = "4";


SELECT * from requestedRides WHERE requestExpireDateTime < NOW() and status =  1;


INSERT INTO requestedRides (
	passengerId,
    requestExpireDateTime, 
    pickupAddressId, 
    pickupTime, 
    dropoffAddressId
) VALUES (
	1, 										-- passenger id
    NOW() + interval 30 second,	-- requestExpireDateTime: current time + 20 second
    10, 									-- pickup addressId
    '2025-01-01 09:00:00', 					-- pickupTime
    6 										-- dropoffAddressId
);

SELECT * FROM offersToRequestedRides;

SELECT * FROM realisedRides;

SELECT * FROM persons persons;

SELECT * FROM requestedRides as rr inner Join persons as p on rr.passengerId=p.id;
SELECT * from [SELECT distinct p.firstName, p.lastName FROM requestedRides as rr inner Join persons as p on rr.passengerId=p.id];