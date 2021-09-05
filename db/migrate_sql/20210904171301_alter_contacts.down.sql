ALTER TABLE contacts ADD COLUMN master_leadsource_id int8 NULL;
ALTER TABLE contacts ADD COLUMN source varchar NULL;
ALTER TABLE contacts DROP COLUMN salutation;
ALTER TABLE contacts DROP COLUMN master_lead_source_id;
ALTER TABLE contacts DROP COLUMN birthday;
ALTER TABLE contacts DROP COLUMN master_country_id;
ALTER TABLE contacts DROP COLUMN master_province_id;
ALTER TABLE contacts DROP COLUMN master_district_id;
ALTER TABLE contacts DROP COLUMN master_ward_id;
ALTER TABLE contacts DROP COLUMN street;
ALTER TABLE contacts DROP COLUMN delete_flag;

COMMENT ON COLUMN contacts.master_leadsource_id IS 'Lead Source';
COMMENT ON COLUMN contacts.source IS 'Source';
