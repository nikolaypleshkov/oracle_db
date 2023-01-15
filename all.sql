CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  additional_name VARCHAR(255),
  address VARCHAR(255),
  mobile_phone VARCHAR(255),
  email VARCHAR(255),
  position VARCHAR(255),
  department INT,
  FOREIGN KEY (department) REFERENCES Departments(department_id)
);

CREATE TABLE Supervisors (
  supervisor_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  employee_id INT,
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

CREATE TABLE Departments (
  department_id INT PRIMARY KEY,
  department_title VARCHAR(255)
);

CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(255),
  surname VARCHAR(255),
  additional_name VARCHAR(255),
  address VARCHAR(255),
  mobile_phone VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE Accounts (
  account_id INT PRIMARY KEY,
  customer_id INT,
  account_number VARCHAR(255),
  balance DECIMAL,
  currency VARCHAR(255),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Department INSERT
insert into Departments (department_id, department_title) values (201, 'Legal');
insert into Departments (department_id, department_title) values (202, 'Research and Development');
insert into Departments (department_id, department_title) values (203, 'Support');
insert into Departments (department_id, department_title) values (204, 'Product Management');
insert into Departments (department_id, department_title) values (205, 'Human Resources');
insert into Departments (department_id, department_title) values (206, 'Services');
insert into Departments (department_id, department_title) values (207, 'Business Development');
insert into Departments (department_id, department_title) values (208, 'Accounting');

-- ============================ --

-- Customers INSERT
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (101, 'Silvio', 'Conaghan', 'Dreinan', 'Room 51', '+86 162 201 2930', 'sdreinan0@oaic.gov.au');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (102, 'Georgine', 'Bertot', 'Housam', 'Apt 810', '+62 894 694 1615', 'ghousam1@rakuten.co.jp');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (103, 'Jorey', 'Bagshawe', 'Stobo', '11th Floor', '+82 722 107 0079', 'jstobo2@creativecommons.org');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (104, 'Chev', 'Pringle', 'Lloyd', 'Apt 1844', '+7 192 377 3581', 'clloyd3@blogspot.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (105, 'Zolly', 'Sciacovelli', 'Gosby', 'Apt 305', '+63 385 172 9623', 'zgosby4@biglobe.ne.jp');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (106, 'Talya', 'Crevagh', 'Bibb', 'PO Box 36158', '+232 390 274 0220', 'tbibb5@spotify.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (107, 'Bernardine', 'Pesak', 'Kindell', 'Room 1570', '+86 664 246 0488', 'bkindell6@youku.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (108, 'Lars', 'Broadbridge', 'Holgan', 'Suite 85', '+66 471 433 6991', 'lholgan7@sourceforge.net');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (109, 'Langsdon', 'Studdal', 'Benning', 'Suite 50', '+375 876 544 8710', 'lbenning8@amazon.co.jp');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (110, 'Angeline', 'Sawden', 'Martschik', 'Apt 1373', '+63 799 759 6887', 'amartschik9@networkadvertising.org');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (111, 'Tome', 'Morales', 'Schiefersten', 'Apt 1252', '+235 642 773 1175', 'tschieferstena@jalbum.net');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (112, 'Bernard', 'Pietraszek', 'Prothero', 'Apt 261', '+86 103 188 5631', 'bprotherob@mac.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (113, 'Alphonso', 'Christley', 'Capstaff', 'Suite 85', '+962 911 928 6458', 'acapstaffc@free.fr');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (114, 'Morlee', 'Eyeington', 'Semered', 'Suite 97', '+963 177 395 7355', 'msemeredd@cpanel.net');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (115, 'Denyse', 'Atterbury', 'Lesek', '13th Floor', '+66 934 335 4867', 'dleseke@weibo.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (116, 'Heidi', 'Castells', 'Asty', 'PO Box 69176', '+63 501 989 3225', 'hastyf@cyberchimps.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (117, 'Rey', 'Edgson', 'Sinney', 'Suite 98', '+62 368 829 2453', 'rsinneyg@lulu.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (118, 'Alvinia', 'Ingray', 'Martijn', 'Apt 4', '+850 535 656 4197', 'amartijnh@patch.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (119, 'Rochester', 'Rogan', 'Glenton', '18th Floor', '+420 474 286 4710', 'rglentoni@illinois.edu');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (120, 'Sebastiano', 'McClelland', 'Curnnok', 'Suite 57', '+48 994 615 7901', 'scurnnokj@webnode.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (121, 'Celestia', 'Gallimore', 'Givens', 'PO Box 50948', '+420 492 672 9441', 'cgivensk@etsy.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (122, 'Dione', 'Wetherhead', 'Goodsell', 'PO Box 64612', '+86 637 724 0310', 'dgoodselll@t-online.de');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (123, 'Alida', 'Begent', 'McCooke', 'Apt 1319', '+81 574 639 1176', 'amccookem@harvard.edu');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (124, 'Jeni', 'Schaffel', 'Reidshaw', 'Apt 521', '+62 709 794 1952', 'jreidshawn@meetup.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (125, 'Madelaine', 'Piers', 'Mc Caughen', '7th Floor', '+30 958 852 3383', 'mmccaugheno@pinterest.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (126, 'Dory', 'Peres', 'Gregoretti', 'Apt 856', '+351 791 874 7290', 'dgregorettip@wufoo.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (127, 'Andee', 'Ayree', 'Billyeald', 'Suite 14', '+356 458 853 1627', 'abillyealdq@statcounter.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (128, 'Eleonore', 'Pidwell', 'Rosle', 'Apt 1111', '+63 437 257 6043', 'erosler@etsy.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (129, 'Herby', 'Kinge', 'Lattimore', '17th Floor', '+46 648 634 1111', 'hlattimores@craigslist.org');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (130, 'Prentiss', 'Tuft', 'Hendriks', 'Room 1409', '+994 737 187 9667', 'phendrikst@columbia.edu');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (131, 'Patrica', 'Richel', 'McConnal', 'Suite 98', '+48 769 121 8835', 'pmcconnalu@netlog.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (132, 'Myrvyn', 'Twohig', 'Wimbush', 'PO Box 37195', '+86 796 949 4689', 'mwimbushv@aboutads.info');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (133, 'Jacinta', 'Cromleholme', 'Tapton', 'Room 1307', '+63 574 306 6345', 'jtaptonw@tumblr.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (134, 'Edwin', 'Corsor', 'Scandrett', 'Apt 1617', '+92 313 756 5761', 'escandrettx@scribd.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (135, 'Padraig', 'Ellcome', 'Dener', 'PO Box 50122', '+33 450 829 2439', 'pdenery@prweb.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (136, 'Shaylyn', 'Northam', 'Buist', 'Room 764', '+358 960 685 5421', 'sbuistz@discuz.net');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (137, 'Hermie', 'Praundl', 'Harlick', 'PO Box 15084', '+66 842 108 6602', 'hharlick10@home.pl');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (138, 'Mattias', 'Caddell', 'Polendine', 'Room 690', '+81 345 663 9529', 'mpolendine11@google.fr');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (139, 'Levin', 'Echalie', 'Holworth', 'PO Box 64865', '+234 482 200 6127', 'lholworth12@ca.gov');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (140, 'Vyky', 'Haydney', 'Charlick', 'Room 824', '+86 295 257 8036', 'vcharlick13@soup.io');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (141, 'Masha', 'Bisatt', 'Getley', 'Suite 30', '+84 287 650 0527', 'mgetley14@businesswire.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (142, 'Allard', 'Argente', 'Bullier', '2nd Floor', '+62 525 722 7679', 'abullier15@redcross.org');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (143, 'Chalmers', 'Alwin', 'Kelledy', 'Room 48', '+63 412 903 0974', 'ckelledy16@yellowbook.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (144, 'Ferdinanda', 'Heald', 'Iron', '8th Floor', '+86 237 644 3850', 'firon17@unblog.fr');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (145, 'Avis', 'Le Monnier', 'Franz-Schoninger', 'Room 1487', '+502 529 883 2424', 'afranzschoninger18@goodreads.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (146, 'Savina', 'Eastes', 'Pigeon', '10th Floor', '+62 321 200 6938', 'spigeon19@squarespace.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (147, 'Sherrie', 'Murfett', 'Fronzek', '10th Floor', '+86 624 906 8859', 'sfronzek1a@sciencedirect.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (148, 'Sophi', 'Brockhouse', 'Garstang', '19th Floor', '+86 709 607 4883', 'sgarstang1b@pinterest.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (149, 'Gerhard', 'Gilardoni', 'Ewestace', 'Suite 45', '+58 282 737 8908', 'gewestace1c@sina.com.cn');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (150, 'Cherlyn', 'Galbraeth', 'Grahlman', 'Room 1042', '+7 468 332 1580', 'cgrahlman1d@virginia.edu');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (151, 'Hadlee', 'Andreolli', 'Eadie', 'Suite 66', '+62 435 469 7076', 'headie1e@ucoz.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (152, 'Ben', 'O''Noland', 'Arington', 'Apt 1109', '+62 109 430 1617', 'barington1f@free.fr');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (153, 'Evy', 'Kilroy', 'Spriggen', 'Room 364', '+380 904 385 5009', 'espriggen1g@patch.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (154, 'Claudius', 'Trill', 'Swinley', '10th Floor', '+86 688 557 7754', 'cswinley1h@typepad.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (155, 'Donavon', 'Monelle', 'Benninck', '11th Floor', '+46 585 154 7906', 'dbenninck1i@marketwatch.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (156, 'Humbert', 'Mostyn', 'McCumskay', '6th Floor', '+55 132 996 8959', 'hmccumskay1j@apple.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (157, 'Chelsie', 'Greason', 'Buntine', 'Room 1040', '+234 411 383 1464', 'cbuntine1k@barnesandnoble.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (158, 'Vincenz', 'Gudyer', 'Mauchline', 'Room 15', '+55 577 443 2240', 'vmauchline1l@digg.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (159, 'Nobe', 'Lamswood', 'Paddefield', 'Room 1967', '+92 942 105 5572', 'npaddefield1m@sohu.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (160, 'Enrico', 'Gaveltone', 'Hoggetts', '10th Floor', '+48 304 728 2679', 'ehoggetts1n@irs.gov');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (161, 'Lavinie', 'Revens', 'Zamorano', 'Room 1870', '+358 977 718 7373', 'lzamorano1o@lycos.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (162, 'Lanie', 'Sarfat', 'Auguste', '18th Floor', '+994 829 706 8862', 'lauguste1p@constantcontact.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (163, 'Honey', 'Hardson', 'Pendrid', '6th Floor', '+55 815 468 6596', 'hpendrid1q@marketwatch.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (164, 'Nanny', 'Cheers', 'Karchewski', 'Room 928', '+62 957 945 3084', 'nkarchewski1r@free.fr');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (165, 'Lane', 'Burbidge', 'Spellacy', 'Suite 12', '+30 396 165 0525', 'lspellacy1s@altervista.org');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (166, 'Blanch', 'Speak', 'Eades', 'Suite 49', '+7 131 483 6090', 'beades1t@redcross.org');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (167, 'Cherie', 'Lilbourne', 'Westcarr', '17th Floor', '+351 255 406 7352', 'cwestcarr1u@gov.uk');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (168, 'Don', 'Richardsson', 'Trusty', 'Suite 69', '+7 225 520 3266', 'dtrusty1v@ask.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (169, 'Garland', 'Dobbinson', 'Varney', '8th Floor', '+52 965 150 3529', 'gvarney1w@diigo.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (170, 'Cammy', 'Izatson', 'Todarello', 'Apt 81', '+7 936 362 5215', 'ctodarello1x@loc.gov');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (171, 'Kiele', 'Killingworth', 'Basden', 'Apt 1285', '+593 679 585 2497', 'kbasden1y@scientificamerican.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (172, 'Casey', 'McGettigan', 'Codman', 'Apt 229', '+670 646 895 0668', 'ccodman1z@fastcompany.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (173, 'Harli', 'Haslum', 'Wiz', 'PO Box 68978', '+358 306 292 9040', 'hwiz20@nationalgeographic.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (174, 'Bride', 'Ballentime', 'Killerby', '18th Floor', '+52 705 897 6814', 'bkillerby21@tripadvisor.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (175, 'Roderic', 'Smallthwaite', 'Skain', 'Suite 72', '+55 903 567 2545', 'rskain22@bravesites.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (176, 'Verina', 'Frenchum', 'Heifer', 'Room 1742', '+31 219 695 7087', 'vheifer23@bloomberg.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (177, 'Bab', 'Timmins', 'Livingstone', '8th Floor', '+7 263 406 2794', 'blivingstone24@mit.edu');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (178, 'Winslow', 'Darnody', 'Walsh', 'Suite 100', '+380 757 205 7873', 'wwalsh25@creativecommons.org');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (179, 'Bathsheba', 'Argente', 'Fawbert', '11th Floor', '+380 620 549 6573', 'bfawbert26@ezinearticles.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (180, 'Laurene', 'Sumpter', 'Skottle', 'PO Box 36296', '+60 708 178 0127', 'lskottle27@mac.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (181, 'Napoleon', 'Barenski', 'Pasque', 'Suite 92', '+62 201 774 7431', 'npasque28@ustream.tv');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (182, 'Geri', 'Issacof', 'Markey', 'Apt 530', '+1 952 573 2966', 'gmarkey29@ucoz.ru');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (183, 'Kailey', 'De Haven', 'Selwin', 'Suite 70', '+54 802 209 6866', 'kselwin2a@amazonaws.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (184, 'Arlin', 'Burnell', 'Fossord', '18th Floor', '+63 200 185 7702', 'afossord2b@narod.ru');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (185, 'Gabriel', 'Galier', 'Braiden', 'PO Box 27959', '+86 136 195 4797', 'gbraiden2c@nsw.gov.au');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (186, 'Dominga', 'Hedgeman', 'Reville', 'Suite 8', '+86 910 353 0408', 'dreville2d@flickr.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (187, 'Shayne', 'Tarbox', 'Penelli', 'Apt 1905', '+86 435 478 7900', 'spenelli2e@netlog.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (188, 'Cleavland', 'Avison', 'Worral', 'PO Box 16442', '+86 418 704 1434', 'cworral2f@a8.net');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (189, 'Purcell', 'Schruyer', 'Maling', 'Room 1719', '+63 124 724 3797', 'pmaling2g@buzzfeed.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (190, 'Flinn', 'Brocklebank', 'Brosenius', 'Room 1640', '+62 501 132 6621', 'fbrosenius2h@facebook.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (191, 'Meggy', 'Akitt', 'Krauze', 'PO Box 33838', '+62 584 524 2364', 'mkrauze2i@patch.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (192, 'Fitz', 'Degg', 'Digance', 'Suite 6', '+57 245 835 4208', 'fdigance2j@ebay.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (193, 'Lula', 'Traut', 'Hannent', '16th Floor', '+63 168 967 5606', 'lhannent2k@tripod.com');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (194, 'Zenia', 'Damiral', 'Lyngsted', 'Suite 53', '+92 741 607 6545', 'zlyngsted2l@columbia.edu');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (195, 'Brandais', 'Jopp', 'Tavinor', 'PO Box 13750', '+1 818 697 6002', 'btavinor2m@unblog.fr');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (196, 'Madeleine', 'Haggerstone', 'McGiven', 'Apt 1200', '+62 153 455 0845', 'mmcgiven2n@miibeian.gov.cn');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (197, 'Gifford', 'Prickett', 'Clare', 'Room 246', '+20 239 923 7799', 'gclare2o@phoca.cz');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (198, 'Marcelia', 'Le Cornu', 'Winser', 'Room 198', '+1 714 907 2705', 'mwinser2p@toplist.cz');
insert into Customers (customer_id, first_name, surname, additional_name, address, mobile_phone, email) values (199, 'Alexandro', 'Gregersen', 'Grimmolby', 'PO Box 12778', '+62 219 361 7673', 'agrimmolby2q@jigsy.com');

-- ============================ --

-- Accounts INSERT

insert into Accounts (account_id, customer_id, account_number, balance, currency) values (301, 101, '6925950969', 207401, 'Manat');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (302, 102, '9239802207', 81393, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (303, 103, '7957417256', 274934, 'Shilling');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (304, 104, '4887587929', 423041, 'Sol');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (305, 105, '4628013535', 126449, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (306, 106, '1234908344', 478008, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (307, 107, '0133955494', 165904, 'Zloty');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (308, 108, '8688300151', 277882, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (309, 109, '0724285679', 310510, 'Rupee');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (310, 110, '8713636278', 112792, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (311, 111, '7679750521', 430434, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (312, 112, '2184010022', 235153, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (313, 113, '9164958930', 151993, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (314, 114, '3068858364', 425598, 'Euro');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (315, 115, '0200309447', 479695, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (316, 116, '9915515456', 444891, 'Tenge');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (317, 117, '3053948540', 96720, 'Euro');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (318, 118, '4161313403', 489202, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (319, 119, '0263521060', 340633, 'Won');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (320, 120, '1052522696', 337224, 'Forint');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (321, 121, '3705132334', 72130, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (322, 122, '1911099981', 166204, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (323, 123, '3533008355', 490213, 'Euro');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (324, 124, '4056542783', 143144, 'Zloty');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (325, 125, '7872788918', 62418, 'Ruble');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (326, 126, '7289527291', 95415, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (327, 127, '5405162728', 471900, 'Sol');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (328, 128, '4680948493', 177116, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (329, 129, '8157881714', 352355, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (330, 130, '4660470407', 285855, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (331, 131, '0742635260', 235257, 'Koruna');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (332, 132, '6335745429', 3928, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (333, 133, '3134851172', 141708, 'Ruble');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (334, 134, '0485887851', 271773, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (335, 135, '1857540492', 140420, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (336, 136, '0118662732', 407786, 'Dinar');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (337, 137, '5650760861', 194572, 'Baht');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (338, 138, '7353898917', 211812, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (339, 139, '0718487079', 83671, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (340, 140, '0444153446', 473686, 'Guarani');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (341, 141, '6996986869', 418177, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (342, 142, '8985140736', 476829, 'Yen');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (343, 143, '0650352513', 259655, 'Real');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (344, 144, '3586708041', 360100, 'Yen');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (345, 145, '1976029171', 140168, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (346, 146, '3670312609', 392882, 'Denar');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (347, 147, '3997521093', 483133, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (348, 148, '7090509931', 463003, 'Franc');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (349, 149, '5845187796', 395664, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (350, 150, '6424894756', 449064, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (351, 151, '6542928944', 71467, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (352, 152, '1267029943', 137892, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (353, 153, '7455890214', 317199, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (354, 154, '8296960680', 261509, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (355, 155, '2672757879', 429549, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (356, 156, '4365959956', 174563, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (357, 157, '6423722854', 378945, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (358, 158, '1705958141', 394259, 'Krone');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (359, 159, '9354430082', 377478, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (360, 160, '2769312499', 150941, 'Real');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (361, 161, '5573420801', 396992, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (362, 162, '6684788131', 499658, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (363, 163, '0134104749', 260337, 'Won');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (364, 164, '5681874559', 355695, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (365, 165, '8467004061', 119589, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (366, 166, '1210199769', 389783, 'Euro');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (367, 167, '6327395058', 114780, 'Hryvnia');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (368, 168, '7225843117', 380925, 'Ruble');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (369, 169, '5081064017', 492403, 'Sol');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (370, 170, '9752009549', 69673, 'Ruble');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (371, 171, '3561577504', 419065, 'Zloty');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (372, 172, '1475792751', 226709, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (373, 173, '6368533234', 121045, 'Tenge');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (374, 174, '8585101180', 296275, 'Ruble');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (375, 175, '3174246989', 301602, 'Tenge');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (376, 176, '4219150730', 17644, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (377, 177, '4524610189', 259760, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (378, 178, '0621803545', 393792, 'Krona');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (379, 179, '1658117794', 280073, 'Bolivar');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (380, 180, '8875938911', 113260, 'Euro');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (381, 181, '5649492387', 58171, 'Krona');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (382, 182, '2908539292', 108108, 'Yen');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (383, 183, '3727055804', 89718, 'Euro');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (384, 184, '3216178773', 196525, 'Boliviano');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (385, 185, '9974639816', 451619, 'Rupiah');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (386, 186, '9059785622', 133447, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (387, 187, '0962970182', 192564, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (388, 188, '7065508315', 185901, 'Koruna');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (389, 189, '3050978066', 149779, 'Tugrik');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (390, 190, '4034900504', 91616, 'Euro');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (391, 191, '2222059895', 472921, 'Peso');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (392, 192, '0354511319', 89130, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (393, 193, '8176486507', 40273, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (394, 194, '7176884439', 151728, 'Zloty');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (395, 195, '1341974537', 467724, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (396, 196, '8475416802', 347310, 'Shekel');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (397, 197, '7606560420', 262211, 'Yuan Renminbi');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (398, 198, '5677559342', 497285, 'Ruble');
insert into Accounts (account_id, customer_id, account_number, balance, currency) values (399, 199, '4532404614', 252243, 'Yuan Renminbi');

-- ============================ --

-- Employees INSERT
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (1, 'Garrott', 'Couroy', 'Ruspine', 397133, '+62 927 683 6915', 'gruspine0@shinystat.com', 'Investment representative', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (2, 'Jamie', 'Fenlon', 'Beachem', 357122, '+62 873 870 9192', 'jbeachem1@phpbb.com', 'Loan processor', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (3, 'Tiffy', 'Inwood', 'Bouette', 217284, '+856 774 440 6032', 'tbouette2@noaa.gov', 'Mortgage consultant', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (4, 'Bryant', 'Dorman', 'Haslum', 183339, '+39 664 376 3922', 'bhaslum3@telegraph.co.uk', 'Banker', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (5, 'Consalve', 'Aldwinckle', 'Chaster', 313785, '+81 995 106 9147', 'cchaster4@cisco.com', 'Mortgage consultant', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (6, 'Jillene', 'Littlepage', 'Gething', 361934, '+86 943 432 3272', 'jgething5@behance.net', 'Investment banker', 202);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (7, 'Mariette', 'Hartman', 'Pearson', 291362, '+351 567 721 1990', 'mpearson6@desdev.cn', 'Investment representative', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (8, 'Tyson', 'Kubec', 'Crosen', 488577, '+7 673 146 7853', 'tcrosen7@diigo.com', 'Bank teller', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (9, 'Kele', 'Strudwick', 'Deakin', 95822, '+86 506 738 7003', 'kdeakin8@imdb.com', 'Loan processor', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (10, 'Katrina', 'Grattage', 'Hargroves', 465297, '+380 346 210 8689', 'khargroves9@joomla.org', 'Credit analyst', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (11, 'Alisander', 'Zold', 'Scrowson', 335986, '+86 832 529 7745', 'ascrowsona@hao123.com', 'Mortgage consultant', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (12, 'Dede', 'Dackombe', 'Dwelly', 405416, '+86 910 317 3323', 'ddwellyb@gov.uk', 'Investment banker', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (13, 'Morna', 'Schimon', 'Guiu', 26137, '+261 867 378 8518', 'mguiuc@techcrunch.com', 'Loan processor', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (14, 'Tasia', 'Cantrell', 'Ivankov', 217050, '+261 731 401 4040', 'tivankovd@google.fr', 'Loan processor', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (15, 'Chlo', 'Stuehmeyer', 'McCullum', 381169, '+66 453 306 9496', 'cmccullume@dailymotion.com', 'Mortgage consultant', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (16, 'Kellsie', 'Michie', 'O''Mailey', 190229, '+86 170 756 5427', 'komaileyf@amazon.co.uk', 'Investment banker', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (17, 'Shirline', 'Alberts', 'Mundford', 464254, '+46 597 711 9879', 'smundfordg@springer.com', 'Investment banker', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (18, 'Brenn', 'Bridgnell', 'Pottie', 189379, '+234 340 118 8300', 'bpottieh@ocn.ne.jp', 'Mortgage consultant', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (19, 'Anneliese', 'Rizzotto', 'Julian', 294339, '+48 376 278 1197', 'ajuliani@nationalgeographic.com', 'Banker', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (20, 'Whitman', 'Kemshell', 'Fawlks', 332806, '+51 793 827 8890', 'wfawlksj@paypal.com', 'Credit analyst', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (21, 'Matilda', 'Merrgen', 'Brasse', 158304, '+86 552 381 7123', 'mbrassek@infoseek.co.jp', 'Investment representative', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (22, 'Celinka', 'Aarons', 'Escolme', 323707, '+7 181 782 8129', 'cescolmel@friendfeed.com', 'Investment banker', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (23, 'Betteanne', 'Leggitt', 'Holdey', 203092, '+359 843 671 8618', 'bholdeym@wisc.edu', 'Mortgage consultant', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (24, 'Merilee', 'Redhead', 'Bartoletti', 186645, '+33 738 844 0588', 'mbartolettin@devhub.com', 'Banker', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (25, 'Loise', 'Bourhill', 'Shickle', 399690, '+55 170 438 8439', 'lshickleo@psu.edu', 'Credit analyst', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (26, 'Sherri', 'Pasticznyk', 'Cauthra', 420808, '+63 665 119 4025', 'scauthrap@chronoengine.com', 'Mortgage consultant', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (27, 'Faith', 'Grigorkin', 'Kintzel', 407990, '+970 767 442 1328', 'fkintzelq@dedecms.com', 'Bank teller', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (28, 'Mufinella', 'Altofts', 'Cockrell', 65891, '+51 147 674 5947', 'mcockrellr@addthis.com', 'Credit analyst', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (29, 'Shirline', 'Paulton', 'Bridle', 130033, '+351 670 906 4730', 'sbridles@netscape.com', 'Investment banker', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (30, 'Alanson', 'Trustrie', 'Van Giffen', 395085, '+7 734 618 8870', 'avangiffent@walmart.com', 'Investment banker', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (31, 'Ynes', 'Kelson', 'Dillimore', 52358, '+7 963 633 5119', 'ydillimoreu@tripod.com', 'Banker', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (32, 'Loralie', 'Attwill', 'Nelsey', 294511, '+66 743 554 3786', 'lnelseyv@opensource.org', 'Mortgage consultant', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (33, 'Giacobo', 'Pipping', 'Kinset', 471068, '+48 464 225 6625', 'gkinsetw@theatlantic.com', 'Loan processor', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (34, 'Ivar', 'Insko', 'Keggins', 135949, '+62 456 308 4013', 'ikegginsx@yale.edu', 'Mortgage consultant', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (35, 'Diane-marie', 'Beurich', 'Briton', 214631, '+351 823 997 7286', 'dbritony@usgs.gov', 'Loan processor', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (36, 'Kennan', 'Gawthorpe', 'Vassall', 409780, '+355 370 772 9445', 'kvassallz@businessinsider.com', 'Investment banker', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (37, 'Gilberte', 'Stanborough', 'Baldree', 128158, '+46 556 753 8970', 'gbaldree10@earthlink.net', 'Investment representative', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (38, 'Morna', 'Simonnin', 'Rosendorf', 487974, '+86 191 137 8728', 'mrosendorf11@lulu.com', 'Loan processor', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (39, 'Devina', 'Trytsman', 'Lumm', 26576, '+351 782 240 2846', 'dlumm12@github.com', 'Banker', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (40, 'Olenolin', 'Klarzynski', 'De Pero', 131262, '+86 572 873 1166', 'odepero13@gnu.org', 'Investment banker', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (41, 'Baryram', 'Douglas', 'Weddell', 289467, '+850 223 453 3692', 'bweddell14@marketwatch.com', 'Loan processor', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (42, 'Eirena', 'Tremellier', 'Brockest', 39017, '+86 644 749 4184', 'ebrockest15@vinaora.com', 'Bank teller', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (43, 'Law', 'Kenyon', 'Meiklam', 173942, '+63 853 884 7308', 'lmeiklam16@constantcontact.com', 'Banker', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (44, 'Hortensia', 'Grishaev', 'Edmondson', 151945, '+1 869 177 1526', 'hedmondson17@elpais.com', 'Banker', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (45, 'Gerhard', 'Luc', 'Tanby', 295857, '+976 873 487 8189', 'gtanby18@globo.com', 'Loan processor', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (46, 'Bond', 'Mabon', 'Ulyat', 279439, '+46 304 261 0134', 'bulyat19@usa.gov', 'Loan processor', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (47, 'Wandis', 'Smallsman', 'Heatly', 164383, '+62 895 570 9155', 'wheatly1a@deliciousdays.com', 'Investment representative', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (48, 'Merla', 'Geistmann', 'MacGarrity', 345577, '+386 849 795 0449', 'mmacgarrity1b@sakura.ne.jp', 'Mortgage consultant', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (49, 'Skipp', 'Penddreth', 'Van Dale', 109834, '+62 480 265 2124', 'svandale1c@wiley.com', 'Loan processor', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (50, 'Basilio', 'Ivkovic', 'D''Ambrogi', 457538, '+62 615 431 7253', 'bdambrogi1d@furl.net', 'Loan processor', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (51, 'Darbie', 'Ravelus', 'O''Hannen', 440218, '+54 732 696 7783', 'dohannen1e@tiny.cc', 'Bank teller', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (52, 'Ava', 'Castillon', 'Rupp', 142567, '+48 797 649 8716', 'arupp1f@arstechnica.com', 'Banker', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (53, 'Miltie', 'Blanch', 'Renols', 449387, '+299 702 910 7795', 'mrenols1g@mit.edu', 'Investment representative', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (54, 'Toby', 'Sparke', 'Cockerill', 15703, '+420 998 663 3403', 'tcockerill1h@eventbrite.com', 'Loan processor', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (55, 'Sascha', 'Kornel', 'Hew', 334937, '+62 676 397 9500', 'shew1i@nationalgeographic.com', 'Investment representative', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (56, 'Zenia', 'De Nisco', 'Wilcox', 419109, '+963 599 440 3340', 'zwilcox1j@noaa.gov', 'Bank teller', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (57, 'Odo', 'Pleuman', 'Paudin', 147390, '+86 350 708 6087', 'opaudin1k@yandex.ru', 'Investment banker', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (58, 'Virgie', 'Carlesso', 'Wahlberg', 496090, '+234 953 755 2191', 'vwahlberg1l@google.ca', 'Banker', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (59, 'Teri', 'Selborne', 'Van Leeuwen', 248704, '+63 926 362 2355', 'tvanleeuwen1m@pagesperso-orange.fr', 'Investment banker', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (60, 'Leontyne', 'Goathrop', 'Zettoi', 43235, '+52 327 925 3331', 'lzettoi1n@blogger.com', 'Bank teller', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (61, 'Aleta', 'Crewther', 'Cannavan', 28438, '+992 581 394 1376', 'acannavan1o@imdb.com', 'Mortgage consultant', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (62, 'Hillier', 'McOwen', 'Lowman', 63609, '+970 180 191 0362', 'hlowman1p@techcrunch.com', 'Credit analyst', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (63, 'Clarke', 'Stockton', 'Anthoney', 311555, '+256 752 294 0652', 'canthoney1q@craigslist.org', 'Investment representative', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (64, 'Tory', 'Adlem', 'Cadigan', 388659, '+86 646 534 8574', 'tcadigan1r@weather.com', 'Mortgage consultant', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (65, 'Marchall', 'De Ferraris', 'Whiten', 450058, '+592 312 546 8681', 'mwhiten1s@xinhuanet.com', 'Credit analyst', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (66, 'Mile', 'Terrill', 'Overy', 458332, '+62 764 780 8314', 'movery1t@umn.edu', 'Loan processor', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (67, 'Barris', 'Pickin', 'Skeech', 377271, '+86 703 118 8446', 'bskeech1u@yellowpages.com', 'Investment representative', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (68, 'Lorrayne', 'Lilburn', 'Treneer', 313422, '+62 868 985 6391', 'ltreneer1v@jugem.jp', 'Investment banker', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (69, 'Timothy', 'Bardnam', 'Martignoni', 242204, '+86 883 590 0770', 'tmartignoni1w@elegantthemes.com', 'Investment representative', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (70, 'Donn', 'Mangin', 'Woolger', 409108, '+86 841 451 7398', 'dwoolger1x@clickbank.net', 'Banker', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (71, 'Meridith', 'Edmeades', 'O''Lynn', 325492, '+62 568 413 9379', 'molynn1y@time.com', 'Investment representative', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (72, 'Luciana', 'Worner', 'Dalrymple', 437989, '+254 650 757 0626', 'ldalrymple1z@taobao.com', 'Mortgage consultant', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (73, 'Noreen', 'Bartels', 'Yakobovitz', 120542, '+7 234 238 9134', 'nyakobovitz20@imageshack.us', 'Credit analyst', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (74, 'Mendie', 'Savil', 'Limrick', 246378, '+55 761 402 1570', 'mlimrick21@about.com', 'Loan processor', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (75, 'Kirbee', 'Geldeard', 'Ferrand', 378125, '+591 624 372 0188', 'kferrand22@japanpost.jp', 'Credit analyst', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (76, 'Gay', 'Rubenczyk', 'Lauks', 429125, '+41 628 710 2722', 'glauks23@desdev.cn', 'Investment banker', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (77, 'Rosaline', 'Huthart', 'Burniston', 97302, '+63 281 431 8574', 'rburniston24@sphinn.com', 'Investment representative', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (78, 'Fitzgerald', 'Dalziel', 'MacGorley', 418653, '+48 719 743 4596', 'fmacgorley25@eventbrite.com', 'Banker', 202);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (79, 'Kala', 'Cutress', 'Duckerin', 47233, '+220 471 607 0365', 'kduckerin26@stumbleupon.com', 'Mortgage consultant', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (80, 'Ashlen', 'Gehrels', 'Hackwell', 344165, '+86 130 298 6256', 'ahackwell27@nbcnews.com', 'Investment banker', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (81, 'Lambert', 'Trump', 'Weddell', 315583, '+86 644 830 4996', 'lweddell28@rediff.com', 'Mortgage consultant', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (82, 'Albie', 'Barthelmes', 'Ollet', 304284, '+48 543 291 0214', 'aollet29@ted.com', 'Mortgage consultant', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (83, 'Willie', 'Torn', 'Vamplew', 24808, '+63 347 766 7860', 'wvamplew2a@yellowpages.com', 'Credit analyst', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (84, 'Tarra', 'Rennels', 'Harradine', 174218, '+850 393 981 4219', 'tharradine2b@indiatimes.com', 'Credit analyst', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (85, 'Xylia', 'Coales', 'Houltham', 324290, '+55 843 616 8182', 'xhoultham2c@cbslocal.com', 'Banker', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (86, 'Rozalie', 'Dyzart', 'Gilluley', 264704, '+33 596 412 1508', 'rgilluley2d@lycos.com', 'Investment banker', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (87, 'Vally', 'Oxbrow', 'Edyson', 336410, '+86 542 808 7941', 'vedyson2e@soundcloud.com', 'Credit analyst', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (88, 'Georgeanne', 'Hebbard', 'Giannini', 378605, '+358 954 620 0181', 'ggiannini2f@fotki.com', 'Investment representative', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (89, 'Clint', 'Scroggie', 'Sheasby', 372473, '+86 458 764 0042', 'csheasby2g@ezinearticles.com', 'Investment banker', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (90, 'Loren', 'Guesford', 'Runnicles', 184715, '+62 794 120 0119', 'lrunnicles2h@foxnews.com', 'Credit analyst', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (91, 'Ailene', 'Diable', 'Paule', 343682, '+47 564 446 9914', 'apaule2i@google.de', 'Mortgage consultant', 204);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (92, 'Deloria', 'Bartolic', 'Ollerearnshaw', 434003, '+351 324 685 8260', 'dollerearnshaw2j@answers.com', 'Investment banker', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (93, 'Urban', 'Westmancoat', 'Godehard.sf', 200085, '+1 915 258 3613', 'ugodehardsf2k@w3.org', 'Credit analyst', 201);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (94, 'Ernst', 'Christol', 'Dawdry', 303498, '+55 336 788 1613', 'edawdry2l@mysql.com', 'Loan processor', 206);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (95, 'Noelyn', 'Ellwand', 'Murrie', 341671, '+7 659 755 7277', 'nmurrie2m@unesco.org', 'Credit analyst', 203);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (96, 'Elissa', 'Stocky', 'Giacomozzo', 29426, '+62 748 546 0251', 'egiacomozzo2n@cnbc.com', 'Mortgage consultant', 207);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (97, 'Sloan', 'Defew', 'Crystal', 128976, '+33 262 201 4489', 'scrystal2o@dell.com', 'Credit analyst', 205);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (98, 'Tomlin', 'Tuffell', 'Crichton', 41674, '+62 606 834 5569', 'tcrichton2p@howstuffworks.com', 'Investment representative', 208);
insert into Employees (employee_id, first_name, surname, additional_name, address, mobile_phone, email, position, department) values (99, 'Clerissa', 'Cousin', 'Kestin', 485384, '+66 637 889 7558', 'ckestin2q@weebly.com', 'Investment representative', 207);

-- ============================ --

-- Supervisors INSERT

insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (501, 'Karylin', 'Chable', 23);
insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (502, 'Hewe', 'Lathleiffure', 2);
insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (503, 'Daron', 'Hogsden', 26);
insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (504, 'Mimi', 'Riste', 43);
insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (505, 'Bette-ann', 'Coronado', 96);
insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (506, 'Miquela', 'Blaxlande', 83);
insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (507, 'Winnie', 'Wiles', 55);
insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (508, 'Milo', 'Richings', 44);
insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (509, 'Vernen', 'Joseland', 71);
insert into Supervisors (supervisor_id, first_name, surname, employee_id) values (510, 'Dagmar', 'Ede', 57);

-- ============================ --


-- Бизнес заявки част 1 --
ALTER TABLE Employees ADD salary INT;
UPDATE Employees SET salary = dbms_random.value(1000, 9500) WHERE employee_id BETWEEN 1 AND 99;

ALTER TABLE Employees ADD years_of_service INT;
UPDATE Employees SET years_of_service = dbms_random.value(1, 10) WHERE employee_id BETWEEN 1 AND 99;


-- 1. Да се създаде листинг на имената на всички отдели в банката
SELECT department_title FROM Departments;

-- 2. Да се създаде листинга на месечните възнаграждения на всички
-- служители, в листинга е необходимо да присъстват двете имена
-- на служителя и неговата заплата
SELECT first_name, surname, salary FROM Employees;

-- 3. Да се създаде листинг на всички служители в банката в листинга
-- трябва да присъстват двете имена на служителите и новогенерирани
-- имейли, които да се състоят от конкатенирани първото и второ име
-- на служителя разделени с точка. Имената на служителите трябва да
-- бъдат с малки букви в имейла. Домейна на компанията е
-- bankoftomarow.bg
SELECT e.first_name, e.surname, LOWER(e.first_name || '.' || e.surname || '@bankoftomarow.bg') AS new_email
FROM Employees e;

-- 4. Намерете всички служители които банката дефинира като старши
-- служители. Старши служители са всички които работят в компанията
-- от 5 години.
SELECT * FROM Employees WHERE years_of_service >= 5;

-- 5. Намерете всички служители, чиито имена (първо / второ или
-- допълнително съдържат буквата l)
SELECT * FROM Employees WHERE first_name LIKE '%l%' OR surname LIKE '%l%' OR additional_name LIKE '%l%';
-- ============================ --

-- Бизнес заявки част 2 --

-- Да се реализира таблица за съхранение на данните за движението
-- на служителите между отдели.

CREATE TABLE EmployeeTraffic (
  movement_id INT PRIMARY KEY,
  employee_id INT,
  department_id INT,
  start_date DATE,
  end_date DATE,
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
  FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- 1. Да се реализират примерни insert-a в тази таблица
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1001, 2, 205, '2020-01-01', '2022-09-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1002, 3, 203, '2020-01-01', '2022-09-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1005, 4, 205, '2020-01-01', '2022-09-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1004, 5, 201, '2020-01-01', '2022-09-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1006, 5, 203, '2020-01-01', '2022-02-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1007, 12, 201, '2022-12-01', '2023-01-01');


-- 2. Да се реализира листинг на служителите, които са работили в повече
-- от един отдел в рамките на последните два месеца
SELECT e.first_name, e.surname, m.department_id
FROM Employees e
JOIN EmployeeTraffic m ON e.employee_id = m.employee_id
WHERE m.end_date > SYSDATE - INTERVAL '2' MONTH;

-- 3. Да се реализира листинг на служителите които са работили само в
-- един отдел откакто са част от структурата на компанията.
SELECT e.first_name, e.surname, m.department_id
FROM Employees e
JOIN EmployeeTraffic m ON e.employee_id = m.employee_id
GROUP BY e.employee_id, e.first_name, e.surname, m.department_id
HAVING COUNT(*) = 1;

-- ============================ --

-- Бизнес заявки част 3 --

ALTER TABLE Employees ADD status VARCHAR(255);
UPDATE Employees SET status = 'fired' WHERE employee_id = 23;
UPDATE Employees SET status = 'maternity_leave' WHERE employee_id = 45;
UPDATE Employees SET status = 'leave' WHERE employee_id = 35;
UPDATE Employees SET status = 'sick' WHERE employee_id = 15;
UPDATE Employees SET status = 'fired' WHERE employee_id = 78;
UPDATE Employees SET status = 'fired' WHERE employee_id = 79;


-- 1. Да се реализира листинг показващ всички служители които са били
-- уволнени от компанията
SELECT employee_id, first_name, surname, status FROM Employees WHERE status = 'fired';

-- 2. Да се реализира листинг на всички служители които са в майчинство
-- в момента.
SELECT employee_id, first_name, surname, status FROM Employees WHERE status = 'maternity_leave';


-- 3. Да се реализира листинг на всички служители които са в отпуска
-- / болничен в момента
SELECT employee_id, first_name, surname, status FROM Employees WHERE status IN ('leave', 'sick');

-- 4. Намерете всички служители които нямат ръководител
SELECT e.first_name, e.surname
FROM Employees e
LEFT JOIN Supervisors s ON e.employee_id = s.employee_id
WHERE s.supervisor_id IS NULL;

-- 5. Намерете всички старши служители които получават заплата по висока
-- от 5000 лв. Подредете ги в обратен азбучен ред, като се има предвид
-- тяхното първо име.
SELECT e.first_name, e.surname, e.salary
FROM Employees e
WHERE e.years_of_service >= 5 AND e.salary > 5000
ORDER BY e.first_name DESC;

-- 6. Намерете петимата най-високоплатени служители във всеки отдел.
-- Групирайте ги по отдели.
SELECT e.department, e.first_name, e.surname, e.salary
FROM Employees e
WHERE e.salary = (SELECT MAX(salary) FROM Employees WHERE department = e.department)
ORDER BY e.department, e.salary DESC;

-- 7. Намерете отдела или отделите, в които / които служителите
-- сумарно получават най-ниска заплата.
SELECT d.department_title, AVG(e.salary) AS avg_salary
FROM Departments d
JOIN Employees e ON d.department_id = e.department
GROUP BY d.department_title
HAVING AVG(e.salary) = (SELECT MIN(AVG(e.salary)) FROM Employees e GROUP BY e.department)
ORDER BY avg_salary ASC;

-- 8.Намерете средната заплата във всеки отдел, групирайте по средна
-- заплата и отдел
SELECT d.department_title, AVG(e.salary) AS avg_salary
FROM Departments d
JOIN Employees e ON d.department_id = e.department
GROUP BY d.department_title
ORDER BY avg_salary DESC;

-- ============================ --

-- Бизнес заявки част 4 --

UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 101;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 104;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 131;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 150;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 151;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 166;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 119;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 199;


-- 1. Да се изведат всички клиенти които имат сметки във валута. ( различна
-- от BGN )
SELECT c.customer_id,  c.first_name, c.surname, a.currency
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.currency != 'BGN';

-- 2. Да се изведат всички клиенти които имат сметки с нулево парично
-- салдо. Напълно празни.
SELECT c.first_name, c.surname, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.balance = 0;

-- Да се добави название на сметката на всеки клиент. Названието на
-- сметката му, е името на клиента последвано от думата сметка и
-- валутата на сметката. Актуализирайте всички клиенти.
ALTER TABLE Accounts ADD account_name VARCHAR(255);

UPDATE Accounts
SET account_name = (SELECT c.first_name || ' ' || c.surname || ' ' || 'сметка' || ' ' || currency FROM Customers c WHERE c.customer_id = Accounts.customer_id);

SELECT * FROM Accounts;

-- ============================ --

-- Функционална част

-- 1. Разработка на модул за добавяне, премахване, променяне и
-- извеждане (CRUD) на потребители (клиенти).
CREATE OR REPLACE PACKAGE customers_pkg AS

    TYPE customer_info_type IS RECORD (
        first_name VARCHAR2(255),
        surname VARCHAR2(255),
        additional_name VARCHAR2(255),
        address VARCHAR2(255),
        mobile_phone VARCHAR2(255),
        email VARCHAR2(255)
    );
    -- добавяне на нов клиент
    PROCEDURE add_customer (first_name VARCHAR2, surname VARCHAR2, additional_name VARCHAR2, address VARCHAR2, mobile_phone VARCHAR2, email VARCHAR2);
    -- променяне на съществуващ клиент
    PROCEDURE update_customer (customer_id NUMBER, first_name VARCHAR2, surname VARCHAR2, additional_name VARCHAR2, address VARCHAR2, mobile_phone VARCHAR2, email VARCHAR2);
    -- премахване на клиент
    PROCEDURE delete_customer (customer_id NUMBER);

    FUNCTION get_customer (customer_id NUMBER) RETURN customer_info_type;

END customers_pkg;

    CREATE OR REPLACE PACKAGE BODY customers_pkg AS
    -- добавяне на нов клиент
    PROCEDURE add_customer (first_name VARCHAR2, surname VARCHAR2, additional_name VARCHAR2, address VARCHAR2, mobile_phone VARCHAR2, email VARCHAR2)
    AS
    BEGIN
        INSERT INTO Customers (first_name, surname,additional_name, address, mobile_phone, email)
        VALUES (first_name, surname, additional_name, address, mobile_phone, email);
        COMMIT;
    END add_customer;

    FUNCTION get_customer (id NUMBER)
    RETURN customer_info_type
    AS
        customer_info customer_info_type;
    BEGIN
        SELECT first_name, surname, additional_name, address, mobile_phone, email
        INTO customer_info
        FROM Customers
        WHERE id = customer_id;
        RETURN customer_info;
    END get_customer;

    -- премахване на клиент
    PROCEDURE remove_customer (id NUMBER)
    AS
    BEGIN
        DELETE FROM Customers
        WHERE id = customer_id;
        COMMIT;
    END remove_customer;

    -- променяне на съществуващ клиент
    PROCEDURE modify_customer (id NUMBER, first_name VARCHAR2, surname VARCHAR2, additional_name VARCHAR2, address VARCHAR2, mobile_phone VARCHAR2, email VARCHAR2)
    AS
    BEGIN
        UPDATE Customers
        SET first_name = first_name, surname = surname, additional_name = additional_name, address = address, mobile_phone = mobile_phone, email = email
        WHERE id = customer_id;
        COMMIT;
    END modify_customer;
END customers_pkg;


-- 2. Разработка на модул за добавяне, премахване, променяне и
-- извеждане (CRUD) на сметки.
CREATE OR REPLACE PACKAGE accounts_pkg AS

    TYPE account_info_type IS RECORD (
        account_number VARCHAR2(255),
        balance NUMBER,
        currency VARCHAR2(255)
    );

    -- добавяне на нова сметка
    PROCEDURE add_account (account_number VARCHAR2, balance NUMBER, currency VARCHAR2);

    FUNCTION get_account (account_number VARCHAR2) RETURN account_info_type;

    -- премахване на сметка
    PROCEDURE remove_account (account_number VARCHAR2);

    -- променяне на съществуваща сметка
    PROCEDURE modify_account (account_number VARCHAR2, balance NUMBER, currency VARCHAR2);

END accounts_pkg;

    CREATE OR REPLACE PACKAGE BODY accounts_pkg AS

    -- добавяне на нова сметка
    PROCEDURE add_account (account_number VARCHAR2, balance NUMBER, currency VARCHAR2)
    AS
    BEGIN
        INSERT INTO Accounts (account_number, balance, currency)
        VALUES (account_number, balance, currency);
        COMMIT;
    END add_account;

    FUNCTION get_account (account_number VARCHAR2)
    RETURN account_info_type
    AS
        account_info account_info_type;
    BEGIN
        SELECT account_number, balance, currency
        INTO account_info
        FROM Accounts
        WHERE account_number = account_number;
        RETURN account_info;
    END get_account;

    -- премахване на сметка
    PROCEDURE remove_account (account_number VARCHAR2)
    AS
    BEGIN
        DELETE FROM Accounts
        WHERE account_number = account_number;
        COMMIT;
    END remove_account;

    -- променяне на съществуваща сметка
    PROCEDURE modify_account (account_number VARCHAR2, balance NUMBER, currency VARCHAR2)
    AS
    BEGIN
        UPDATE Accounts
        SET balance = balance, currency = currency
        WHERE account_number = account_number;
        COMMIT;
    END modify_account;

END accounts_pkg;


-- 5. Да се имплементира начин проследяване на промените един от модулите.
-- за целта ще използвам отделна LOGS таблица, която ще следи за промени в другите таблици
CREATE TABLE LOGS (
    id NUMBER,
    table_name VARCHAR2(255),
    action VARCHAR2(255),
    pk_value VARCHAR2(255),
    old_data CLOB,
    new_data CLOB,
    change_date TIMESTAMP
);

-- Tригери за автоматично вмъкване на данни в таблицата LOGS, когато се правят промени в други таблици.

CREATE OR REPLACE TRIGGER CUSTOMERS_INSERT_LOGS
AFTER INSERT ON Customers
FOR EACH ROW
DECLARE
    new_data CLOB;
BEGIN
    new_data := sys.dbms_debug_vc2coll(to_char(:new.first_name) || ',' || to_char(:new.surname)|| ',' || to_char(:new.additional_name) || ',' || to_char(:new.address) || ',' || to_char(:new.mobile_phone) || ',' || to_char(:new.email));
    INSERT INTO LOGS (table_name, action, pk_value, new_data, change_date)
    VALUES ('Customers', 'INSERT', to_char(:new.customer_id), new_data, systimestamp);
END;

CREATE OR REPLACE TRIGGER CUSTOMERS_UPDATE_LOGS
AFTER UPDATE ON Customers
FOR EACH ROW
DECLARE
    old_data CLOB;
    updated_data CLOB;
BEGIN
    old_data := sys.dbms_debug_vc2coll(to_char(:old.first_name) || ',' || to_char(:old.surname) || ',' || to_char(:old.additional_name) || ',' || to_char(:old.address) || ',' || to_char(:old.mobile_phone) || ',' || to_char(:old.email));
    updated_data := sys.dbms_debug_vc2coll(to_char(:new.first_name) || ',' || to_char(:new.surname) || ',' || to_char(:new.additional_name) || ',' || to_char(:new.address) || ',' || to_char(:new.mobile_phone) || ',' || to_char(:new.email));
    INSERT INTO LOGS (table_name, action, pk_value, new_data, change_date)
    VALUES ('Customers', 'UPDATE', to_char(:new.customer_id), new_data, systimestamp);
END;
