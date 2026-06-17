# Ride-Sharing Service — Relational Database Design

A relational database for a ride-sharing service, designed and implemented in MySQL. It models users and their roles, vehicles, geographic/address data, and the full lifecycle of a ride — from a passenger's request, through driver offers, to a realised (or cancelled) trip.

This is a coursework project from my **AP Degree in IT (Akademiuddannelse i Informationsteknologi)** at **Erhvervsakademi København (KEA)**. It was built to practise relational data modelling, referential integrity, and database-side automation.

## What it demonstrates

- **Normalized schema (16 tables)** with consistent primary/foreign keys and referential integrity throughout.
- **Lookup tables instead of magic values** — e.g. `roles`, `requestedRidesStatuses`, `offersStatuses` — to keep status/role data consistent and self-documenting.
- **Many-to-many relationships via junction tables** — `personToRole` (a person can be both passenger and driver), `personsToAddresses` (saved "Home"/"Work" locations), and `carsToDrivers` (a car may be shared by several drivers, and a driver may have several cars).
- **Separation of concerns in reference data** — `carManufacturers` and `carModels` are split to avoid data-entry errors and simplify filtering.
- **A modelled state machine for the ride lifecycle** — `requestedRides` → `offersToRequestedRides` → `realisedRides`, with status transitions tracked at each stage.

## Database-side automation

- **Scheduled event — automatic expiry.** `event_updateExpiredRideRequests.sql` defines an event that runs every minute, scanning for still-`pending` ride requests whose `requestExpireDateTime` has passed and marking them `expired`. This keeps the data consistent without relying on application code to clean up.
- **Transaction-wrapped stored procedure — atomic offer acceptance.** `procedure_acceptRideOffer.sql` handles the multi-step transition when a driver's offer is accepted. Because several rows change together, it is wrapped in a single transaction (`START TRANSACTION … COMMIT`) so the steps either all succeed or none do, preventing partial updates and inconsistent state. In one transaction it:
  1. marks the chosen offer as **accepted**,
  2. sets the ride request to **accepted**,
  3. expires all other competing offers for that ride, and
  4. initialises the record in `realisedRides`.

## Repository contents

| File | Description |
|------|-------------|
| `create database.sql` | Schema — all table definitions, keys, and constraints. |
| `populate.sql` | Sample data (fabricated test data only). |
| `procedure_acceptRideOffer.sql` | Transaction-wrapped stored procedure for accepting an offer. |
| `event_updateExpiredRideRequests.sql` | Scheduled event that expires stale ride requests. |
| `event_test_updateExpiredRideRequests.sql` | Test script for the expiry event. |
| `Diagram.pdf` | Entity-relationship diagram of the schema. |
| `report.pdf` | Project report (design decisions, business rules, automation). |

## How to run

```sql
-- 1. Create the schema
SOURCE create database.sql;

-- 2. Load sample data
SOURCE populate.sql;

-- 3. Add the stored procedure and the scheduled event
SOURCE procedure_acceptRideOffer.sql;
SOURCE event_updateExpiredRideRequests.sql;
```

> The scheduled event requires the MySQL event scheduler to be enabled:
> `SET GLOBAL event_scheduler = ON;`

## Notes

- All sample data is fabricated for demonstration; it contains no real personal information.
- Built and tested with MySQL (modelled in MySQL Workbench).
