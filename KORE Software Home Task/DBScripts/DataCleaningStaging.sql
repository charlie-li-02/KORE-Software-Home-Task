DELETE FROM [KoreAssignment_Charlie_Li].[stg].[Users]
WHERE [UserID] IS NULL OR [StgID] NOT IN
(
	SELECT MIN(StgID)
	FROM [KoreAssignment_Charlie_Li].[stg].[Users]
	GROUP BY [UserID], [FullName], [Age], [Email], [RegistrationDate], [LastLoginDate], [PurchaseTotal]
);


