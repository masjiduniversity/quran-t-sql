--- Tables information

USE Quran;
GO

SELECT
S.Surah_No,
S.Surah_Revealed_Location_Arabic,
S.Surah_Name_Arabic,
S.Surah_Quantity_Ayyat
FROM dbo.Surah S;


/*

Create a Report Which shows list of Surah

Surah Revealed in Makkah will have the Khaki
Surah Revealed in Madinah will have the green Row

Report should also display 

1 - Total Ayats
2 - Total Surah


Parameter :

There should be a parameter which have two options to select
Select Language : English | Arabic ( as dropdown list)


Hints :
- Table 
- Expressions on row background color
- Aggregating of rows


*/