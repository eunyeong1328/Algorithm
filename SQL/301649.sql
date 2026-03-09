WITH CTE AS (
    SELECT
        ID,
        ROW_NUMBER() OVER (ORDER BY SIZE_OF_COLONY DESC) AS RN, --크기(SIZE_OF_COLONY)가 큰 순서대로 번호를 매깁니다.
        COUNT(*) OVER() AS CNT -- 전체 행 개수를 각 행에 붙입니다.
    FROM ECOLI_DATA
)
SELECT
    ID,
    CASE
        WHEN RN <= CNT * 0.25 THEN 'CRITICAL' -- 8 × 0.25 = 2
        WHEN RN <= CNT * 0.5 THEN 'HIGH'      -- 8 × 0.5 = 4
        WHEN RN <= CNT * 0.75 THEN 'MEDIUM'   -- 8 × 0.75 = 6
        ELSE 'LOW'
        END AS COLONY_NAME
FROM CTE
ORDER BY ID

--대장균을 크기 순으로 정렬해 ROW_NUMBER()로 순위를 매기고. 전체 25%,50%,75%지점을 기준으로 경계 계산 case로 등급 이름 붙이기