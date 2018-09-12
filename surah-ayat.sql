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


/*

Create a Report which shows Ayat of all Surah

Parameters :
There will be dropdown of Surah to select

Display all ayah of selected surahs

Things to do:

Linking Surah report with this report 

Hints :
- Table 
- Expressions on row background color
- Aggregating of rows


*/