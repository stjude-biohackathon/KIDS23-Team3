/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
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
		  'CONDITION_OCCURRENCE.CONDITION_START_DATE' AS violating_field, 
		  cdmTable.*
    FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
      JOIN cdm_synthea10.visit_occurrence vo
      ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
    WHERE cdmTable.CONDITION_START_DATE < (vo.visit_start_date + -7*INTERVAL'1 day')
      OR cdmTable.CONDITION_START_DATE > (vo.visit_end_date + 7*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
    JOIN cdm_synthea10.visit_occurrence vo
    ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
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
		  'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' AS violating_field, 
		  cdmTable.*
    FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
      JOIN cdm_synthea10.visit_occurrence vo
      ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
    WHERE cdmTable.DRUG_EXPOSURE_START_DATE < (vo.visit_start_date + -7*INTERVAL'1 day')
      OR cdmTable.DRUG_EXPOSURE_START_DATE > (vo.visit_end_date + 7*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
    JOIN cdm_synthea10.visit_occurrence vo
    ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
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
		  'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' AS violating_field, 
		  cdmTable.*
    FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
      JOIN cdm_synthea10.visit_occurrence vo
      ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
    WHERE cdmTable.PROCEDURE_DATE < (vo.visit_start_date + -7*INTERVAL'1 day')
      OR cdmTable.PROCEDURE_DATE > (vo.visit_end_date + 7*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
    JOIN cdm_synthea10.visit_occurrence vo
    ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
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
		  'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' AS violating_field, 
		  cdmTable.*
    FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
      JOIN cdm_synthea10.visit_occurrence vo
      ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
    WHERE cdmTable.DEVICE_EXPOSURE_START_DATE < (vo.visit_start_date + -7*INTERVAL'1 day')
      OR cdmTable.DEVICE_EXPOSURE_START_DATE > (vo.visit_end_date + 7*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
    JOIN cdm_synthea10.visit_occurrence vo
    ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
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
		  'MEASUREMENT.MEASUREMENT_DATE' AS violating_field, 
		  cdmTable.*
    FROM cdm_synthea10.MEASUREMENT cdmTable
      JOIN cdm_synthea10.visit_occurrence vo
      ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
    WHERE cdmTable.MEASUREMENT_DATE < (vo.visit_start_date + -7*INTERVAL'1 day')
      OR cdmTable.MEASUREMENT_DATE > (vo.visit_end_date + 7*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.MEASUREMENT cdmTable
    JOIN cdm_synthea10.visit_occurrence vo
    ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
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
		  'VISIT_DETAIL.VISIT_DETAIL_START_DATE' AS violating_field, 
		  cdmTable.*
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
      JOIN cdm_synthea10.visit_occurrence vo
      ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
    WHERE cdmTable.VISIT_DETAIL_START_DATE < (vo.visit_start_date + -7*INTERVAL'1 day')
      OR cdmTable.VISIT_DETAIL_START_DATE > (vo.visit_end_date + 7*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
    JOIN cdm_synthea10.visit_occurrence vo
    ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
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
		  'VISIT_DETAIL.VISIT_DETAIL_END_DATE' AS violating_field, 
		  cdmTable.*
    FROM cdm_synthea10.VISIT_DETAIL cdmTable
      JOIN cdm_synthea10.visit_occurrence vo
      ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
    WHERE cdmTable.VISIT_DETAIL_END_DATE < (vo.visit_start_date + -7*INTERVAL'1 day')
      OR cdmTable.VISIT_DETAIL_END_DATE > (vo.visit_end_date + 7*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.VISIT_DETAIL cdmTable
    JOIN cdm_synthea10.visit_occurrence vo
    ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
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
		  'NOTE.NOTE_DATE' AS violating_field, 
		  cdmTable.*
    FROM cdm_synthea10.NOTE cdmTable
      JOIN cdm_synthea10.visit_occurrence vo
      ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
    WHERE cdmTable.NOTE_DATE < (vo.visit_start_date + -7*INTERVAL'1 day')
      OR cdmTable.NOTE_DATE > (vo.visit_end_date + 7*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.NOTE cdmTable
    JOIN cdm_synthea10.visit_occurrence vo
    ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
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
		  'OBSERVATION.OBSERVATION_DATE' AS violating_field, 
		  cdmTable.*
    FROM cdm_synthea10.OBSERVATION cdmTable
      JOIN cdm_synthea10.visit_occurrence vo
      ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
    WHERE cdmTable.OBSERVATION_DATE < (vo.visit_start_date + -7*INTERVAL'1 day')
      OR cdmTable.OBSERVATION_DATE > (vo.visit_end_date + 7*INTERVAL'1 day')
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.OBSERVATION cdmTable
    JOIN cdm_synthea10.visit_occurrence vo
    ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

