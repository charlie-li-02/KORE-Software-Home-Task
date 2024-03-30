# Project Organization
* The provided CSV data can be found in `KORE Software Home Task/Data/data.csv`
* The backup file of the database including the execution of the SSIS package can be found in `KORE Software Home Task/DBBackup/KoreAssignment_Charlie_Li.zip`

# Assumptions Made
1. The provided CSV file has trailing spaces in some of the rows, the spaces were removed before being loaded in by the SSIS package. It was assumed that it is fine to edit the source CSV file, the modified CSV file included in this repository.
2. Data extraction from CSV and data cleansing in the staging table are done in two separate SSIS tasks as opposed to performing the data cleansing before storing the data in staging. This assumption was made based on both the task description's layout and the fact that it would be easier to maintain the SSIS package.
3. The production table schema was assumed to be correct, in that all columns except the `ID` (primary key) are nullable, except it is undesirable to have the `UserID` column contain null values which would presumably be invalid entries because of the lack of a `UserID`. All other columns are left as is with null values. In other words, the only entries removed are those which are duplicate entries or those with a null `UserID`.
