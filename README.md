SELECT CASE WHEN DATEPART(HOUR, Waktu) < 6 THEN 3 WHEN DATEPART(HOUR, Waktu) < 14 THEN 1 WHEN DATEPART(HOUR, Waktu) < 22 THEN 2 ELSE 3 END AS Shift, CONVERT(date, DATEADD(hour, - 6, p.Waktu), 0) AS Tanggal, 
                  p.Waktu AS WaktuDate, p.SensorID, m.Deskripsi AS Motor, mc.Deskripsi AS LinkUp, bu.Deskripsi AS BusinessUnit, m.Tipe, CONVERT(varchar(30), p.Waktu, 120) AS Waktu, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.X, 0) / 1000, 0) 
                  AS X_Actual, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.Z, 0) / 1000, 0) AS Z_Actual, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.X_Acc, 0) / 1000, 0) AS X_Acc, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.Z_Acc, 0) 
                  / 1000, 0) AS Z_Acc, CONVERT(decimal(20, 2), p.Temp, 0) / 100 AS Temp_Actual, CASE WHEN (X > X_Alarm OR
                  Z > Z_Alarm OR
                  Temp > temp_alarm * 100) THEN 1 ELSE 0 END AS Total_OOL, CASE WHEN (X > X_Alarm OR
                  Z > Z_Alarm) THEN 1 ELSE 0 END AS Vibration_OOL, CASE WHEN Temp > temp_alarm * 100 THEN 1 ELSE 0 END AS Temp_OOL, p.Status, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.X_Warn, 0) / 1000, 0) AS X_Warn, 
                  CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.X_Alarm, 0) / 1000, 0) AS X_Alarm, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.Z_Warn, 0) / 1000, 0) AS Z_Warn, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.Z_Alarm, 0) 
                  / 1000, 0) AS Z_Alarm, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.X_Acc_Warn, 0) / 1000, 0) AS X_Acc_Warn, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.X_Acc_Alarm, 0) / 1000, 0) AS X_Acc_Alarm, CONVERT(decimal(20, 2), 
                  CONVERT(decimal(20, 3), p.Z_Acc_Warn, 0) / 1000, 0) AS Z_Acc_Warn, CONVERT(decimal(20, 2), CONVERT(decimal(20, 3), p.Z_Acc_Alarm, 0) / 1000, 0) AS Z_Acc_Alarm, p.Temp_Alarm, p.Temp_Warn, p.Running, bu.BatasKuning, 
                  bu.BatasMerah
FROM     dbo.History AS p LEFT OUTER JOIN
                  dbo.Motor AS m ON p.SensorID = m.Number LEFT OUTER JOIN
                  dbo.Machine AS mc ON m.MachineID = mc.MachineID LEFT OUTER JOIN
                  dbo.BusinessUnit AS bu ON mc.BusinessUnitID = bu.BusinessUnitID