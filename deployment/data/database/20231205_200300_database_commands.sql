CREATE TABLE "maintenance$maintenancebyrole" (
	"id" BIGINT NOT NULL,
	"affected" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('888a11da-ffb0-41e5-b9e0-9df834d2435f', 'Maintenance.MaintenanceByRole', 'maintenance$maintenancebyrole', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('f909dadc-d129-4367-b1ca-23b99fcb3e60', '888a11da-ffb0-41e5-b9e0-9df834d2435f', 'Affected', 'affected', 10, 0, 'false', false);
CREATE TABLE "maintenance$maintenance" (
	"id" BIGINT NOT NULL,
	"enabled" BOOLEAN NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('a8927401-6b3b-4733-a06c-03b740eb8c5f', 'Maintenance.Maintenance', 'maintenance$maintenance', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2512e7c0-9168-4897-9eb0-8b5b31c1de8e', 'a8927401-6b3b-4733-a06c-03b740eb8c5f', 'Enabled', 'enabled', 10, 0, 'false', false);
CREATE TABLE "maintenance$maintenancebyrole_userrole" (
	"maintenance$maintenancebyroleid" BIGINT NOT NULL,
	"system$userroleid" BIGINT NOT NULL,
	PRIMARY KEY("maintenance$maintenancebyroleid","system$userroleid"),
	CONSTRAINT "uniq_maintenance$maintenancebyrole_userrole_maintenance$maintenancebyroleid" UNIQUE ("maintenance$maintenancebyroleid"));
CREATE INDEX "idx_maintenance$maintenancebyrole_userrole_system$userrole_maintenance$maintenancebyrole" ON "maintenance$maintenancebyrole_userrole" ("system$userroleid" ASC,"maintenance$maintenancebyroleid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name") VALUES ('8f40f3e2-58d9-43f6-8408-15784ff55a6e', 'Maintenance.MaintenanceByRole_UserRole', 'maintenance$maintenancebyrole_userrole', '888a11da-ffb0-41e5-b9e0-9df834d2435f', '92ef30a6-de04-423c-84fd-a21e9b9eeae2', 'maintenance$maintenancebyroleid', 'system$userroleid', 'idx_maintenance$maintenancebyrole_userrole_system$userrole_maintenance$maintenancebyrole');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_maintenance$maintenancebyrole_userrole_maintenance$maintenancebyroleid', '8f40f3e2-58d9-43f6-8408-15784ff55a6e', '490aa712-55bc-3ea2-abda-bb09e874e651');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231205 20:03:00';
