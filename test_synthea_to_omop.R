# install.packages("devtools")
# devtools::install_github("OHDSI/ETL-Synthea")

library(DatabaseConnector)
library(ETLSyntheaBuilder)

cd <- DatabaseConnector::createConnectionDetails(
  dbms     = "postgresql",
  server   = "broadsea-atlasdb/postgres",
  user     = "postgres",
  password = "mypass",
  port     = 5432
)

cdmSchema      <- "cdm_synthea10"
cdmVersion     <- "5.4"
syntheaVersion <- "3.0.0"
syntheaSchema  <- "vocab"
syntheaFileLoc <- "/tmp/KIDS23-Team3/scd_csv"
#vocabFileLoc   <- "/tmp/omop_vocab"

### Updated vocab file path to include CPT4 updates

vocabFileLoc   <- "/tmp/omop_vocab"


ETLSyntheaBuilder::CreateCDMTables(
  connectionDetails = cd,
  cdmSchema = cdmSchema,
  cdmVersion = cdmVersion
)

ETLSyntheaBuilder::CreateSyntheaTables(
  connectionDetails = cd,
  syntheaSchema = syntheaSchema,
  syntheaVersion = syntheaVersion
)

# Modified Patient and Provider tables in the syntheaSchema (native)
### Patient - Added - fips (numeric), income (numeric)
### Provider - Dropped - utilization, Added - encounters (numeric), procedures (numeric)

ETLSyntheaBuilder::LoadSyntheaTables(
  connectionDetails = cd,
  syntheaSchema = syntheaSchema,
  syntheaFileLoc = syntheaFileLoc
)


# Update patient

ETLSyntheaBuilder::LoadVocabFromCsv(
  connectionDetails = cd,
  cdmSchema = cdmSchema,
  vocabFileLoc = vocabFileLoc
)

ETLSyntheaBuilder::LoadEventTables(
  connectionDetails = cd,
  cdmSchema = cdmSchema,
  syntheaSchema = syntheaSchema,
  cdmVersion = cdmVersion,
  syntheaVersion = syntheaVersion
)

# ----

#sql_create<-"create schema native"

#sql_drop<-"drop schema native cascade"

#executeSql(conn,sql=sql_drop)

#executeSql(conn,sql=sql_create)



list.files(path = "/tmp/")
