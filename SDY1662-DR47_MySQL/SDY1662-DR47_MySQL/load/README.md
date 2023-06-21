# Load

This directory contain the scripts to load a table
into MySQL using the infile option. The ../scripts/loadLkData.sh and
loadResearchData.sh uses the files in this dirctory.

## Note
If a new table is added to the data model, you will need to a new load
file for this table, as well as updating either the loadLkData.sh or
loadResearchData.sh scripts.