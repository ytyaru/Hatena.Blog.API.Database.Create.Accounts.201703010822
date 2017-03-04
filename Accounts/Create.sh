#!/bin/bash
PATH_DB=./Hatena.Accounts.sqlite3
# Create Table
sqlite3 "${PATH_DB}" < ./Accounts.sql
sqlite3 "${PATH_DB}" < ./OAuthApplications.sql
# Insert
sqlite3 "${PATH_DB}" < ./Accounts.Insert.sql
sqlite3 "${PATH_DB}" < ./OAuthApplications.Insert.sql
# Check
sqlite3 "${PATH_DB}" < ./Check.sql

