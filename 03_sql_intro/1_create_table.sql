CREATE TABLE IF NOT EXISTS system.jokes (
        -- autogenerate joke_id but can supply own id
        joke_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        category VARCHAR2(20) NOT NULL,
        joke VARCHAR2(200) NOT NULL,
        -- check constraint - error when not inside this range
        rating NUMBER(2) CHECK (rating BETWEEN 1 AND 10)
);

EXIT
