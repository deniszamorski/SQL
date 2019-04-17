DROP DATABASE IF EXISTS BankAccountsDB;
Create Database BankAccountsDB;
Use BankAccountsDB;

Create Table Account (
	ID int not null primary key auto_increment,
    Account_Holder nvarchar(50) not null,
    Balance decimal(18,2) not null,
    Fees decimal(18,2) not null
    );
    
Create Table Transaction (
	ID int not null primary key auto_increment,
	Amount decimal(18,2) not null,
    Transaction_Type nvarchar(50) not null,
    Account_ID decimal(18,2) not null
    );
    
Insert Account (Account_Holder,Balance,Fees) Values ('Anna Bengel','8888.00','250.00');
Insert Account (Account_Holder,Balance,Fees) Values ('Chase Williams','5444.00','175.00');
Insert Account (Account_Holder,Balance,Fees) Values ('Jonelle Wehrman','3333.00','88.00');
Insert Account (Account_Holder,Balance,Fees) Values ('Steven Ross','3222.00','88.00');
Insert Transaction (Amount,Transaction_Type,Account_ID) Values ('500.00','Deposit','3');
Insert Transaction (Amount,Transaction_Type,Account_ID) Values ('200.00','Withdrawal','4');
Insert Transaction (Amount,Transaction_Type,Account_ID) Values ('200.00','Deposit','4');
Insert Transaction (Amount,Transaction_Type,Account_ID) Values ('248.00','Deposit','1'); 

