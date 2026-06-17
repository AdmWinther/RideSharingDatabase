use RideSharingDatabase;
DROP EVENT if exists updateExpiredRideRequests;

DELIMITER $$

CREATE EVENT updateExpiredRideRequests
ON SCHEDULE EVERY 1 MINUTE
DO
BEGIN
    UPDATE requestedRides SET status = (
		SELECT id from requestedRides where status = 'expired'
    )
    WHERE requestExpireDateTime < NOW();
END$$