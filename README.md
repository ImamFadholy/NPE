Username : F-PMIIDKRARRP-WCL01
Password : Mejikuhibiniu234

SELECT TOP (1)
[ID]
      ,[SourceID]
      ,[UTC]
      ,[StatusCode]
      ,[GoodProduction]
      ,[TotalRejects]
      ,[Speed] Val
      ,[OPCConnectionQuality]
      ,[OPCSourceError]
  FROM [SPA].[dbo].[tbl_OPC_Machine_Data]
  where SourceID like '%ID01-SE-CP-L012-MAKE%'
  ORDER BY UTC DESC
