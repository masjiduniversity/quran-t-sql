USE Quran;
GO

SELECT    
    -- A.Surah_Name_Arabic_Full,
    top 50
    A.Surah_No,
    A.Surah_Ayat_No,
    A.Ayah,
    A.Translation
FROM QURAN_Ayah_List A
WHERE   
    A.Translation in ('Urdu')

-- this query for parameter; parameter will display the surah names as user selects and click view report
-- All ayath of surah will be displayed
SELECT
Id =  S.Surah_No,
val = CONCAT( S.Surah_No, '-' ,  S.Surah_Revealed_Location_Arabic,'-' ,  S.Surah_Name_Arabic )
FROM dbo.Surah S;

    ---DataSet for Drop Down Parameter from Report

/*

Create a Report which shows Ayat of all Surah

Parameters :
There will be dropdown of Surah to select

Display all ayah of selected surahs

Things to do:

Linking Surah report with this report 

When you link a report to another report. you can specify parameter

Hints :
- Table 
- Expressions on row background color
- Aggregating of rows
- Passing Parameter to Report
- Link to Action


*/