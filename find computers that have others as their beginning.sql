-- Looking for computers that have similar names
-- Used to track down users with multiple computers (chuck, chuck2, chuck-nb)
SELECT M2.NAME AS SIMILAR, M2.LAST_SYNC AS SIMILAR_LASTSYNC, M.NAME AS SYSTEM_NAME,M.IP,M.MAC,M.OS_NAME,M.LAST_SYNC

FROM MACHINE M
JOIN MACHINE M2 on M2.NAME like concat(M.NAME, '%') and M2.NAME != M.NAME and M2.NAME not like "%-bc"

ORDER BY M.NAME
