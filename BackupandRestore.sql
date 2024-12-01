
-- CHỈNH MÔ HÌNH
ALTER DATABASE QL_Tour
SET RECOVERY FULL

-- BACKUP FULL
BACKUP DATABASE QL_Tour
TO DISK = 'D:\QL_Tour.bak'
WITH INIT, DESCRIPTION = 'BACK UP DB QL_Tour'

-- BACKUP DIFFERENTIAL
BACKUP DATABASE QL_Tour
TO DISK = 'D:\QL_Tour_DIF.bak'
WITH DIFFERENTIAL

-- BACKUP LOG
BACKUP LOG QL_Tour
TO DISK = 'D:\QL_Tour_LOG.trn'
WITH DESCRIPTION = 'BACK UP LOG QL_Tour'


-- PHỤC HỒI
--B1: BACKUP TAIL OF THE LOG
BACKUP LOG QL_Tour
TO DISK = 'D:\QL_Tour_TAILLOG.trn'
WITH NORECOVERY

--B2: RESTORE FULL BACKUP
RESTORE DATABASE QL_Tour
FROM DISK = 'D:\QL_Tour.bak'
WITH NORECOVERY

--B3: RESTORE DIF
RESTORE DATABASE QL_Tour
FROM DISK = 'D:\QL_Tour_DIF.bak'
WITH NORECOVERY

--B4: RESTORE LOG
RESTORE DATABASE QL_Tour
FROM DISK = 'D:\QL_Tour_LOG.trn'
WITH NORECOVERY

--B5: RESTORE TAILLOG
RESTORE DATABASE QL_Tour
FROM DISK = 'D:\QL_Tour_TAILLOG.trn'
WITH RECOVERY


-- PROC Full Backup
CREATE PROCEDURE BackupFull
AS
BEGIN
    BACKUP DATABASE QL_Tour
    TO DISK = 'D:\Backups\QL_Tour_FULL.bak'
    WITH INIT, DESCRIPTION = 'Weekly Full Backup';
END

-- PROC Differential Backup
CREATE PROCEDURE BackupDifferential
AS
BEGIN
    BACKUP DATABASE QL_Tour
    TO DISK = 'D:\Backups\QL_Tour_DIFF.bak'
    WITH DIFFERENTIAL, INIT, DESCRIPTION = 'Weekly Differential Backup';
END

-- PROC Log Backup
CREATE PROCEDURE BackupLog
AS
BEGIN
    BACKUP LOG QL_Tour
    TO DISK = 'D:\Backups\QL_Tour_LOG.trn'
    WITH INIT, DESCRIPTION = 'Daily Log Backup';
END
GO

----------------------------------------------------- TẠO JOB CHO FULL BACKUP ------------------------------------------
USE msdb;
GO

EXEC sp_add_job
    @job_name = N'Full Backup Job';

-- Thêm bước thực thi Full Backup
EXEC sp_add_jobstep
    @job_name = N'Full Backup Job',
    @step_name = N'Execute Full Backup',
    @subsystem = N'TSQL',
    @command = N'EXEC BackupFull',
    @database_name = N'QL_Tour';

-- Lập lịch chạy job (23h mỗi thứ Hai và thứ Năm)
EXEC sp_add_jobschedule
    @job_name = N'Full Backup Job',
    @name = N'Full Backup Schedule',
    @freq_type = 4, -- Weekly
    @freq_interval = 34, -- Thứ Hai (2) + Thứ Năm (32)
    @active_start_time = 230000; -- 23:00
GO

-- Gắn job vào SQL Server Agent
EXEC sp_add_jobserver
    @job_name = N'Full Backup Job';
GO


----------------------------------------------------- TẠO JOB CHO DIFFERENTIAL BACKUP ------------------------------------------
USE msdb;
GO

EXEC sp_add_job
    @job_name = N'Differential Backup Job';

-- Thêm bước thực thi Differential Backup
EXEC sp_add_jobstep
    @job_name = N'Differential Backup Job',
    @step_name = N'Execute Differential Backup',
    @subsystem = N'TSQL',
    @command = N'EXEC BackupDifferential',
    @database_name = N'QL_Tour';

-- Lập lịch chạy job (23h từ Thứ Ba, Thứ Tư, Thứ Sáu, Thứ Bảy, Chủ Nhật)
EXEC sp_add_jobschedule
    @job_name = N'Differential Backup Job',
    @name = N'Differential Backup Schedule',
    @freq_type = 4, -- Weekly
    @freq_interval = 124, -- Thứ Ba (4) + Thứ Tư (8) + Thứ Sáu (16) + Thứ Bảy (64) + Chủ Nhật (128)
    @active_start_time = 230000; -- 23:00
GO

-- Gắn job vào SQL Server Agent
EXEC sp_add_jobserver
    @job_name = N'Differential Backup Job';
GO



----------------------------------------------------- TẠO JOB CHO LOG BACKUP ------------------------------------------
USE msdb;
GO

EXEC sp_add_job
    @job_name = N'Log Backup Job';

-- Thêm bước thực thi Log Backup
EXEC sp_add_jobstep
    @job_name = N'Log Backup Job',
    @step_name = N'Execute Log Backup',
    @subsystem = N'TSQL',
    @command = N'EXEC BackupLog',
    @database_name = N'QL_Tour';

-- Lập lịch chạy job (12h trưa mỗi ngày)
EXEC sp_add_jobschedule
    @job_name = N'Log Backup Job',
    @name = N'Log Backup Schedule',
    @freq_type = 4, -- Weekly
    @freq_interval = 127, -- Tất cả các ngày trong tuần (1+2+4+8+16+32+64)
    @active_start_time = 120000; -- 12:00
GO

-- Gắn job vào SQL Server Agent
EXEC sp_add_jobserver
    @job_name = N'Log Backup Job';
GO



----------------------------------------------------- Kiểm tra Jobs và Lịch ------------------------------------------
-- Danh sách các job
SELECT job_id, name
FROM msdb.dbo.sysjobs;

-- Lịch trình của các job
SELECT schedule_id, name, freq_type, freq_interval, active_start_time
FROM msdb.dbo.sysschedules;
