library(dplyr)
library(dbplyr)
library(DatabaseConnector)

conn <-
  DatabaseConnector::connect(
    dbms = "postgresql",
    server = "broadsea-atlasdb/postgres",
    user = "postgres",
    password = "mypass",
    port = 5432
  )


#checking important tables:

tbl(conn, in_schema("native", "patients"))


tbl(conn, in_schema("cdm_synthea10", "CONCEPT"))


tbl(conn, in_schema("cdm_synthea10", "vocabulary"))
tbl(conn, in_schema("cdm_synthea10", "CONCEPT"))
tbl(conn, in_schema("cdm_synthea10", "concept_ancestor"))
tbl(conn, in_schema("cdm_synthea10", "concept_class"))
tbl(conn, in_schema("cdm_synthea10", "concept_relationship"))
tbl(conn, in_schema("cdm_synthea10", "concept_synonym"))

tbl(conn, in_schema("cdm_synthea10", "person"))
tbl(conn, in_schema("cdm_synthea10", "provider"))


#look for SCD concepts
tbl(conn, in_schema("cdm_synthea10", "CONCEPT")) %>% 
  filter(concept_name %like% "Sickle%" | 
           concept_name %like% "sickle%") %>% 
  select(concept_id, concept_name, domain_id, vocabulary_id, concept_class_id) %>% 
  print(n = 100)
