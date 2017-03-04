-- Check
.headers on
-- ----- Tables -----
.tables
-- ----- Master -----
select * from sqlite_master;
-- ----- Accounts -----
select * from Accounts;
-- ----- OAuthApplications -----
select * from OAuthApplications;
select ConsumerKey,ConsumerSecret,AccessToken,AccessTokenSecret,Scopes from OAuthApplications where (',' || Scopes || ',') LIKE '%,write_private,%';
-- ----- vacuum -----
vacuum;
