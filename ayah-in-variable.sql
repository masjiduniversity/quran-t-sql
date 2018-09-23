USE Quran;
Go

DECLARE @Text NVARCHAR(MAX); 
DECLARE @RowNo INT=0;

DECLARE Cur CURSOR FOR

SELECT
    --S.Ayah,
    S.Row_Pk
FROM  QURAN_Ayah_List S
WHERE
    S.Surah_No = 1
    AND S.Translation in  ( 'Arabic')

OPEN Cur
DECLARE @id NVARCHAR(100)
FETCH NEXT from cur into @id
WHILE (@@FETCH_STATUS = 0)
BEGIN
    PRINT(@id)
	SET @RowNo = @RowNo+1;

    SELECT
        @Text = 
        CASE 
            WHEN @RowNo = 1 THEN CONCAT(  S.Ayah ,' ' ) 
            ELSE  CONCAT(   @Text, ' (', S.Surah_Ayat_No  ,') '  , S.Ayah  ) 
        END
    FROM  QURAN_Ayah_List S
    WHERE
    S.Row_Pk = @id

    PRINT @Text   

    FETCH NEXT FROM cur INTO @id
END
CLOSE Cur
DEALLOCATE Cur


SELECT Ayats = @Text

-- print all this
