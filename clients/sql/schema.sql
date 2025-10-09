CREATE TABLE nktg_objects (
    id INTEGER PRIMARY KEY,
    x REAL,       -- Position
    v REAL,       -- Velocity
    m REAL,       -- Mass
    dm_dt REAL    -- Rate of change of mass
);
