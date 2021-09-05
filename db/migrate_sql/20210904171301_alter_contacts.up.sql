ALTER TABLE contacts DROP COLUMN master_leadsource_id;
ALTER TABLE contacts DROP COLUMN source;
ALTER TABLE contacts ADD COLUMN salutation varchar NULL;
ALTER TABLE contacts ADD COLUMN master_lead_source_id int8 NULL;
ALTER TABLE contacts ADD COLUMN birthday varchar NULL;
ALTER TABLE contacts ADD COLUMN master_country_id int8 NULL;
ALTER TABLE contacts ADD COLUMN master_province_id int8 NULL;
ALTER TABLE contacts ADD COLUMN master_district_id int8 NULL;
ALTER TABLE contacts ADD COLUMN master_ward_id int8 NULL;
ALTER TABLE contacts ADD COLUMN street int8 NULL;
ALTER TABLE contacts ADD COLUMN delete_flag int8 NULL;

COMMENT ON COLUMN contacts.salutation IS 'Salutation';
COMMENT ON COLUMN contacts.master_lead_source_id IS 'Lead Source';
COMMENT ON COLUMN contacts.birthday IS 'Birthday';
COMMENT ON COLUMN contacts.master_country_id IS 'Country';
COMMENT ON COLUMN contacts.master_province_id IS 'Province';
COMMENT ON COLUMN contacts.master_district_id IS 'District';
COMMENT ON COLUMN contacts.master_ward_id IS 'Ward';
COMMENT ON COLUMN contacts.street IS 'Street';
COMMENT ON COLUMN contacts.delete_flag IS 'Delete Flag';