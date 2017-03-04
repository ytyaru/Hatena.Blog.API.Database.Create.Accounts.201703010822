drop table OAuthApplications;
create table OAuthApplications(
    Id                  integer primary key,
    AccountId           integer not null,
    Name                text not null,
    Description         text,
    Url                 text not null,
    Logo                blob,
    Icon                blob,
    ConsumerKey         text not null,
    ConsumerSecret      text not null,
    AccessToken         text,
    AccessTokenSecret   text,
    Scopes              text,
    CreateAt            text,
    Status              integer not null default 1 check(Status = 0 or Status = 1),
    NumberOfCertifiers  integer not null default 0,
    FOREIGN KEY (AccountId) REFERENCES Accounts(Id)
);
-- Nameのデフォルト値ははてなID。
-- URLのデフォルト値はhttps://www.hatena.ne.jp/{はてなID}/
-- Scopesの値は、read_public、write_public、read_private、write_privateをカンマ区切りにした組合せ。ないときはNULLまたは空文字。
