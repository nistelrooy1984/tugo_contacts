CREATE TABLE contacts (
  id bigserial PRIMARY KEY,

  firstname varchar NULL,

  lastname varchar NOT NULL,

  email varchar NULL,

  phone varchar NULL,

  title varchar NULL,

  creator_id int8 NULL,

  owner_id int8 NULL,

  modified_by_id int8 NULL,

  master_leadsource_id int8 NULL,

  is_converted_from_lead bool NULL,

  is_do_not_call bool NULL,

  source varchar NULL,

  description varchar NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL 
);

COMMENT ON TABLE contacts IS 'Contacts';

-- Column comments

COMMENT ON COLUMN contacts.id IS 'ID';

COMMENT ON COLUMN contacts.firstname IS 'First Name';

COMMENT ON COLUMN contacts.lastname IS 'Last Name';

COMMENT ON COLUMN contacts.email IS 'Email';

COMMENT ON COLUMN contacts.email IS 'Phone';

COMMENT ON COLUMN contacts.title IS 'Title';

COMMENT ON COLUMN contacts.creator_id IS 'Created By';

COMMENT ON COLUMN contacts.owner_id IS 'Assigned To';

COMMENT ON COLUMN contacts.modified_by_id IS 'Modified By';

COMMENT ON COLUMN contacts.master_leadsource_id IS 'Lead Source';

COMMENT ON COLUMN contacts.is_converted_from_lead IS 'Is Converted From Lead';

COMMENT ON COLUMN contacts.is_do_not_call IS 'Do Not Call';

COMMENT ON COLUMN contacts.source IS 'Source';

COMMENT ON COLUMN contacts.description IS 'Description Details';

COMMENT ON COLUMN employees.created_at IS 'Created At';

COMMENT ON COLUMN employees.updated_at IS 'Updated At';
