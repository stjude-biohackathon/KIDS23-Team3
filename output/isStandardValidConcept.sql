/*********
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PERSON.GENDER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.GENDER_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PERSON.RACE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.RACE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PERSON.ETHNICITY_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.ETHNICITY_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'OBSERVATION_PERIOD.PERIOD_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.PERIOD_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_OCCURRENCE.VISIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.VISIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_OCCURRENCE.VISIT_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.VISIT_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_OCCURRENCE.ADMITTING_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.ADMITTING_SOURCE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_OCCURRENCE.DISCHARGE_TO_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.DISCHARGE_TO_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'CONDITION_OCCURRENCE.CONDITION_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.CONDITION_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'CONDITION_OCCURRENCE.CONDITION_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.CONDITION_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'CONDITION_OCCURRENCE.CONDITION_STATUS_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.CONDITION_STATUS_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DRUG_EXPOSURE.DRUG_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DRUG_EXPOSURE.DRUG_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.DRUG_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DRUG_EXPOSURE.ROUTE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.ROUTE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PROCEDURE_OCCURRENCE.PROCEDURE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.PROCEDURE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PROCEDURE_OCCURRENCE.PROCEDURE_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.PROCEDURE_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PROCEDURE_OCCURRENCE.MODIFIER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.MODIFIER_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DEVICE_EXPOSURE.DEVICE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.DEVICE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DEVICE_EXPOSURE.DEVICE_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.DEVICE_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'MEASUREMENT.MEASUREMENT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.MEASUREMENT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'MEASUREMENT.MEASUREMENT_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.MEASUREMENT_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'MEASUREMENT.OPERATOR_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.OPERATOR_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'MEASUREMENT.UNIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_DETAIL.VISIT_DETAIL_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.VISIT_DETAIL_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_DETAIL.VISIT_DETAIL_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_DETAIL.ADMITTING_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.ADMITTING_SOURCE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_DETAIL.DISCHARGE_TO_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.DISCHARGE_TO_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'NOTE.NOTE_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.NOTE_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'NOTE.NOTE_CLASS_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.NOTE_CLASS_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'NOTE.ENCODING_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.ENCODING_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'NOTE.LANGUAGE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.LANGUAGE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'NOTE_NLP.SECTION_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.SECTION_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'NOTE_NLP.NOTE_NLP_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.NOTE_NLP_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'OBSERVATION.OBSERVATION_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.OBSERVATION_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'OBSERVATION.OBSERVATION_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.OBSERVATION_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'OBSERVATION.QUALIFIER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.QUALIFIER_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'OBSERVATION.UNIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'SPECIMEN.SPECIMEN_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.SPECIMEN_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'SPECIMEN.SPECIMEN_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.SPECIMEN_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = UNIT_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'SPECIMEN.UNIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'SPECIMEN.ANATOMIC_SITE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.ANATOMIC_SITE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'SPECIMEN.DISEASE_STATUS_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.DISEASE_STATUS_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'CARE_SITE.PLACE_OF_SERVICE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.CARE_SITE cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.PLACE_OF_SERVICE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PROVIDER.SPECIALTY_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.SPECIALTY_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PROVIDER.GENDER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.GENDER_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'COST.COST_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.COST_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DRUG_ERA.DRUG_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DOSE_ERA.DRUG_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DOSE_ERA.UNIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT
all standard concept id fields are standard and valid
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
**********/
SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
  denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'CONDITION_ERA.CONDITION_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
	  	JOIN cdm_synthea10.concept co 
	  	ON cdmTable.CONDITION_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

