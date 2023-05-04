/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_VALUE
standardConceptFieldName = GENDER_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PERSON.GENDER_SOURCE_VALUE' AS violating_field, 
		  cdmTable.GENDER_SOURCE_VALUE
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.GENDER_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.GENDER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.GENDER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_VALUE
standardConceptFieldName = RACE_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PERSON.RACE_SOURCE_VALUE' AS violating_field, 
		  cdmTable.RACE_SOURCE_VALUE
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.RACE_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.RACE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.RACE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_VALUE
standardConceptFieldName = ETHNICITY_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PERSON.ETHNICITY_SOURCE_VALUE' AS violating_field, 
		  cdmTable.ETHNICITY_SOURCE_VALUE
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.ETHNICITY_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.ETHNICITY_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.ETHNICITY_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PERSON cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_VALUE
standardConceptFieldName = VISIT_CONCEPT_ID
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
		SELECT DISTINCT 
		  'VISIT_OCCURRENCE.VISIT_SOURCE_VALUE' AS violating_field, 
		  cdmTable.VISIT_SOURCE_VALUE
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.VISIT_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.VISIT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.VISIT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTING_SOURCE_VALUE
standardConceptFieldName = ADMITTING_SOURCE_CONCEPT_ID
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
		SELECT DISTINCT 
		  'VISIT_OCCURRENCE.ADMITTING_SOURCE_VALUE' AS violating_field, 
		  cdmTable.ADMITTING_SOURCE_VALUE
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.ADMITTING_SOURCE_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.ADMITTING_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.ADMITTING_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_SOURCE_VALUE
standardConceptFieldName = DISCHARGE_TO_CONCEPT_ID
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
		SELECT DISTINCT 
		  'VISIT_OCCURRENCE.DISCHARGE_TO_SOURCE_VALUE' AS violating_field, 
		  cdmTable.DISCHARGE_TO_SOURCE_VALUE
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.DISCHARGE_TO_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.DISCHARGE_TO_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.DISCHARGE_TO_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_VALUE
standardConceptFieldName = CONDITION_CONCEPT_ID
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
		SELECT DISTINCT 
		  'CONDITION_OCCURRENCE.CONDITION_SOURCE_VALUE' AS violating_field, 
		  cdmTable.CONDITION_SOURCE_VALUE
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.CONDITION_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.CONDITION_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.CONDITION_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_SOURCE_VALUE
standardConceptFieldName = CONDITION_STATUS_CONCEPT_ID
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
		SELECT DISTINCT 
		  'CONDITION_OCCURRENCE.CONDITION_STATUS_SOURCE_VALUE' AS violating_field, 
		  cdmTable.CONDITION_STATUS_SOURCE_VALUE
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.CONDITION_STATUS_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.CONDITION_STATUS_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.CONDITION_STATUS_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_VALUE
standardConceptFieldName = DRUG_CONCEPT_ID
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
		SELECT DISTINCT 
		  'DRUG_EXPOSURE.DRUG_SOURCE_VALUE' AS violating_field, 
		  cdmTable.DRUG_SOURCE_VALUE
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.DRUG_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.DRUG_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.DRUG_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_SOURCE_VALUE
standardConceptFieldName = ROUTE_CONCEPT_ID
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
		SELECT DISTINCT 
		  'DRUG_EXPOSURE.ROUTE_SOURCE_VALUE' AS violating_field, 
		  cdmTable.ROUTE_SOURCE_VALUE
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.ROUTE_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.ROUTE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.ROUTE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_VALUE
standardConceptFieldName = PROCEDURE_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_VALUE' AS violating_field, 
		  cdmTable.PROCEDURE_SOURCE_VALUE
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.PROCEDURE_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.PROCEDURE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.PROCEDURE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_SOURCE_VALUE
standardConceptFieldName = MODIFIER_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PROCEDURE_OCCURRENCE.MODIFIER_SOURCE_VALUE' AS violating_field, 
		  cdmTable.MODIFIER_SOURCE_VALUE
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.MODIFIER_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.MODIFIER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.MODIFIER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_VALUE
standardConceptFieldName = DEVICE_CONCEPT_ID
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
		SELECT DISTINCT 
		  'DEVICE_EXPOSURE.DEVICE_SOURCE_VALUE' AS violating_field, 
		  cdmTable.DEVICE_SOURCE_VALUE
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE cdmTable.DEVICE_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.DEVICE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.DEVICE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_VALUE
standardConceptFieldName = MEASUREMENT_CONCEPT_ID
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
		SELECT DISTINCT 
		  'MEASUREMENT.MEASUREMENT_SOURCE_VALUE' AS violating_field, 
		  cdmTable.MEASUREMENT_SOURCE_VALUE
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.MEASUREMENT_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.MEASUREMENT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.MEASUREMENT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID
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
		SELECT DISTINCT 
		  'MEASUREMENT.UNIT_SOURCE_VALUE' AS violating_field, 
		  cdmTable.UNIT_SOURCE_VALUE
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.UNIT_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.UNIT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.UNIT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_VALUE
standardConceptFieldName = VISIT_DETAIL_CONCEPT_ID
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
		SELECT DISTINCT 
		  'VISIT_DETAIL.VISIT_DETAIL_SOURCE_VALUE' AS violating_field, 
		  cdmTable.VISIT_DETAIL_SOURCE_VALUE
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.VISIT_DETAIL_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.VISIT_DETAIL_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.VISIT_DETAIL_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTING_SOURCE_VALUE
standardConceptFieldName = ADMITTING_SOURCE_CONCEPT_ID
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
		SELECT DISTINCT 
		  'VISIT_DETAIL.ADMITTING_SOURCE_VALUE' AS violating_field, 
		  cdmTable.ADMITTING_SOURCE_VALUE
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.ADMITTING_SOURCE_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.ADMITTING_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.ADMITTING_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGE_TO_SOURCE_VALUE
standardConceptFieldName = DISCHARGE_TO_CONCEPT_ID
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
		SELECT DISTINCT 
		  'VISIT_DETAIL.DISCHARGE_TO_SOURCE_VALUE' AS violating_field, 
		  cdmTable.DISCHARGE_TO_SOURCE_VALUE
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.DISCHARGE_TO_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.DISCHARGE_TO_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.DISCHARGE_TO_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_VALUE
standardConceptFieldName = OBSERVATION_CONCEPT_ID
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
		SELECT DISTINCT 
		  'OBSERVATION.OBSERVATION_SOURCE_VALUE' AS violating_field, 
		  cdmTable.OBSERVATION_SOURCE_VALUE
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.OBSERVATION_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.OBSERVATION_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.OBSERVATION_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID
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
		SELECT DISTINCT 
		  'OBSERVATION.UNIT_SOURCE_VALUE' AS violating_field, 
		  cdmTable.UNIT_SOURCE_VALUE
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.UNIT_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.UNIT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.UNIT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_SOURCE_VALUE
standardConceptFieldName = QUALIFIER_CONCEPT_ID
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
		SELECT DISTINCT 
		  'OBSERVATION.QUALIFIER_SOURCE_VALUE' AS violating_field, 
		  cdmTable.QUALIFIER_SOURCE_VALUE
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.QUALIFIER_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.QUALIFIER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.QUALIFIER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_SOURCE_VALUE
standardConceptFieldName = SPECIMEN_CONCEPT_ID
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
		SELECT DISTINCT 
		  'SPECIMEN.SPECIMEN_SOURCE_VALUE' AS violating_field, 
		  cdmTable.SPECIMEN_SOURCE_VALUE
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.SPECIMEN_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.SPECIMEN_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.SPECIMEN_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID
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
		SELECT DISTINCT 
		  'SPECIMEN.UNIT_SOURCE_VALUE' AS violating_field, 
		  cdmTable.UNIT_SOURCE_VALUE
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.UNIT_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.UNIT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.UNIT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_SOURCE_VALUE
standardConceptFieldName = ANATOMIC_SITE_CONCEPT_ID
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
		SELECT DISTINCT 
		  'SPECIMEN.ANATOMIC_SITE_SOURCE_VALUE' AS violating_field, 
		  cdmTable.ANATOMIC_SITE_SOURCE_VALUE
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.ANATOMIC_SITE_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.ANATOMIC_SITE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.ANATOMIC_SITE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_SOURCE_VALUE
standardConceptFieldName = DISEASE_STATUS_CONCEPT_ID
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
		SELECT DISTINCT 
		  'SPECIMEN.DISEASE_STATUS_SOURCE_VALUE' AS violating_field, 
		  cdmTable.DISEASE_STATUS_SOURCE_VALUE
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.DISEASE_STATUS_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.DISEASE_STATUS_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.DISEASE_STATUS_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.SPECIMEN cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_VALUE
standardConceptFieldName = SPECIALTY_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PROVIDER.SPECIALTY_SOURCE_VALUE' AS violating_field, 
		  cdmTable.SPECIALTY_SOURCE_VALUE
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE cdmTable.SPECIALTY_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.SPECIALTY_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.SPECIALTY_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_VALUE
standardConceptFieldName = GENDER_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PROVIDER.GENDER_SOURCE_VALUE' AS violating_field, 
		  cdmTable.GENDER_SOURCE_VALUE
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE cdmTable.GENDER_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.GENDER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.GENDER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PROVIDER cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_VALUE
standardConceptFieldName = PAYER_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PAYER_PLAN_PERIOD.PAYER_SOURCE_VALUE' AS violating_field, 
		  cdmTable.PAYER_SOURCE_VALUE
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE cdmTable.PAYER_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.PAYER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.PAYER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_VALUE
standardConceptFieldName = PLAN_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PAYER_PLAN_PERIOD.PLAN_SOURCE_VALUE' AS violating_field, 
		  cdmTable.PLAN_SOURCE_VALUE
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE cdmTable.PLAN_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.PLAN_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.PLAN_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_VALUE
standardConceptFieldName = SPONSOR_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PAYER_PLAN_PERIOD.SPONSOR_SOURCE_VALUE' AS violating_field, 
		  cdmTable.SPONSOR_SOURCE_VALUE
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE cdmTable.SPONSOR_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.SPONSOR_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.SPONSOR_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

/*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_VALUE
standardConceptFieldName = STOP_REASON_CONCEPT_ID
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
		SELECT DISTINCT 
		  'PAYER_PLAN_PERIOD.STOP_REASON_SOURCE_VALUE' AS violating_field, 
		  cdmTable.STOP_REASON_SOURCE_VALUE
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE cdmTable.STOP_REASON_CONCEPT_ID = 0
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(distinct cdmTable.STOP_REASON_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.STOP_REASON_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
	FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
) denominator
;

