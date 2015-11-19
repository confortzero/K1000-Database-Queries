SELECT ASSET_ASSOCIATION.ASSET_ID, ASSET_ASSOCIATION.ASSOCIATED_ASSET_ID AS DEPARTMENT_ID,
MACHINEASSET.NAME AS ASSETNAME,
MACHINE.NAME AS MACHINENAME,
DEPASSET.NAME AS DEPARTMENT_NAME

FROM ORG1.ASSET_ASSOCIATION
JOIN ASSET AS MACHINEASSET on MACHINEASSET.ID = ASSET_ASSOCIATION.ASSET_ID
JOIN ASSET AS DEPASSET on DEPASSET.ID = ASSET_ASSOCIATION.ASSOCIATED_ASSET_ID
JOIN MACHINE on MACHINEASSET.NAME = MACHINE.BIOS_SERIAL_NUMBER
WHERE ASSET_ASSOCIATION.ASSET_FIELD_ID = 42
AND DEPASSET.NAME <> ''

;