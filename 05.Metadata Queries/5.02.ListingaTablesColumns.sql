SELECT column_name, data_type, ordinal_position
FROM information_schema.columns
WHERE table_schema = 'SMEAGOL'
    AND table_name = 'EMP';