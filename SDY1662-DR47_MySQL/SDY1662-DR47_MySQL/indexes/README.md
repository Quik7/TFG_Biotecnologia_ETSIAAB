# Indexes

This directory contains the DDL to create indexes for the MySQL relational
tables. The ../scripts/createResearchIndexes.sh uses the DDL in these files
to create the indexes.

## Note
If a new table is added to the data model, you will need to add a new
index file in this directory, as well as updating the 
../scripts/createResearchIndexes.sh script.