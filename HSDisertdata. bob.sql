USE Lab10_HSD;
GO



/*****   SEMINAR   **************************************************************/

INSERT INTO SEMINAR VALUES(
	'11-OCT-2011', '11:00 AM', 'San Antonio Convention Center',
	'Kitchen on a Budget');
INSERT INTO SEMINAR VALUES(
	'25-OCT-2011', '04:00 PM', 'Dallas Convention Center',
	'Kitchen on a Big D Budget');
INSERT INTO SEMINAR VALUES(
	'01-NOV-2011', '08:30 AM', 'Austin Convention Center',
	'Kitchen on a Budget');
INSERT INTO SEMINAR VALUES(
	'22-MAR-2012', '11:00 AM', 'Dallas Convention Center',
	'Kitchen on a Big D Budget');


/*****   CUSTOMER DATA   ********************************************************/

INSERT INTO CUSTOMER VALUES(
	'Nancy.Jacobs@somewhere.com', 'Jacobs', 'Nancy', '817-871-8123',
	'1440 West Palm Drive', 'Fort Worth', 'TX', '76110');
INSERT INTO CUSTOMER VALUES(
	'Chantel.Jacobs@somewhere.com', 'Jacobs', 'Chantel', '817-871-8234',
	'1550 East Palm Drive', 'Fort Worth', 'TX', '76112');
INSERT INTO CUSTOMER VALUES(
	'Ralph.Able@somewhere.com', 'Able', 'Ralph', '210-281-7987',
	'123 Elm Street', 'San Antonio', 'TX', '78214');
INSERT INTO CUSTOMER VALUES(
	'Susan.Baker@elsewhere.com', 'Baker', 'Susan', '210-281-7876',
	'456 Oak Street', 'San Antonio', 'TX', '78216');
INSERT INTO CUSTOMER VALUES(
	'Sam.Eagleton@elsewhere.com', 'Eagleton', 'Sam', '210-281-7765',
	'789 Pine Street', 'San Antonio', 'TX', '78218');
INSERT INTO CUSTOMER VALUES(
	'Kathy.Foxtrot@somewhere.com', 'Foxtrot', 'Kathy', '972-233-6234',
	'11023 Elm Street', 'Dallas', 'TX', '75220');
INSERT INTO CUSTOMER VALUES(
	'Sally.George@somewhere.com', 'George', 'Sally', '972-233-6345',
	'12034 San Jacinto', 'Dallas', 'TX', '75223');
INSERT INTO CUSTOMER VALUES(
	'Shawn.Hullett@elsewhere.com', 'Hullett', 'Shawn', '972-233-6456',
	'13045 Flora', 'Dallas', 'TX', '75224');
INSERT INTO CUSTOMER VALUES(
	'Bobbi.Pearson@elsewhere.com', 'Pearson', 'Bobbi', '512-974-3344',
	'43 West 23rd Street', 'Auston', 'TX', '78710');
INSERT INTO CUSTOMER VALUES(
	'Terry.Ranger@somewhere.com', 'Ranger', 'Terry', '512-974-4455',
	'56 East 18th Street', 'Auston', 'TX', '78712');
INSERT INTO CUSTOMER VALUES(
	'Jenny.Tyler@somewhere.com', 'Tyler', 'Jenny', '972-233-6567',
	'14056 South Ervay Street', 'Dallas', 'TX', '75225');
INSERT INTO CUSTOMER VALUES(
	'Joan.Wayne@elsewhere.com', 'Wayne', 'Joan', '817-871-8245',
	'1660 South Aspen Drive', 'Fort Worth', 'TX', '76115');


/*****   SEMINAR_CUSTOMER DATA   ************************************************/

INSERT INTO SEMINAR_CUSTOMER VALUES(1, 'Nancy.Jacobs@somewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 'Chantel.Jacobs@somewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 'Ralph.Able@somewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 'Susan.Baker@elsewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 'Sam.Eagleton@elsewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 'Kathy.Foxtrot@somewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 'Sally.George@somewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 'Shawn.Hullett@elsewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(3, 'Bobbi.Pearson@elsewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(3, 'Terry.Ranger@somewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 'Kathy.Foxtrot@somewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 'Sally.George@somewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 'Jenny.Tyler@somewhere.com');
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 'Joan.Wayne@elsewhere.com');


/*****   CONTACT DATA   *********************************************************/


INSERT INTO CONTACT VALUES(
	'Nancy.Jacobs@somewhere.com', '11-OCT-2011', 1, 'Seminar', 1);
INSERT INTO CONTACT VALUES(
	'Chantel.Jacobs@somewhere.com', '11-OCT-2011', 1, 'Seminar', 1);
INSERT INTO CONTACT VALUES(
	'Ralph.Able@somewhere.com', '11-OCT-2011', 1, 'Seminar', 1);
INSERT INTO CONTACT VALUES(
	'Susan.Baker@elsewhere.com', '11-OCT-2011', 1, 'Seminar', 1);
INSERT INTO CONTACT VALUES(
	'Sam.Eagleton@elsewhere.com', '11-OCT-2011', 1, 'Seminar', 1);

INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
	'Nancy.Jacobs@somewhere.com', '16-OCT-2011', 2, 'FormLetter01');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
	'Chantel.Jacobs@somewhere.com', '16-OCT-2011', 2, 'FormLetter01');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
    'Ralph.Able@somewhere.com', '16-OCT-2011', 2, 'FormLetter01');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
    'Susan.Baker@elsewhere.com', '16-OCT-2011', 2, 'FormLetter01');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
    'Sam.Eagleton@elsewhere.com', '16-OCT-2011', 2, 'FormLetter01');

INSERT INTO CONTACT VALUES(
	'Kathy.Foxtrot@somewhere.com', '25-OCT-2011', 1, 'Seminar', 2);
INSERT INTO CONTACT VALUES(
	'Sally.George@somewhere.com', '25-OCT-2011', 1, 'Seminar', 2);
INSERT INTO CONTACT VALUES(
	'Shawn.Hullett@elsewhere.com', '25-OCT-2011', 1, 'Seminar', 2);

INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
        'Kathy.Foxtrot@somewhere.com', '30-OCT-2011', 2, 'FormLetter01');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
        'Sally.George@somewhere.com', '30-OCT-2011', 2, 'FormLetter01');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
        'Shawn.Hullett@elsewhere.com', '30-OCT-2011', 2, 'FormLetter01');

INSERT INTO CONTACT VALUES(
	'Bobbi.Pearson@elsewhere.com', '01-NOV-2011', 1, 'Seminar', 3);
INSERT INTO CONTACT VALUES(
	'Terry.Ranger@somewhere.com', '01-NOV-2011', 1, 'Seminar', 3);

INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
        'Bobbi.Pearson@elsewhere.com', '06-NOV-2011', 2, 'FormLetter01');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
        'Terry.Ranger@somewhere.com', '06-NOV-2011', 2, 'FormLetter01');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
	'Kathy.Foxtrot@somewhere.com', '20-FEB-2012', 3, 'FormLetter02');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
	'Sally.George@somewhere.com', '20-FEB-2012', 3, 'FormLetter02');
INSERT INTO CONTACT (EmailAddress, ContactDate, ContactNumber, ContactType)
	VALUES(
	'Shawn.Hullett@elsewhere.com', '20-FEB-2012', 3, 'FormLetter02');

INSERT INTO CONTACT VALUES(
	'Kathy.Foxtrot@somewhere.com', '22-MAR-2012', 4, 'Seminar', 4);
INSERT INTO CONTACT VALUES(
	'Sally.George@somewhere.com', '22-MAR-2012', 4, 'Seminar', 4);
INSERT INTO CONTACT VALUES(
	'Jenny.Tyler@somewhere.com', '22-MAR-2012', 1, 'Seminar', 4);
INSERT INTO CONTACT VALUES(
	'Joan.Wayne@elsewhere.com', '22-MAR-2012', 1, 'Seminar', 4);


/*****   PRODUCT DATA   *********************************************************/

INSERT INTO PRODUCT VALUES(
	'VK001', 'Kitchen Remodeling Basics - Video', 14.95, 50);
INSERT INTO PRODUCT VALUES(
	'VK002', 'Advanced Kitchen Remodeling - Video', 14.95, 35);
INSERT INTO PRODUCT VALUES(
	'VK003', 'Kitchen Remodeling Dallas Style - Video', 19.95, 25);
INSERT INTO PRODUCT VALUES(
	'VK004', 'Heather Sweeney Seminar Live in Dallas on 25-OCT-09 - Video', 24.95, 20);
INSERT INTO PRODUCT VALUES(
	'VB001', 'Kitchen Remodeling Basics - Video Companion', 7.99, 50);
INSERT INTO PRODUCT VALUES(
	'VB002', 'Advanced Kitchen Remodeling - Video Companion', 7.99, 35);
INSERT INTO PRODUCT VALUES(
	'VB003', 'Kitchen Remodeling Dallas Style - Video Companion', 9.99, 25);
INSERT INTO PRODUCT VALUES(
	'BK001', 'Kitchen Remodeling Basics For Everyone - Book', 24.95, 75);
INSERT INTO PRODUCT VALUES(
	'BK002', 'Advanced Kitchen Remodeling For Everyone - Book', 24.95, 75);

/*****   INVOICE DATA    **************************************************/

/*****   Invoice 35000   **************************************************/
INSERT INTO INVOICE VALUES(
	'15-Oct-11', 'VISA', 22.94, 5.95, 1.31, 30.20,
	'Ralph.Able@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35000, 1, 1, 14.95, 14.95, 'VK001');
INSERT INTO LINE_ITEM VALUES(35000, 2, 1, 7.99, 7.99, 'VB001');

/*****   Invoice 35001   **************************************************/
INSERT INTO INVOICE VALUES(
	'25-Oct-11', 'MasterCard', 47.89, 5.95, 2.73, 56.57,
	'Susan.Baker@elsewhere.com');
INSERT INTO LINE_ITEM VALUES(35001, 1, 1, 14.95, 14.95, 'VK001');
INSERT INTO LINE_ITEM VALUES(35001, 2, 1, 7.99, 7.99, 'VB001');
INSERT INTO LINE_ITEM VALUES(35001, 3, 1, 24.95, 24.95, 'BK001');

/*****   Invoice 35002   **************************************************/
INSERT INTO INVOICE VALUES(
	'20-Dec-11', 'VISA', 24.95, 5.95, 1.42, 32.32,
	'Sally.George@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35002, 1, 1, 24.95, 24.95, 'VK004');

/*****   Invoice 35003   **************************************************/
INSERT INTO INVOICE VALUES(
	'25-Mar-12', 'MasterCard', 64.85, 5.95, 3.70, 74.50,
	'Susan.Baker@elsewhere.com');
INSERT INTO LINE_ITEM VALUES(35003, 1, 1, 14.95, 14.95, 'VK002');
INSERT INTO LINE_ITEM VALUES(35003, 2, 1, 24.95, 24.95, 'BK002');
INSERT INTO LINE_ITEM VALUES(35003, 3, 1, 24.95, 24.95, 'VK004');

/*****   Invoice 35004   ***************************************************/
INSERT INTO INVOICE VALUES(
	'27-Mar-12', 'MasterCard', 94.79, 5.95, 5.40, 106.14,
	'Kathy.Foxtrot@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35004, 1, 1, 14.95, 14.95, 'VK002');
INSERT INTO LINE_ITEM VALUES(35004, 2, 1, 24.95, 24.95, 'BK002');
INSERT INTO LINE_ITEM VALUES(35004, 3, 1, 19.95, 19.95, 'VK003');
INSERT INTO LINE_ITEM VALUES(35004, 4, 1, 9.99, 9.99, 'VB003');
INSERT INTO LINE_ITEM VALUES(35004, 5, 1, 24.95, 24.95, 'VK004');

/*****   Invoice 35005   ***************************************************/
INSERT INTO INVOICE VALUES(
	'27-Mar-12', 'MasterCard', 94.80, 5.95, 5.40, 106.15,
	'Sally.George@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35005, 1, 1, 24.95, 24.95, 'BK001');
INSERT INTO LINE_ITEM VALUES(35005, 2, 1, 24.95, 24.95, 'BK002');
INSERT INTO LINE_ITEM VALUES(35005, 3, 1, 19.95, 19.95, 'VK003');
INSERT INTO LINE_ITEM VALUES(35005, 4, 1, 24.95, 24.95, 'VK004');

/*****   Invoice 35006   ***************************************************/
INSERT INTO INVOICE VALUES(
	'31-Mar-12', 'VISA', 47.89,	5.95, 2.73, 56.57,
	'Bobbi.Pearson@elsewhere.com');
INSERT INTO LINE_ITEM VALUES(35006, 1, 1, 24.95, 24.95, 'BK001');
INSERT INTO LINE_ITEM VALUES(35006, 2, 1, 14.95, 14.95, 'VK001');
INSERT INTO LINE_ITEM VALUES(35006, 3, 1, 7.99, 7.99, 'VB001');

/*****   Invoice 35007   ***************************************************/
INSERT INTO INVOICE VALUES(
	'03-Apr-12', 'MasterCard', 109.78, 5.95, 6.26, 121.99,
	'Jenny.Tyler@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35007, 1, 2, 19.95, 39.90, 'VK003');
INSERT INTO LINE_ITEM VALUES(35007, 2, 2, 9.99, 19.98, 'VB003');
INSERT INTO LINE_ITEM VALUES(35007, 3, 2, 24.95, 49.90, 'VK004');

/*****   Invoice 35008   ***************************************************/
INSERT INTO INVOICE VALUES(
	'08-Apr-12', 'MasterCard', 47.89,	5.95, 2.73, 56.57,
	'Sam.Eagleton@elsewhere.com');
INSERT INTO LINE_ITEM VALUES(35008, 1, 1, 24.95, 24.95, 'BK001');
INSERT INTO LINE_ITEM VALUES(35008, 2, 1, 14.95, 14.95, 'VK001');
INSERT INTO LINE_ITEM VALUES(35008, 3, 1, 7.99, 7.99, 'VB001');

/*****   Invoice 35009   ***************************************************/
INSERT INTO INVOICE VALUES(
	'08-Apr-12', 'VISA', 47.89,	5.95, 2.73, 56.57,
	'Nancy.Jacobs@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35009, 1, 1, 24.95, 24.95, 'BK001');
INSERT INTO LINE_ITEM VALUES(35009, 2, 1, 14.95, 14.95, 'VK001');
INSERT INTO LINE_ITEM VALUES(35009, 3, 1, 7.99, 7.99, 'VB001');

/*****   Invoice 35010   ***************************************************/
INSERT INTO INVOICE VALUES(
	'23-Apr-12', 'VISA', 24.95,	5.95, 1.42, 32.32,
	'Ralph.Able@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35010, 1, 1, 24.95, 24.95, 'BK001');

/*****   Invoice 35011   ***************************************************/
INSERT INTO INVOICE VALUES(
	'07-May-12', 'VISA', 22.94,	5.95, 1.31, 30.20,
	'Bobbi.Pearson@elsewhere.com');
INSERT INTO LINE_ITEM VALUES(35011, 1, 1, 14.95, 14.95, 'VK002');
INSERT INTO LINE_ITEM VALUES(35011, 2, 1, 7.99, 7.99, 'VB002');

/*****   Invoice 35012   ***************************************************/
INSERT INTO INVOICE VALUES(
	'21-May-12', 'MasterCard', 54.89, 5.95, 3.13, 63.97,
	'Shawn.Hullett@elsewhere.com');
INSERT INTO LINE_ITEM VALUES(35012, 1, 1, 19.95, 19.95, 'VK003');
INSERT INTO LINE_ITEM VALUES(35012, 2, 1, 9.99, 9.99, 'VB003');
INSERT INTO LINE_ITEM VALUES(35012, 3, 1, 24.95, 24.95, 'VK004');

/*****   Invoice 35013   ***************************************************/
INSERT INTO INVOICE VALUES(
	'05-Jun-12', 'VISA', 47.89,	5.95, 2.73, 56.57,
	'Ralph.Able@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35013, 1, 1, 14.95, 14.95, 'VK002');
INSERT INTO LINE_ITEM VALUES(35013, 2, 1, 7.99, 7.99, 'VB002');
INSERT INTO LINE_ITEM VALUES(35013, 3, 1, 24.95, 24.95, 'BK002');

/*****   Invoice 35014   ***************************************************/
INSERT INTO INVOICE VALUES(
	'05-Jun-12', 'MasterCard', 45.88, 5.95, 2.62, 54.45,
	'Jenny.Tyler@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35014, 1, 2, 14.95, 29.90, 'VK002');
INSERT INTO LINE_ITEM VALUES(35014, 2, 2, 7.99, 15.98, 'VB002');

/*****   Invoice 35015   ***************************************************/
INSERT INTO INVOICE VALUES(
	'05-Jun-12', 'MasterCard', 94.79, 5.95, 5.40, 106.14, 
	'Joan.Wayne@elsewhere.com');
INSERT INTO LINE_ITEM VALUES(35015, 1, 1, 14.95, 14.95, 'VK002');
INSERT INTO LINE_ITEM VALUES(35015, 2, 1, 24.95, 24.95, 'BK002');
INSERT INTO LINE_ITEM VALUES(35015, 3, 1, 19.95, 19.95, 'VK003');
INSERT INTO LINE_ITEM VALUES(35015, 4, 1, 9.99, 9.99, 'VB003');
INSERT INTO LINE_ITEM VALUES(35015, 5, 1, 24.95, 24.95, 'VK004');

/*****   Invoice 35016   ***************************************************/
INSERT INTO INVOICE VALUES(
	'05-Jun-12', 'VISA', 45.88,	5.95, 2.62, 54.45,
	'Ralph.Able@somewhere.com');
INSERT INTO LINE_ITEM VALUES(35016, 1, 1, 14.95, 14.95, 'VK001');
INSERT INTO LINE_ITEM VALUES(35016, 2, 1, 7.99, 7.99, 'VB001');
INSERT INTO LINE_ITEM VALUES(35016, 3, 1, 14.95, 14.95, 'VK002');
INSERT INTO LINE_ITEM VALUES(35016, 4, 1, 7.99, 7.99, 'VB002');

/***************************************************************************/