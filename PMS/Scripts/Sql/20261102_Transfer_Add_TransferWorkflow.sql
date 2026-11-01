-- Add TransferWorkflow audit column on Transfer (append-only workflow history text)
IF COL_LENGTH('dbo.Transfer', 'TransferWorkflow') IS NULL
BEGIN
    ALTER TABLE [dbo].[Transfer] ADD [TransferWorkflow] NVARCHAR(MAX) NULL;
END
GO
