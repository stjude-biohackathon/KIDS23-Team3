/*********
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PERSON
cdmFieldName = PERSON_ID
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
			'PERSON.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PERSON cdmTable
		WHERE cdmTable.PERSON_ID IN ( 
			SELECT 
			  PERSON_ID 
		  FROM cdm_synthea10.PERSON
			GROUP BY PERSON_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_ID
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
			'OBSERVATION_PERIOD.OBSERVATION_PERIOD_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.OBSERVATION_PERIOD cdmTable
		WHERE cdmTable.OBSERVATION_PERIOD_ID IN ( 
			SELECT 
			  OBSERVATION_PERIOD_ID 
		  FROM cdm_synthea10.OBSERVATION_PERIOD
			GROUP BY OBSERVATION_PERIOD_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
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
			'VISIT_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_OCCURRENCE cdmTable
		WHERE cdmTable.VISIT_OCCURRENCE_ID IN ( 
			SELECT 
			  VISIT_OCCURRENCE_ID 
		  FROM cdm_synthea10.VISIT_OCCURRENCE
			GROUP BY VISIT_OCCURRENCE_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_OCCURRENCE_ID
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
			'CONDITION_OCCURRENCE.CONDITION_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.CONDITION_OCCURRENCE cdmTable
		WHERE cdmTable.CONDITION_OCCURRENCE_ID IN ( 
			SELECT 
			  CONDITION_OCCURRENCE_ID 
		  FROM cdm_synthea10.CONDITION_OCCURRENCE
			GROUP BY CONDITION_OCCURRENCE_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_ID
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
			'DRUG_EXPOSURE.DRUG_EXPOSURE_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DRUG_EXPOSURE cdmTable
		WHERE cdmTable.DRUG_EXPOSURE_ID IN ( 
			SELECT 
			  DRUG_EXPOSURE_ID 
		  FROM cdm_synthea10.DRUG_EXPOSURE
			GROUP BY DRUG_EXPOSURE_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_OCCURRENCE_ID
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
			'PROCEDURE_OCCURRENCE.PROCEDURE_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PROCEDURE_OCCURRENCE cdmTable
		WHERE cdmTable.PROCEDURE_OCCURRENCE_ID IN ( 
			SELECT 
			  PROCEDURE_OCCURRENCE_ID 
		  FROM cdm_synthea10.PROCEDURE_OCCURRENCE
			GROUP BY PROCEDURE_OCCURRENCE_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_ID
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
			'DEVICE_EXPOSURE.DEVICE_EXPOSURE_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DEVICE_EXPOSURE cdmTable
		WHERE cdmTable.DEVICE_EXPOSURE_ID IN ( 
			SELECT 
			  DEVICE_EXPOSURE_ID 
		  FROM cdm_synthea10.DEVICE_EXPOSURE
			GROUP BY DEVICE_EXPOSURE_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_ID
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
			'MEASUREMENT.MEASUREMENT_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.MEASUREMENT cdmTable
		WHERE cdmTable.MEASUREMENT_ID IN ( 
			SELECT 
			  MEASUREMENT_ID 
		  FROM cdm_synthea10.MEASUREMENT
			GROUP BY MEASUREMENT_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_ID
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
			'VISIT_DETAIL.VISIT_DETAIL_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.VISIT_DETAIL cdmTable
		WHERE cdmTable.VISIT_DETAIL_ID IN ( 
			SELECT 
			  VISIT_DETAIL_ID 
		  FROM cdm_synthea10.VISIT_DETAIL
			GROUP BY VISIT_DETAIL_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE
cdmFieldName = NOTE_ID
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
			'NOTE.NOTE_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.NOTE cdmTable
		WHERE cdmTable.NOTE_ID IN ( 
			SELECT 
			  NOTE_ID 
		  FROM cdm_synthea10.NOTE
			GROUP BY NOTE_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_ID
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
			'NOTE_NLP.NOTE_NLP_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.NOTE_NLP cdmTable
		WHERE cdmTable.NOTE_NLP_ID IN ( 
			SELECT 
			  NOTE_NLP_ID 
		  FROM cdm_synthea10.NOTE_NLP
			GROUP BY NOTE_NLP_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_ID
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
			'OBSERVATION.OBSERVATION_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.OBSERVATION cdmTable
		WHERE cdmTable.OBSERVATION_ID IN ( 
			SELECT 
			  OBSERVATION_ID 
		  FROM cdm_synthea10.OBSERVATION
			GROUP BY OBSERVATION_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_ID
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
			'SPECIMEN.SPECIMEN_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.SPECIMEN cdmTable
		WHERE cdmTable.SPECIMEN_ID IN ( 
			SELECT 
			  SPECIMEN_ID 
		  FROM cdm_synthea10.SPECIMEN
			GROUP BY SPECIMEN_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = LOCATION
cdmFieldName = LOCATION_ID
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
			'LOCATION.LOCATION_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.LOCATION cdmTable
		WHERE cdmTable.LOCATION_ID IN ( 
			SELECT 
			  LOCATION_ID 
		  FROM cdm_synthea10.LOCATION
			GROUP BY LOCATION_ID
			HAVING COUNT(*) > 1 
		)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.LOCATION cdmTable
) denominator
;

/*********
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_ID
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
			'CARE_SITE.CARE_SITE_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.CARE_SITE cdmTable
		WHERE cdmTable.CARE_SITE_ID IN ( 
			SELECT 
			  CARE_SITE_ID 
		  FROM cdm_synthea10.CARE_SITE
			GROUP BY CARE_SITE_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_ID
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
			'PROVIDER.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PROVIDER cdmTable
		WHERE cdmTable.PROVIDER_ID IN ( 
			SELECT 
			  PROVIDER_ID 
		  FROM cdm_synthea10.PROVIDER
			GROUP BY PROVIDER_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_ID
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
			'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.PAYER_PLAN_PERIOD cdmTable
		WHERE cdmTable.PAYER_PLAN_PERIOD_ID IN ( 
			SELECT 
			  PAYER_PLAN_PERIOD_ID 
		  FROM cdm_synthea10.PAYER_PLAN_PERIOD
			GROUP BY PAYER_PLAN_PERIOD_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = COST
cdmFieldName = COST_ID
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
			'COST.COST_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.COST cdmTable
		WHERE cdmTable.COST_ID IN ( 
			SELECT 
			  COST_ID 
		  FROM cdm_synthea10.COST
			GROUP BY COST_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_ID
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
			'DRUG_ERA.DRUG_ERA_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DRUG_ERA cdmTable
		WHERE cdmTable.DRUG_ERA_ID IN ( 
			SELECT 
			  DRUG_ERA_ID 
		  FROM cdm_synthea10.DRUG_ERA
			GROUP BY DRUG_ERA_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_ID
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
			'DOSE_ERA.DOSE_ERA_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.DOSE_ERA cdmTable
		WHERE cdmTable.DOSE_ERA_ID IN ( 
			SELECT 
			  DOSE_ERA_ID 
		  FROM cdm_synthea10.DOSE_ERA
			GROUP BY DOSE_ERA_ID
			HAVING COUNT(*) > 1 
		)
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
FIELD_IS_PRIMARY_KEY
Primary Key - verify those fields where IS_PRIMARY_KEY == Yes, the values in that field are unique
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_ID
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
			'CONDITION_ERA.CONDITION_ERA_ID' AS violating_field, 
			cdmTable.* 
		FROM cdm_synthea10.CONDITION_ERA cdmTable
		WHERE cdmTable.CONDITION_ERA_ID IN ( 
			SELECT 
			  CONDITION_ERA_ID 
		  FROM cdm_synthea10.CONDITION_ERA
			GROUP BY CONDITION_ERA_ID
			HAVING COUNT(*) > 1 
		)
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT(*) AS num_rows
	FROM cdm_synthea10.CONDITION_ERA cdmTable
) denominator
;

