DROP TABLE CustomerGroupThresholds;

CREATE TABLE IF NOT EXISTS CustomerGroupThresholds (
CustomerGroupName character varying (40),
RangeBottom REAL,
RangeTop reaL);

INSERT INTO CustomerGroupThresholds(CustomerGroupName, RangeBottom, RangeTop)
values
('Low', 0.0, 1000.0),
('Medium', 1000.0, 5000.0),
('High', 5000.0, 10000.0),
('VeryHigh', 10000.0, 1000000.0);