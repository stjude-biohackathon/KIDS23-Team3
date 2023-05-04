/*********
FK_CLASS
Drug era standard concepts, ingredients only
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkClass = Ingredient
**********/
SELECT 
  num_violated_rows, 
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
		  LEFT JOIN cdm_synthea10.concept co
		  ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
    WHERE co.concept_id != 0 
      AND (co.concept_class_id != 'Ingredient') 
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
FK_CLASS
Drug era standard concepts, ingredients only
Parameters used in this template:
cdmDatabaseSchema = cdm_synthea10
vocabDatabaseSchema = cdm_synthea10
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkClass = Ingredient
**********/
SELECT 
  num_violated_rows, 
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
		  LEFT JOIN cdm_synthea10.concept co
		  ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
    WHERE co.concept_id != 0 
      AND (co.concept_class_id != 'Ingredient') 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT(*) AS num_rows
	FROM cdm_synthea10.DOSE_ERA cdmTable
) denominator
;

