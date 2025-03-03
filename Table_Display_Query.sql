SELECT 
    [Id],
    [LastName],
    [FirstName],
    [MiddleName],
    [BirthDate],
    [Gender],
    [GradeLevel_Code] AS Grade,
	CASE
    WHEN first_case = 'Yes' THEN 'First Case'
    WHEN first_case = 'No' AND
         (CASE WHEN second_case = 'Yes' THEN 1 ELSE 0 END +
          CASE WHEN third_case = 'Yes' THEN 1 ELSE 0 END +
          CASE WHEN fourth_case = 'Yes' THEN 1 ELSE 0 END +
          CASE WHEN fifth_case = 'Yes' THEN 1 ELSE 0 END +
          CASE WHEN sixth_case = 'Yes' THEN 1 ELSE 0 END) = 1 THEN
    CASE
    WHEN second_case = 'Yes' THEN 'Second Case'
    WHEN third_case = 'Yes' THEN 'Third Case'
    WHEN fourth_case = 'Yes' THEN 'Fourth Case'
    WHEN fifth_case = 'Yes' THEN 'Fifth Case'
    WHEN sixth_case = 'Yes' THEN 'Sixth Case'
    END
    WHEN first_case = 'No' AND
        (CASE WHEN second_case = 'Yes' THEN 1 ELSE 0 END +
         CASE WHEN third_case = 'Yes' THEN 1 ELSE 0 END +
         CASE WHEN fourth_case = 'Yes' THEN 1 ELSE 0 END +
         CASE WHEN fifth_case = 'Yes' THEN 1 ELSE 0 END +
         CASE WHEN sixth_case = 'Yes' THEN 1 ELSE 0 END) > 1 THEN 'Multiple (two or more cases)'
    ELSE 'Unknown'
    END AS [Demographic],
    [Language],
    CASE
    WHEN [Language_Code] = '1234' 
    AND [Language_OtherCode] = '01' THEN 'Yes'
    WHEN [Language_Code] = '1234' 
    AND [Language_OtherCode] = '02' THEN 'Yes'
    ELSE 'No'
    END AS [1st Yr Language],
    CASE
    WHEN [Language_Code] = '5678' 
    AND [Language_OtherCode] = '03' THEN 'Yes'
    WHEN [Language_Code] = '5678' 
    AND [Language_OtherCode] = '04' THEN 'Yes'
    ELSE 'No'
    END AS [2nd Yr Language],
	[Language_Code],
    [Language_OtherCode],
    [EconomicStatus],
FROM [server1].[dbo].[AllData]
WHERE[ID] IN ('109987','108567')



