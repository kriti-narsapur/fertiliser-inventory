# Fertiliser Inventory Data Model and Report

The farm manager interacts with FarmIQ system to create land applications events. As and when the products are being used by land application events, the farm need to keep track of the fertiliser inventory so that they can adjust the fertilisers accordingly.

To construct the data model in star schema, a dummy database is being created with base tables as fertilisers (fertilisers.csv) and events (events.csv). The fact tables inventory (inventory.csv), stores the quantity of fertilisers in the inventory with the date when the inventory was updated, and land_application table (land_application.csv) stores the event at which the fertilisers were used and their quantity of usage.

The result of the model (fertiliser_inventory_model.sql) is as in file Results.csv
