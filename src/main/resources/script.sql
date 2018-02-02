USE test;
DROP TABLE IF EXISTS book;
CREATE TABLE book (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AUTHOR` varchar(255) NOT NULL,
  `DATEOFCREATION` datetime DEFAULT CURRENT_TIMESTAMP,
  `DESCRIPTION` varchar(1000) DEFAULT NULL,
  `ISBN` varchar(20) NOT NULL,
  `PRINTYEAR` int(11) NOT NULL,
  `READALREADY` bit(1) DEFAULT 0,
  `TITLE` varchar(100) NOT NULL,
  `ADRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
  COLLATE='utf8_general_ci';
INSERT INTO book (`AUTHOR`,`TITLE`,`DESCRIPTION`,`ISBN`,`PRINTYEAR`,`ADRESS`)
VALUES ("Пушкин А.С.","Капитанская дочь","«Капита́нская до́чка» — исторический роман Александра Пушкина, действие которого происходит во время восстания Емельяна Пугачёва","1669532",1836,"http://rvb.ru/pushkin/01text/06prose/01prose/0869.htm"),("Пушкин А.С.","Пиковая Дама","«Пи́ковая да́ма» — повесть Александра Сергеевича Пушкина с мистическими элементами, послужившая источником фабулы одноимённой оперы П. И. Чайковского.","00000002",1834,"http://rvb.ru/pushkin/01text/06prose/01prose/0866.htm"),
  ("Пушкин А.С.","Руслан и Людмила","«Русла́н и Людми́ла» — первая законченная поэма Александра Сергеевича Пушкина; волшебная сказка, вдохновлённая древнерусскими былинами. ","00000005",1820,"http://rvb.ru/pushkin/01text/02poems/01poems/0784.htm"),("Пушкин А.С.","Воспоминания в Царском Селе","«Воспомина́ния в Ца́рском Селе́» — стихотворение 15-летнего Пушкина, известное не столько своим содержанием, сколько одобрением Гавриила Державина. ","00000006",1815,"http://rvb.ru/pushkin/01text/01versus/01lyceum/0001.htm"),
("Лермантов М. Ю.","Герой нашего времени","«Геро́й на́шего вре́мени» — первый в русской прозе психологический роман, написанный Михаилом Юрьевичем Лермонтовым. Классика русской литературы. Впервые роман был издан в Санкт-Петербурге в типографии Ильи Глазунова и Кº в 1840 г. в 2 книгах.","00000003",1840,"http://ilibrary.ru/text/12/p.1/index.html"),("Лермонтов М. Ю.","Мцыри","«Мцы́ри» — романтическая поэма М. Ю. Лермонтова, написанная в 1839 году и опубликованная в 1840 году в единственном прижизненном издании поэта — сборнике «Стихотворения М. Лермонтова». ","00000004",1840,"http://ilibrary.ru/text/991/p.1/index.html"),
("Лермантов М. Ю.","Демон","«Демон» — поэма Михаила Юрьевича Лермонтова, над которой поэт работал в течение десяти лет — с 1829 по 1839 год.","00000007",1842,"http://ilibrary.ru/text/1149/p.1/index.html"),("Лермантов М. Ю.","Смерть поэта","«Смерть поэ́та» — стихотворение Михаила Лермонтова о трагической гибели Александра Сергеевича Пушкина и вине общества в смерти Поэта.","00000008",1852,"http://www.all-poetry.ru/stih386.html"),
("Толстой Л. Н.","Война и мир","«Война́ и мир» — роман-эпопея Льва Николаевича Толстого, описывающий русское общество в эпоху войн против Наполеона в 1805—1812 годах.","00000009",1867,"http://ilibrary.ru/text/11/index.html"),("Толстой Л. Н.","Анна Каренина","«А́нна Каре́нина» — роман Льва Толстого о трагической любви замужней дамы Анны Карениной и блестящего офицера Вронского на фоне счастливой семейной жизни дворян Константина Лёвина и Кити Щербацкой.","00000010",1877,"http://ilibrary.ru/text/1099/index.html"),
("Толстой Л. Н.","Смерть Ивана Ильича","«Смерть Ива́на Ильича́» — повесть Л. Н. Толстого, над которой он работал с 1882 по 1886 годы, внося последние штрихи уже на стадии корректуры. В произведении рассказывается о мучительном умирании судейского чиновника средней руки.","00000011",1886,"http://ilibrary.ru/text/7/p.1/index.html"),("Толстой Л. Н.","Исповедь","«И́споведь» — автобиографическое произведение Льва Толстого, написанное в конце 1870-х — начале 1880-х годов и впервые опубликованное в 1884 году в Женеве.","00000012",1882,"http://az.lib.ru/t/tolstoj_lew_nikolaewich/text_0440.shtml"),
("Гоголь Н. В.","Вий","«Вий» — мистическая повесть Н.В. Гоголя, впервые опубликованная в его сборнике «Миргород». Название повести — это имя славянского демонического существа мужского пола, с которым связан сюжет.","00000013",1835,"http://ilibrary.ru/text/1070/p.15/index.html"),("Гоголь Н. В.","Мертвые души","«Мёртвые ду́ши» — произведение Николая Васильевича Гоголя, жанр которого сам автор обозначил как поэму. Изначально задумано как трёхтомное произведение. Первый том был издан в ","00000014",1842,"http://ilibrary.ru/text/78/index.html"),
("Гоголь Н. В.","Тарас Бульба","«Тара́с Бу́льба» — повесть Николая Васильевича Гоголя, входит в цикл «Миргород». При подготовке черновой рукописи к печати Гоголем были внесены многочисленные исправления.","00000015",1835,"http://exlibris.org.ua/text/taras_bulba.html"),("Гоголь Н. В.","Страшная месть","«Стра́шная месть» — повесть Николая Васильевича Гоголя, входящая в состав сборника «Вечера на хуторе близ Диканьки». Приблизительно датируется летом — началом осени 1831 года. ","00000016",1832,"http://ilibrary.ru/text/1088/p.25/index.html"),
("Стивен Кинг","Сияние","«Сия́ние» — роман американского писателя Стивена Кинга, написанный в жанрах психологического ужаса и готической литературы, впервые опубликованный в 1977 году издательством «Doubleday».","00000017",1977,"http://knizhnik.org/stiven-king/sijanie/1"),("Стивен Кинг","Оно","«Оно́» — роман американского писателя Стивена Кинга, написанный в жанре ужасов, впервые опубликованный в 1986 году издательством Viking Press.","00000018",1986,"http://loveread.ec/read_book.php?id=1635&p=1"),
("Стивен Кинг","Кэри","«Кэ́рри» — первый опубликованный роман американского писателя Стивена Кинга, написанный в жанре мистического ужаса. Произведение было выпущено в 1974 году издательством Doubleday.","00000019",1974,"http://loveread.ec/read_book.php?id=1464&p=1"),("Стивен Кинг","Мизэри","«Ми́зери» — роман американского писателя Стивена Кинга, написанный в жанре психологического триллера. Впервые опубликован в 1987 году издательством Viking Press.","00000020",1987,"http://loveread.ec/read_book.php?id=1447&p=1"),
("Стивен Кинг","Жребий","«Жребий» — роман американского писателя Стивена Кинга. Салимов Удел — название вымышленного городка, где происходит действие романа. Салем — сокр. от Иерусалим","00000021",1975,"http://www.rulit.me/books/zhrebij-read-135547-1.html"),("Стивен Кинг","Противостояние","«Противостояние» — роман американского писателя Стивена Кинга, написанный в жанре постапокалипсиса с элементами фантастики и ужасов, впервые опубликованный в 1978 году издательством Doubleday.","00000022",1978,"http://loveread.ec/read_book.php?id=17872&p=1"),
("Джоан Роулинг","Гарри Поттер и философский камень","«Га́рри По́ттер и филосо́фский ка́мень», в США была издана под названием «Гарри Поттер и колдовской камень» — первый роман в серии книг про юного волшебника Гарри Поттера, написанный Дж. К. Роулинг. ","00000023",1997,"http://librebook.me/harry_potter_and_the_sorcerer_s_stone/vol1/1"),("Джоан Роулинг","Гарри Поттер и Тайная комната","«Га́рри По́ттер и Та́йная ко́мната» — второй роман в серии книг про юного волшебника Гарри Поттера, написанный Джоан Роулинг. Книга рассказывает о втором учебном годе в школе чародейства и волшебства Хогвартс.","00000024",1998,"https://libreed.ru/garri-potter-i-tajnaya-komnata.html/2"),
("Джоан Роулинг","Гарри Поттер и узник Азкабана","Гарри Поттер и узник Азкабана — третья книга из серии романов о Гарри Поттере.","00000025",1999,"http://loveread.ec/read_book.php?id=2319&p=1"),("Джоан Роулинг","Гарри Поттер и Кубок огня","Гарри Поттер и Кубок огня — четвёртая книга о приключениях Гарри Поттера, написанная английской писательницей Джоан Роулинг. В Англии опубликована в 2000 году. Книга получила премию «Хьюго» в 2001 году. ","00000026",2000,"http://loveread.ec/read_book.php?id=2320&p=1"),
("Джоан Роулинг","Гарри Поттер и Принц-полукровка","«Га́рри По́ттер и При́нц-полукро́вка» — шестая книга из серии романов Дж. К. Роулинг о волшебнике-подростке Гарри Поттере. В книге описывается шестой год обучения героев в Хогвартсе.","00000027",2005,"http://loveread.ec/read_book.php?id=2322&p=1"),("Джоан Роулинг","Гарри Поттер и Дары Смерти","«Гарри Поттер и Дары Смерти» — седьмая книга в серии романов Дж. К. Роулинг о Гарри Поттере.","00000028",2007,"http://loveread.ec/read_book.php?id=2323&p=1"),
("Достоевский Ф. М.","Преступление и наказание","«Преступление и наказание» — социально-психологический и социально-философский роман Фёдора Михайловича Достоевского, над которым писатель работал в 1865—1866 годах. Впервые опубликован в 1866 году в журнале «Русский вестник».","00000029",1866,"http://ilibrary.ru/text/69/p.1/index.html"),("Достоевский Ф. М.","Идиот","«Идио́т» — роман Фёдора Михайловича Достоевского, впервые опубликованный в номерах журнала «Русский вестник» за 1868 год, включен в список 100 лучших книг Норвежского книжного клуба 2002 года.","00000030",1869,"http://ilibrary.ru/text/94/index.html"),
("Достоевский Ф. М.","Братья Карамазовы","«Бра́тья Карама́зовы» — последний роман Ф. М. Достоевского, который автор писал два года. Роман был напечатан частями в журнале «Русский вестник». Достоевский задумывал роман как первую часть эпического романа «История Великого грешника».","00000031",1880,"http://ilibrary.ru/text/1199/index.html"),("Достоевский Ф. М.","Бесы","«Бе́сы» — шестой роман Фёдора Михайловича Достоевского, изданный в 1871—1872 годах.","00000032",1872,"http://www.ilibrary.ru/text/1544/p.1/index.html"),
("Грин А.С.","Аллые Паруса","«А́лые паруса́» — повесть-феерия Александра Грина о непоколебимой вере и всепобеждающей, возвышенной мечте, о том, что каждый может сделать для близкого чудо. Написана в 1916—1922 годах.","00000033",1923,"http://ilibrary.ru/text/1845/index.html"),("Грин А.С.","Бегущая по волнам","«Бегущая по волна́м» — роман Александра Грина 1928 года, одно из последних крупных произведений писателя. Написан в романтическом жанре — это роман о Несбывшемся; современные критики отнесли бы книгу к жанру фэнтези. ","00000034",1928,"http://loveread.ec/read_book.php?id=18135&p=1"),
("Грин А.С.","Блистающий мир","«Блиста́ющий мир» — роман Александра Грина, написанный в 1921—1923 годах. Впервые опубликован в 1924 году в ленинградском журнале «Красная нива».","00000035",1924,"http://loveread.ec/read_book.php?id=18136&p=1"),("Джон Грин","Виноваты звезды","«Виноваты звёзды» — шестой роман американского писателя Джона Грина, который был опубликован в 2012 году. Был включён в список бестселлеров по версии Publishers Weekly в 2013 и 2014 годах.","00000036",2012,"http://loveread.ec/read_book.php?id=26302&p=1"),
("Джон Грин","В поисках Аляски","«В поисках Аляски» — роман Джона Грина, опубликованный в марте 2005 года.","00000037",2005,"http://loveread.ec/read_book.php?id=15524&p=1"),("Джек Лондон","Зов предков","«Зов пре́дков» — роман американского писателя Джека Лондона, опубликованный в 1903 г. Роман относится к ранним работам Джека Лондона. Часто его классифицируют как детскую литературу, так как главным действующим героем является пёс.","00000038",1903,"http://loveread.ec/read_book.php?id=6075&p=1"),
("Джек Лондон","Белый клык","«Белый Клык» — приключенческая повесть Джека Лондона, главным героем которого является полусобака-полуволк по кличке Белый Клык. Впервые произведение было опубликовано в нескольких номерах журнала The Outing Magazine с мая по октябрь 1906 года.","00000039",1906,"http://loveread.ec/read_book.php?id=4450&p=1"),("Джек Лондон","Морской волк","«Морской волк» — роман Джека Лондона, написанный им в 1904 году.","00000040",1904,"http://loveread.ec/read_book.php?id=4457&p=1");