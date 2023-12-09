ALTER TABLE "maintenancemode$maintenancemode" ALTER COLUMN "contactemail" RENAME TO "adminemail";
UPDATE "mendixsystem$attribute" SET "entity_id" = 'a8927401-6b3b-4733-a06c-03b740eb8c5f', "attribute_name" = 'AdminEmail', "column_name" = 'adminemail', "type" = 30, "length" = 200, "default_value" = '', "is_auto_number" = false WHERE "id" = '9eca977c-6694-4b6a-8277-a6930afa6e23';
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20231209 15:51:02';
