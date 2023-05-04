library(DatabaseConnector)
library(ETLSyntheaBuilder)
library(Achilles)


cd <- DatabaseConnector::createConnectionDetails(
  dbms     = "postgresql",
  server   = "broadsea-atlasdb/postgres",
  user     = "postgres",
  password = "mypass",
  port     = 5432
)

cdmSchema      <- "cdm_synthea10"




achilles(
  connectionDetails = cd,
  cdmDatabaseSchema = cdmSchema,
  resultsDatabaseSchema = "synthea_results",
  outputFolder = "output",
  createTable  = TRUE
)
