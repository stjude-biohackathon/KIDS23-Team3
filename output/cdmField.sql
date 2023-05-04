/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(GENDER_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = YEAR_OF_BIRTH
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(YEAR_OF_BIRTH) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = MONTH_OF_BIRTH
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MONTH_OF_BIRTH) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = DAY_OF_BIRTH
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DAY_OF_BIRTH) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = BIRTH_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(BIRTH_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(RACE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ETHNICITY_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = LOCATION_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(LOCATION_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = CARE_SITE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CARE_SITE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = PERSON_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(GENDER_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(GENDER_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(RACE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(RACE_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ETHNICITY_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ETHNICITY_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_PERIOD_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_PERIOD_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_PERIOD_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERIOD_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_START_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_END_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = CARE_SITE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CARE_SITE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ADMITTING_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTING_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ADMITTING_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DISCHARGE_TO_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DISCHARGE_TO_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PRECEDING_VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PRECEDING_VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_START_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_END_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_STATUS_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = STOP_REASON
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(STOP_REASON) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_STATUS_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_EXPOSURE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_EXPOSURE_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_EXPOSURE_START_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_EXPOSURE_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_EXPOSURE_END_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VERBATIM_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = STOP_REASON
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(STOP_REASON) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(REFILLS) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = QUANTITY
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(QUANTITY) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DAYS_SUPPLY) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = SIG
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SIG) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ROUTE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = LOT_NUMBER
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(LOT_NUMBER) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ROUTE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DOSE_UNIT_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DOSE_UNIT_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROCEDURE_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROCEDURE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROCEDURE_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROCEDURE_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROCEDURE_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MODIFIER_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = QUANTITY
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(QUANTITY) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROCEDURE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROCEDURE_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MODIFIER_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEVICE_EXPOSURE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEVICE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEVICE_EXPOSURE_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEVICE_EXPOSURE_START_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEVICE_EXPOSURE_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEVICE_EXPOSURE_END_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEVICE_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIQUE_DEVICE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(UNIQUE_DEVICE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = QUANTITY
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(QUANTITY) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEVICE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEVICE_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MEASUREMENT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MEASUREMENT_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MEASUREMENT_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MEASUREMENT_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MEASUREMENT_TIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MEASUREMENT_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OPERATOR_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_NUMBER
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VALUE_AS_NUMBER) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VALUE_AS_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(UNIT_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = RANGE_LOW
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(RANGE_LOW) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = RANGE_HIGH
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(RANGE_HIGH) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MEASUREMENT_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(MEASUREMENT_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(UNIT_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VALUE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_START_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_END_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = CARE_SITE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CARE_SITE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTING_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ADMITTING_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ADMITTING_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGE_TO_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DISCHARGE_TO_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DISCHARGE_TO_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = PRECEDING_VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PRECEDING_VISIT_DETAIL_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_PARENT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_PARENT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_CLASS_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_TITLE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_TITLE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_TEXT
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_TEXT) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ENCODING_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(LANGUAGE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_NLP_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SECTION_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = SNIPPET
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SNIPPET) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = LEXICAL_VARIANT
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(LEXICAL_VARIANT) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_NLP_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NOTE_NLP_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NLP_SYSTEM
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NLP_SYSTEM) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NLP_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NLP_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = TERM_EXISTS
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(TERM_EXISTS) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = TERM_TEMPORAL
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(TERM_TEMPORAL) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = TERM_MODIFIERS
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(TERM_MODIFIERS) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_NUMBER
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VALUE_AS_NUMBER) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_STRING
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VALUE_AS_STRING) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VALUE_AS_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(QUALIFIER_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(UNIT_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_OCCURRENCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VISIT_DETAIL_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(VISIT_DETAIL_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(OBSERVATION_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = UNIT_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(UNIT_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(QUALIFIER_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIMEN_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIMEN_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIMEN_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIMEN_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATETIME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIMEN_DATETIME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = QUANTITY
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(QUANTITY) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = UNIT_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(UNIT_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ANATOMIC_SITE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DISEASE_STATUS_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_SOURCE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIMEN_SOURCE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIMEN_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = UNIT_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(UNIT_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ANATOMIC_SITE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DISEASE_STATUS_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_1
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DOMAIN_CONCEPT_ID_1) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_1
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(FACT_ID_1) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_2
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DOMAIN_CONCEPT_ID_2) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_2
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(FACT_ID_2) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(RELATIONSHIP_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = LOCATION_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(LOCATION_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = ADDRESS_1
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ADDRESS_1) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = ADDRESS_2
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ADDRESS_2) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = CITY
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CITY) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = STATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(STATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = ZIP
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(ZIP) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = COUNTY
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(COUNTY) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = LOCATION_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(LOCATION_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CARE_SITE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_NAME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CARE_SITE_NAME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PLACE_OF_SERVICE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = LOCATION_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(LOCATION_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CARE_SITE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PLACE_OF_SERVICE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_NAME
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_NAME) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = NPI
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(NPI) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = DEA
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DEA) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIALTY_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = CARE_SITE_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CARE_SITE_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = YEAR_OF_BIRTH
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(YEAR_OF_BIRTH) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(GENDER_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PROVIDER_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIALTY_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPECIALTY_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(GENDER_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(GENDER_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAYER_PLAN_PERIOD_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAYER_PLAN_PERIOD_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAYER_PLAN_PERIOD_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAYER_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAYER_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAYER_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PLAN_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PLAN_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PLAN_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPONSOR_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPONSOR_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(SPONSOR_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = FAMILY_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(FAMILY_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(STOP_REASON_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(STOP_REASON_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(STOP_REASON_SOURCE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(COST_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_EVENT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(COST_EVENT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_DOMAIN_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(COST_DOMAIN_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(COST_TYPE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = CURRENCY_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CURRENCY_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = TOTAL_CHARGE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(TOTAL_CHARGE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = TOTAL_COST
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(TOTAL_COST) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = TOTAL_PAID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(TOTAL_PAID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAID_BY_PAYER
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAID_BY_PAYER) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAID_BY_PATIENT
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAID_BY_PATIENT) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAID_PATIENT_COPAY
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAID_PATIENT_COPAY) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAID_PATIENT_COINSURANCE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAID_PATIENT_COINSURANCE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAID_PATIENT_DEDUCTIBLE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAID_PATIENT_DEDUCTIBLE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAID_BY_PRIMARY
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAID_BY_PRIMARY) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAID_INGREDIENT_COST
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAID_INGREDIENT_COST) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAID_DISPENSING_FEE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAID_DISPENSING_FEE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAYER_PLAN_PERIOD_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PAYER_PLAN_PERIOD_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = AMOUNT_ALLOWED
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(AMOUNT_ALLOWED) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = REVENUE_CODE_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(REVENUE_CODE_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = REVENUE_CODE_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(REVENUE_CODE_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = DRG_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRG_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = DRG_SOURCE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRG_SOURCE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_ERA_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_ERA_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_ERA_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_EXPOSURE_COUNT
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_EXPOSURE_COUNT) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = GAP_DAYS
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(GAP_DAYS) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DOSE_ERA_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DRUG_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(UNIT_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_VALUE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DOSE_VALUE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DOSE_ERA_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(DOSE_ERA_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_ERA_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = PERSON_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(PERSON_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_CONCEPT_ID) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_ERA_START_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_ERA_END_DATE) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

/*********
FIELD LEVEL check:
CDM_FIELD - verify the field exists
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_OCCURRENCE_COUNT
**********/
SELECT 
  num_violated_rows, 
  CASE 
    WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
  END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM (
  SELECT num_violated_rows FROM (
    SELECT
      CASE 
        WHEN COUNT(CONDITION_OCCURRENCE_COUNT) = 0 THEN 0
        ELSE 0
      END AS num_violated_rows
    FROM cdm_synthea10.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
  SELECT 1 AS num_rows
) denominator
;

