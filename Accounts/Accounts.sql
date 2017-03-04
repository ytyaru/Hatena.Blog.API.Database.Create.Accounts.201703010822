drop table Accounts;
create table Accounts(
    Id          integer primary key,
    HatenaId    text unique not null,
    Password    text not null,
    MailAddress text unique not null,
    Nickname    text not null,
    Created     text
);
