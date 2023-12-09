ALTER TABLE "maintenancemode$maintenancemode" ADD "contactemail" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9eca977c-6694-4b6a-8277-a6930afa6e23', 'a8927401-6b3b-4733-a06c-03b740eb8c5f', 'ContactEmail', 'contactemail', 30, 200, '', false);
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231209 15:33:28';
