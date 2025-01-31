use ride_sharing_analytic;

CREATE TABLE DRIVERS(
DRIVER_ID SERIAL PRIMARY KEY,
NAME VARCHAR(100),
RATING DECIMAL(5,2),
TOTAL_RIDES BIGINT
);

CREATE TABLE RIDERS(
RIDER_ID SERIAL PRIMARY KEY,
NAME VARCHAR(100),
CITY VARCHAR(100)
);

CREATE TABLE RIDES(
RIDE_ID SERIAL PRIMARY KEY,
DRIVER_ID BIGINT UNSIGNED,
RIDER_ID BIGINT UNSIGNED,
FARE DOUBLE,
RATING DECIMAL(5,2),
DISTANCE_KM BIGINT,
FOREIGN KEY (RIDER_ID) REFERENCES RIDERS(RIDER_ID),
FOREIGN KEY (DRIVER_ID) REFERENCES DRIVERS(DRIVER_ID)
);


CREATE TABLE PAYMENTS(
PAYMENT_ID SERIAL PRIMARY KEY,
RIDE_ID BIGINT UNSIGNED,
AMOUNT DOUBLE,
PAYMENT_METHOD VARCHAR(100),
CONSTRAINT PAYMENTSFK FOREIGN KEY (RIDE_ID) REFERENCES RIDES(RIDE_ID)
);











