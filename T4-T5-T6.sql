drop table if exists T4;
create table T4 (Salary decimal(9,2), Bonus decimal(9,2), Commission decimal(9,2), 
Gender char, Section char, Title char(2), URL Blob, Description2 Blob, Description3 Blob);

insert into T4 (Salary, Bonus, Commission, Gender, Section, Title, URL, Description2, Description3)
values
  (1724.55,82.74,8.306,"M","B","Ms","http://walmart.com/en-us","%B6764879832508641^VdixkcoWopsbx^8503806765?2","%B5720904048167623=72065807?1"),
  (9606.49,93.49,9.389,"M","A","Mr","https://guardian.co.uk/en-ca","%B2991183565438680^PvyhoqyQfdrom^95044714674?3","%B6151061152882221=6805212881? "),
  (9062.95,5.42,9.633,"F","C","Mr","https://instagram.com/sub","%B5377276282543858^OkkwyfmMzznco^2205801136?1","%B6245705872547626=9007357485?2"),
  (5646.56,69.32,7.344,"M","C","Ms","https://bbc.co.uk/en-us","%B3467490192542683^QzajqohVwxqry^2911360250?2","%B8054612371005531=8905563681?2"),
  (8591.41,5.75,6.465,"M","B","Mr","http://twitter.com/sub","%B1142665573203306^EtjwtuqHjhchm^2408927255?4","%B2010352157373145=76099416?2"),
  (3237.43,51.75,8.638,"F","A","Ms","https://guardian.co.uk/en-ca","%B4075328271861863^LqkjthnUnluxm^6802831163?1","%B1032927042050848=7911861448?8"),
  (8020.37,89.86,5.311,"F","C","Dr","http://guardian.co.uk/en-us","%B8775683310726576^XmdiqvvBquebj^2807482202?7","%B6686561338727314=7803889353?5"),
  (9411.55,39.10,5.624,"F","C","Ms","http://wikipedia.org/site","%B5462622475047399^CvwfwjrLiojzs^7103722385?7","%B4035801243707198=0910769361?8"),
  (5766.78,31.21,5.418,"M","C","Ms","https://facebook.com/sub","%B9244857482567348^TfpevlsWfutpv^64055376?2","%B7686825321568596=3307958717?2"),
  (7324.82,71.28,5.843,"M","B","Mr","https://guardian.co.uk/sub/cars","%B4645137632157845^PplhqhwPtwdbd^4802574233?1","%B3626769105137387=37096263565?4");

select * from T4;

-- Delete any male employees who earn more than $2,000 in salary.
delete from T4 where Gender = "M" and Salary > 2000
describe T4;

drop table if exists T5;
create table T5( TrackPrice decimal(10,2), AlbumPrice decimal(10,2), Number_In_Stock decimal(5,0), 
Album_Name char(50), Genre char(20), Artist_Name char(50), TrackPreview Blob, Album_Description Blob, 
SongFile Blob);

insert into T5(TrackPrice, AlbumPrice, Number_In_Stock, Album_Name, Genre, Artist_Name, TrackPreview, 
                Album_Description, SongFile)
values 
(2.99, 13.99, 100, 'Born This Way', 'Pop', 'Lady Gaga', 'PREVIEWS_1503.mp3', 'Born This Way is the second studio album by Lady Gaga', 'GOTOMYSONGFILES.mp3'),
(1.99, 19.99, 200, 'Thriller', 'Pop', 'Michael Jackson', 'PREVIEWS_4923.mp3', 'Thriller is the sixth studio album by Michael Jackson', 'GETMICHAELS_SONGS.mp3'),
(2.99, 15.99, 187, 'Collide with the Sky', 'Rock', 'Pierce The Veil', 'PREVIEWS_3423.mp3', 'Collide with the Sky is the third studio album by Pierce The Veil', 'SEESTARPATD_SONGS.mp3'),
(1.99, 9.99, 245, 'A Night at The Opera', 'Classic Rock', 'Queen', 'PREVIEWS_2829.mp3', 'A Night at The Opera is the fourth studio album by Queen', 'WATCHQUEEN_SONGS.mp3'),
(2.99, 10.99, 193, 'Ella And Louis', 'Jazz', 'Louis Armstrong', 'PREVIEWS_2319.mp3', 'Ella And Louis is a studio album by Ella Fitzgerald & Louis Armstrong', 'HEARSWEETMUSIC_SONGS.mp3'),
(2.99, 11.99, 178, 'Midnight Memories', 'Pop', 'One Direction', 'PREVIEWS_2613.mp3', 'Midnight Memories is the third studio album by One Direction', 'SEEWHATONEDIRECTION_SONGS.mp3'),
(1.99, 19.99, 206, 'Roman Holiday', 'Hip-Hop', 'Hopsin', 'PREVIEWS_227.mp3', 'Roman Holiday is the fourth studio album by Hopsin', 'CHECKOUT_HOPSIN_SONGS.mp3'),
(4.99, 32.99, 138, 'The Best of the Beatles', 'Rock', 'The Beatles', 'PREVIEWS_731.mp3', 'The Best of the Beatles is a compilation album by The Beatles', 'LISENTOBEATLES_SONGS.mp3'),
(2.99, 16.99, 128, 'Native', 'Folk', 'OneRepublic', 'PREVIEWS_1142.mp3', 'Native is the third studio album by OneRepublic', 'LISTENINONEREPUBLIC_SONGS.mp3'),
(2.99, 17.99, 207, 'The Blueprint', 'Hip-Hop', 'Jay Z', 'PREVIEWS_5203.mp3', 'The Blueprint is the sixth studio album by Jay-Z', 'CHECKKING_JAYZSONGS.mp3');

select * from T5;

-- Delete all Pop music from the playlist.
delete from T5 where Genre = "Pop";

drop table if exists T6;
create table T6(age decimal(4,2), weight decimal(5,2), height decimal(5,2), patientName char(30), 
gender char, marital_status char(15), medical_history Blob, patientDiagnosis Blob, prescriptions Blob);


insert into T6 
values 
(35.00, 172.90, 83.46, 'John Smith', 'M', 'Married', 'None', 'Flu', 'Paracetamol'),
(45.00, 152.53, 77.15, 'Mary Jones', 'F', 'Divorced', 'Diabetes', 'Asthma', 'Inhalers'),
(26.46, 203.04, 86.32, 'Fred Anderson', 'M', 'Single', 'None', 'Back Pain', 'Painkillers' ),
(55.00, 162.90, 84.32, 'Ann White', 'F', 'Married', 'Hypertension', 'Heart Attack', 'Aspirin, Beta Blockers'),
(22.90, 177.13, 70.54, 'Alex Johnson', 'M', 'Single', 'None', 'Chicken Pox', 'Antiviral Medication'),
(37.34, 199.00, 82.43, 'Sophie Miller', 'F', 'Married', 'None', 'Laryngitis', 'Steroids, Throat Lozenges'),
(20.92, 145.07, 75.12, 'Tom Green', 'M', 'Single', 'None', 'Bronchitis', 'Antibiotics, Cough Syrup'),
(16.57, 132.45, 66.21, 'Alice Brown', 'F', 'Married', 'None', 'Rashes', 'Antihistamines'),
(60.00, 132.98, 67.45, 'James Anderson', 'M', 'Married', 'Arthritis', 'Shoulder Pain', 'Painkillers, Anti-Inflammatory Drugs'),
(61.32, 192.01, 79.85, 'Emily Taylor', 'F', 'Widowed', 'High Blood Pressure', 'Vertigo', 'Beta Blockers, Diuretics');

select * from T6;
-- Delete any female employee who is currently married.
delete from T6 where Gender = 'F' and marital_status = 'Married';