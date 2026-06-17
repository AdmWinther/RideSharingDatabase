use RideSharingDatabase;

DELIMITER //

CREATE PROCEDURE AcceptRideOffer(
    IN input_offer_id INT,
    IN input_pickup_time DATETIME
)
BEGIN
    -- 1. Declare variables to store data we'll need during the process
    DECLARE v_ride_id INT;
    
    -- Start a transaction to ensure "All or Nothing"
    START TRANSACTION;

    -- 2. Find the Ride ID associated with this offer
    SELECT requestedRideId INTO v_ride_id 
    FROM offersToRequestedRides 
    WHERE id = input_offer_id;

    -- 3. Update the chosen offer to 'accepted' (Status ID 2)
    UPDATE offersToRequestedRides 
    SET status = 2 
    WHERE id = input_offer_id;

    -- 4. Update the actual ride request to 'accepted' (Status ID 3)
    UPDATE requestedRides 
    SET status = 3 
    WHERE id = v_ride_id;

    -- 5. Expire all OTHER offers for this same ride (Status ID 4)
    UPDATE offersToRequestedRides 
    SET status = 4 
    WHERE requestedRideId = v_ride_id 
    AND id <> input_offer_id;

    -- 6. Insert the record into realisedRides to start the journey
    INSERT INTO realisedRides (offerId, actualPickupDateTime)
    VALUES (input_offer_id, input_pickup_time);

    -- Commit the changes to the database
    COMMIT;
    
END //

DELIMITER ;