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

SPA
Username : PMI\F-PMIIDKRAFE-BMS
Password : Sampoerna1
Server: sqlprd_plsa_idkrasql01.dbiaas.sdi.pmi
DB: SPA
Table: dbo.tbl_OPC_Machine_Data
 
Atau
 
Username : PMI\s-idpicsprd
Password : D3b!9790244b1$B
Server: sqlprd_plsa_idkrasql01.dbiaas.sdi.pmi
DB: SPA
Table: dbo.tbl_OPC_Machine_Data
