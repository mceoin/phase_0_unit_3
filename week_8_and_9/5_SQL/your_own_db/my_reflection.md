My JOIN statements don't appear to be working. I'm trying to join my tables at the column names, but when I enter name = name, the terminal response is that this is too ambiguous. 

e.g.

sqlite> SELECT * FROM freds_facebook_friends JOIN freds_address_book  ON (ID=name);
Error: ambiguous column name: ID

shall have to investigate further. 

Zetcode's data manipulation guides are choice!

http://zetcode.com/db/sqlite/