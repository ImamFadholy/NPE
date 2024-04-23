EXEC sp_rename 'Motor.AddrVelocity',  'Motor.AddrDeviation', 'COLUMN'; 
EXEC sp_rename 'Motor.AlarmVelocity',  'Motor.AlarmDeviation', 'COLUMN';
UPDATE Motor SET Tipe = 'Motor';
