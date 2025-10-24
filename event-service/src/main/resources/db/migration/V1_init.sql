CREATE TABLE IF NOT EXISTS events (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    source VARCHAR(64)NOT NULL,
    type VARCHAR(64) NOT NULL,
    payload JSON NOT NULL
);

CREATE INDEX IF NOT EXISTS ix_events_source_type_created_at
    ON events (source, type, created_at DESC);

