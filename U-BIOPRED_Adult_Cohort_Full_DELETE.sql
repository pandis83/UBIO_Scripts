-- U-BIOPRED Adult Cohort Full DELETE SQL Script !!!RUN WITH CAUTION

delete from I2B2METADATA.I2B2 where c_fullname = '\U-BIOPRED\Adult Cohort (DATA_CURRENTLY_UNDERGOING_QC)\';
delete from I2B2METADATA.I2B2_SECURE where c_fullname = '\U-BIOPRED\Adult Cohort (DATA_CURRENTLY_UNDERGOING_QC)\';
delete from I2B2DEMODATA.CONCEPT_DIMENSION where concept_path = '\U-BIOPRED\Adult Cohort (DATA_CURRENTLY_UNDERGOING_QC)\';
delete from I2B2DEMODATA.PATIENT_DIMENSION where SOURCESYSTEM_CD like 'UBIOADULT:%'; 
delete from I2B2DEMODATA.OBSERVATION_FACT where SOURCESYSTEM_CD like 'UBIOADULT';
delete from DEAPP.DE_SUBJECT_MICROARRAY_DATA where TRIAL_NAME like 'UBIOADULT';
delete from DEAPP.DE_SUBJECT_SAMPLE_MAPPING where TRIAL_NAME like 'UBIOADULT';
--delete from I2B2METADATA.I2B2 where c_fullname like '\U-BIOPRED\Adult Cohort (DATA_CURRENTLY_UNDERGOING_QC)\ OMICS DATA\%';
--delete from I2B2METADATA.I2B2_SECURE where c_fullname like '\U-BIOPRED\Adult Cohort (DATA_CURRENTLY_UNDERGOING_QC)\ OMICS DATA\%';
--delete from I2B2DEMODATA.CONCEPT_DIMENSION where concept_path like '\U-BIOPRED\Adult Cohort (DATA_CURRENTLY_UNDERGOING_QC)\ OMICS DATA\%';
DELETE FROM i2b2metadata.i2b2
 WHERE sourcesystem_cd LIKE 'UBIOADULT';
 DELETE FROM i2b2metadata.i2b2_secure
 WHERE sourcesystem_cd LIKE 'UBIOADULT';
DELETE FROM i2b2demodata.concept_dimension
 WHERE sourcesystem_cd LIKE 'UBIOADULT';