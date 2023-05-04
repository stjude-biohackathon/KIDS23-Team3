/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.GENDER_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PERSON cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.GENDER_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.GENDER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.RACE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PERSON cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.RACE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.RACE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.ETHNICITY_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PERSON cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.ETHNICITY_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.ETHNICITY_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = LOCATION_ID
fkTableName = LOCATION
fkFieldName = LOCATION_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.LOCATION_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PERSON cdmTable
		  LEFT JOIN cdm_synthea10.LOCATION fkTable
		  ON cdmTable.LOCATION_ID = fkTable.LOCATION_ID
		WHERE fkTable.LOCATION_ID IS NULL 
		  AND cdmTable.LOCATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PERSON cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.CARE_SITE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PERSON cdmTable
		  LEFT JOIN cdm_synthea10.CARE_SITE fkTable
		  ON cdmTable.CARE_SITE_ID = fkTable.CARE_SITE_ID
		WHERE fkTable.CARE_SITE_ID IS NULL 
		  AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.GENDER_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PERSON cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.GENDER_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.GENDER_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.RACE_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PERSON cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.RACE_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.RACE_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PERSON.ETHNICITY_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PERSON cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.ETHNICITY_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.ETHNICITY_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION_PERIOD.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION_PERIOD.PERIOD_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.PERIOD_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.PERIOD_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.VISIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.VISIT_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.VISIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.VISIT_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.VISIT_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.VISIT_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.CARE_SITE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CARE_SITE fkTable
		  ON cdmTable.CARE_SITE_ID = fkTable.CARE_SITE_ID
		WHERE fkTable.CARE_SITE_ID IS NULL 
		  AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.VISIT_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.VISIT_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.VISIT_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.ADMITTING_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.ADMITTING_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.ADMITTING_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.DISCHARGE_TO_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DISCHARGE_TO_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DISCHARGE_TO_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PRECEDING_VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_OCCURRENCE.PRECEDING_VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE fkTable
		  ON cdmTable.PRECEDING_VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
		WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
		  AND cdmTable.PRECEDING_VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.CONDITION_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.CONDITION_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.CONDITION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.CONDITION_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.CONDITION_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.CONDITION_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.CONDITION_STATUS_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.CONDITION_STATUS_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.CONDITION_STATUS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE fkTable
		  ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
		WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
		  AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_DETAIL fkTable
		  ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
		WHERE fkTable.VISIT_DETAIL_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_OCCURRENCE.CONDITION_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.CONDITION_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.CONDITION_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.DRUG_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DRUG_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.DRUG_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DRUG_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DRUG_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.ROUTE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.ROUTE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.ROUTE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE fkTable
		  ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
		WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
		  AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_DETAIL fkTable
		  ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
		WHERE fkTable.VISIT_DETAIL_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_EXPOSURE.DRUG_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DRUG_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DRUG_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.PROCEDURE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.PROCEDURE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.PROCEDURE_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.PROCEDURE_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.MODIFIER_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.MODIFIER_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.MODIFIER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE fkTable
		  ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
		WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
		  AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_DETAIL fkTable
		  ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
		WHERE fkTable.VISIT_DETAIL_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.PROCEDURE_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.PROCEDURE_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.DEVICE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DEVICE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DEVICE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.DEVICE_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DEVICE_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DEVICE_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE fkTable
		  ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
		WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
		  AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_DETAIL fkTable
		  ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
		WHERE fkTable.VISIT_DETAIL_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DEVICE_EXPOSURE.DEVICE_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DEVICE_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DEVICE_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.MEASUREMENT_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.MEASUREMENT_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.MEASUREMENT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.MEASUREMENT_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.MEASUREMENT_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.MEASUREMENT_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.OPERATOR_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.OPERATOR_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.OPERATOR_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.VALUE_AS_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.VALUE_AS_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.VALUE_AS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE fkTable
		  ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
		WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
		  AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_DETAIL fkTable
		  ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
		WHERE fkTable.VISIT_DETAIL_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'MEASUREMENT.MEASUREMENT_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.MEASUREMENT cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.VISIT_DETAIL_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.VISIT_DETAIL_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.VISIT_DETAIL_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.CARE_SITE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.CARE_SITE fkTable
		  ON cdmTable.CARE_SITE_ID = fkTable.CARE_SITE_ID
		WHERE fkTable.CARE_SITE_ID IS NULL 
		  AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.VISIT_DETAIL_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.VISIT_DETAIL_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.ADMITTING_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.ADMITTING_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.ADMITTING_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.DISCHARGE_TO_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DISCHARGE_TO_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DISCHARGE_TO_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = PRECEDING_VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.PRECEDING_VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_DETAIL fkTable
		  ON cdmTable.PRECEDING_VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
		WHERE fkTable.VISIT_DETAIL_ID IS NULL 
		  AND cdmTable.PRECEDING_VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_PARENT_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.VISIT_DETAIL_PARENT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_DETAIL fkTable
		  ON cdmTable.VISIT_DETAIL_PARENT_ID = fkTable.VISIT_DETAIL_ID
		WHERE fkTable.VISIT_DETAIL_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_PARENT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'VISIT_DETAIL.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE fkTable
		  ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
		WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
		  AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.NOTE_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.NOTE_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.NOTE_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.NOTE_CLASS_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.NOTE_CLASS_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.NOTE_CLASS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.ENCODING_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.ENCODING_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.ENCODING_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.LANGUAGE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.LANGUAGE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.LANGUAGE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE fkTable
		  ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
		WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
		  AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_DETAIL fkTable
		  ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
		WHERE fkTable.VISIT_DETAIL_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_ID
fkTableName = NOTE
fkFieldName = NOTE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE_NLP.NOTE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE_NLP cdmTable
		  LEFT JOIN cdm_synthea10.NOTE fkTable
		  ON cdmTable.NOTE_ID = fkTable.NOTE_ID
		WHERE fkTable.NOTE_ID IS NULL 
		  AND cdmTable.NOTE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE_NLP.SECTION_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE_NLP cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.SECTION_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.SECTION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE_NLP.NOTE_NLP_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE_NLP cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.NOTE_NLP_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.NOTE_NLP_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'NOTE_NLP.NOTE_NLP_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.NOTE_NLP cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE_NLP cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.OBSERVATION_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.OBSERVATION_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.OBSERVATION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.OBSERVATION_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.OBSERVATION_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.OBSERVATION_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.VALUE_AS_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.VALUE_AS_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.VALUE_AS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.QUALIFIER_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.QUALIFIER_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.QUALIFIER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.PROVIDER_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.PROVIDER fkTable
		  ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
		WHERE fkTable.PROVIDER_ID IS NULL 
		  AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.VISIT_OCCURRENCE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_OCCURRENCE fkTable
		  ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
		WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
		  AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.VISIT_DETAIL_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.VISIT_DETAIL fkTable
		  ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
		WHERE fkTable.VISIT_DETAIL_ID IS NULL 
		  AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'OBSERVATION.OBSERVATION_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.OBSERVATION cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.OBSERVATION_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.OBSERVATION_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.SPECIMEN cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.SPECIMEN_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.SPECIMEN cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.SPECIMEN_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.SPECIMEN_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.SPECIMEN_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.SPECIMEN cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.SPECIMEN_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.SPECIMEN_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.SPECIMEN cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.ANATOMIC_SITE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.SPECIMEN cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.ANATOMIC_SITE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.ANATOMIC_SITE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'SPECIMEN.DISEASE_STATUS_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.SPECIMEN cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DISEASE_STATUS_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DISEASE_STATUS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_1
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_1' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DOMAIN_CONCEPT_ID_1 = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DOMAIN_CONCEPT_ID_1 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_2
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_2' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DOMAIN_CONCEPT_ID_2 = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DOMAIN_CONCEPT_ID_2 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'FACT_RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.RELATIONSHIP_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.RELATIONSHIP_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.FACT_RELATIONSHIP cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CARE_SITE.PLACE_OF_SERVICE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CARE_SITE cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.PLACE_OF_SERVICE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.PLACE_OF_SERVICE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CARE_SITE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = LOCATION_ID
fkTableName = LOCATION
fkFieldName = LOCATION_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CARE_SITE.LOCATION_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CARE_SITE cdmTable
		  LEFT JOIN cdm_synthea10.LOCATION fkTable
		  ON cdmTable.LOCATION_ID = fkTable.LOCATION_ID
		WHERE fkTable.LOCATION_ID IS NULL 
		  AND cdmTable.LOCATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CARE_SITE cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.SPECIALTY_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROVIDER cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.SPECIALTY_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.SPECIALTY_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.CARE_SITE_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROVIDER cdmTable
		  LEFT JOIN cdm_synthea10.CARE_SITE fkTable
		  ON cdmTable.CARE_SITE_ID = fkTable.CARE_SITE_ID
		WHERE fkTable.CARE_SITE_ID IS NULL 
		  AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.GENDER_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROVIDER cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.GENDER_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.GENDER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.SPECIALTY_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROVIDER cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.SPECIALTY_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.SPECIALTY_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PROVIDER.GENDER_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PROVIDER cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.GENDER_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.GENDER_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PAYER_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.PAYER_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.PAYER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PAYER_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.PAYER_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.PAYER_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PLAN_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.PLAN_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.PLAN_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.PLAN_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.PLAN_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.PLAN_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.SPONSOR_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.SPONSOR_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.SPONSOR_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.SPONSOR_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.SPONSOR_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.SPONSOR_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.STOP_REASON_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.STOP_REASON_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.STOP_REASON_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'PAYER_PLAN_PERIOD.STOP_REASON_SOURCE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.STOP_REASON_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.STOP_REASON_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_DOMAIN_ID
fkTableName = DOMAIN
fkFieldName = DOMAIN_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'COST.COST_DOMAIN_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.COST cdmTable
		  LEFT JOIN cdm_synthea10.DOMAIN fkTable
		  ON cdmTable.COST_DOMAIN_ID = fkTable.DOMAIN_ID
		WHERE fkTable.DOMAIN_ID IS NULL 
		  AND cdmTable.COST_DOMAIN_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'COST.COST_TYPE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.COST cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.COST_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.COST_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = CURRENCY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'COST.CURRENCY_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.COST cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.CURRENCY_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.CURRENCY_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = PAYER_PLAN_PERIOD_ID
fkTableName = PAYER_PLAN_PERIOD
fkFieldName = PAYER_PLAN_PERIOD_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'COST.PAYER_PLAN_PERIOD_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.COST cdmTable
		  LEFT JOIN cdm_synthea10.PAYER_PLAN_PERIOD fkTable
		  ON cdmTable.PAYER_PLAN_PERIOD_ID = fkTable.PAYER_PLAN_PERIOD_ID
		WHERE fkTable.PAYER_PLAN_PERIOD_ID IS NULL 
		  AND cdmTable.PAYER_PLAN_PERIOD_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = REVENUE_CODE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'COST.REVENUE_CODE_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.COST cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.REVENUE_CODE_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.REVENUE_CODE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = DRG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'COST.DRG_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.COST cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DRG_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DRG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.COST cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_ERA.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_ERA cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DRUG_ERA.DRUG_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DRUG_ERA cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DRUG_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_ERA cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DOSE_ERA.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DOSE_ERA cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DOSE_ERA.DRUG_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DOSE_ERA cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.DRUG_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'DOSE_ERA.UNIT_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.DOSE_ERA cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_ERA.PERSON_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		  LEFT JOIN cdm_synthea10.PERSON fkTable
		  ON cdmTable.PERSON_ID = fkTable.PERSON_ID
		WHERE fkTable.PERSON_ID IS NULL 
		  AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

/*********
IS_FOREIGN_KEY
Foreign key check
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID
**********/
SELECT num_violated_rows,
  CASE
    WHEN denominator.num_rows = 0 THEN 0 
    ELSE 1.0*num_violated_rows/denominator.num_rows
  END AS pct_violated_rows,
  denominator.num_rows AS num_denominator_rows
FROM (
	SELECT 
	  COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM (
		/*violatedRowsBegin*/
		SELECT 
		  'CONDITION_ERA.CONDITION_CONCEPT_ID' AS violating_field, 
		  cdmTable.*
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		  LEFT JOIN cdm_synthea10.CONCEPT fkTable
		  ON cdmTable.CONDITION_CONCEPT_ID = fkTable.CONCEPT_ID
		WHERE fkTable.CONCEPT_ID IS NULL 
		  AND cdmTable.CONDITION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

