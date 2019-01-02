-- Inserimento utenti.
-- Carico la funzione pgcrypto per criptare la password in md5 nel database.
CREATE EXTENSION pgcrypto;
INSERT INTO utente VALUES (
  'MATDES86B12I854K',
	'mattia.desiderio',
	'Mattia',
	'Desiderio',
	'1996-04-05',
	'Italia',
	'Modena',
	'230925@studenti.unimore.it',
	NULL,
  crypt('miapassword', gen_salt('md5'))
);

INSERT INTO utente VALUES (
  'GIOGIB84H62C993O',
	'gibs',
	'Giorgia',
	'Gibellini',
	'1997-07-05',
	'Italia',
	'Modena',
	'gibba@hotmail.it',
	NULL,
  crypt('123qwe', gen_salt('md5'))
);

-- Inserimento serie tv - stagione - puntata: The Flash
INSERT INTO serietv VALUES ('The Flash',2014,0,'«Mi chiamo Barry Allen e sono l''uomo più veloce del mondo. Da piccolo vidi mia madre morire per mano di qualcosa di impossibile, mio padre fu accusato del suo omicidio. Poi un incidente trasformò me in qualcosa di impossibile... Io sono Flash!» ');

INSERT INTO stagione VALUES (1,'The Flash',2014,2015,0);
INSERT INTO stagione VALUES (2,'The Flash',2014,2016,0);
INSERT INTO stagione VALUES (3,'The Flash',2014,2017,0);
INSERT INTO stagione VALUES (4,'The Flash',2014,2018,0);

INSERT INTO puntata VALUES (1,1,'The Flash',2014,'Una città di eroi',43,NULL);
INSERT INTO puntata VALUES (2,1,'The Flash',2014,'L''uomo più veloce del mondo',43,NULL);
INSERT INTO puntata VALUES (3,1,'The Flash',2014,'The Mist',43,NULL);
INSERT INTO puntata VALUES (4,1,'The Flash',2014,'Capitan Cold',43,NULL);
INSERT INTO puntata VALUES (5,1,'The Flash',2014,'Plastique',43,NULL);
INSERT INTO puntata VALUES (6,1,'The Flash',2014,'Girder',43,NULL);
INSERT INTO puntata VALUES (7,1,'The Flash',2014,'Blackout',43,NULL);
INSERT INTO puntata VALUES (8,1,'The Flash',2014,'Flash vs. Arrow',43,NULL);
INSERT INTO puntata VALUES (9,1,'The Flash',2014,'Firestorm',43,NULL);
INSERT INTO puntata VALUES (10,1,'The Flash',2014,'Heat Wave',43,NULL);
INSERT INTO puntata VALUES (11,1,'The Flash',2014,'Il pifferaio',43,NULL);
INSERT INTO puntata VALUES (12,1,'The Flash',2014,'Peek-a-Boo',43,NULL);
INSERT INTO puntata VALUES (13,1,'The Flash',2014,'L''uomo nucleare',43,NULL);
INSERT INTO puntata VALUES (14,1,'The Flash',2014,'Gorilla Grodd',43,NULL);
INSERT INTO puntata VALUES (15,1,'The Flash',2014,'Il mago del tempo',43,NULL);
INSERT INTO puntata VALUES (16,1,'The Flash',2014,'Lisa Snart',43,NULL);
INSERT INTO puntata VALUES (17,1,'The Flash',2014,'Trickster',43,NULL);
INSERT INTO puntata VALUES (18,1,'The Flash',2014,'Bug-Eyed Bandit',43,NULL);
INSERT INTO puntata VALUES (19,1,'The Flash',2014,'Everyman',43,NULL);
INSERT INTO puntata VALUES (20,1,'The Flash',2014,'La trappola',43,NULL);
INSERT INTO puntata VALUES (21,1,'The Flash',2014,'Grodd vive',43,NULL);
INSERT INTO puntata VALUES (22,1,'The Flash',2014,'I nemici',43,NULL);
INSERT INTO puntata VALUES (23,1,'The Flash',2014,'Wormhole',43,NULL);

INSERT INTO puntata VALUES (1,2,'The Flash',2014,'L''uomo che ha salvato Central City',43,NULL);
INSERT INTO puntata VALUES (2,2,'The Flash',2014,'Flash dei due mondi',43,NULL);
INSERT INTO puntata VALUES (3,2,'The Flash',2014,'Famiglia di nemici',43,NULL);
INSERT INTO puntata VALUES (4,2,'The Flash',2014,'La furia di Firestorm',43,NULL);
INSERT INTO puntata VALUES (5,2,'The Flash',2014,'Dottor Light',43,NULL);
INSERT INTO puntata VALUES (6,2,'The Flash',2014,'Zoom',43,NULL);
INSERT INTO puntata VALUES (7,2,'The Flash',2014,'Il ritorno di Grodd',43,NULL);
INSERT INTO puntata VALUES (8,2,'The Flash',2014,'Leggende di oggi',43,NULL);
INSERT INTO puntata VALUES (9,2,'The Flash',2014,'Ricatto di Natale',43,NULL);
INSERT INTO puntata VALUES (10,2,'The Flash',2014,'Energia potenziale',43,NULL);
INSERT INTO puntata VALUES (11,2,'The Flash',2014,'Il ritorno dell''Anti-Flash',43,NULL);
INSERT INTO puntata VALUES (12,2,'The Flash',2014,'Tar-Pit',43,NULL);
INSERT INTO puntata VALUES (13,2,'The Flash',2014,'Benvenuti su Terra-Due',43,NULL);
INSERT INTO puntata VALUES (14,2,'The Flash',2014,'Fuga da Terra-Due',43,NULL);
INSERT INTO puntata VALUES (15,2,'The Flash',2014,'King Shark',43,NULL);
INSERT INTO puntata VALUES (16,2,'The Flash',2014,'Trajectory',43,NULL);
INSERT INTO puntata VALUES (17,2,'The Flash',2014,'Flash Back',43,NULL);
INSERT INTO puntata VALUES (18,2,'The Flash',2014,'Versus Zoom',43,NULL);
INSERT INTO puntata VALUES (19,2,'The Flash',2014,'Ritorno alle origini',43,NULL);
INSERT INTO puntata VALUES (20,2,'The Flash',2014,'Rupture',43,NULL);
INSERT INTO puntata VALUES (21,2,'The Flash',2014,'Il dinosauro in fuga',43,NULL);
INSERT INTO puntata VALUES (22,2,'The Flash',2014,'Invincibile',43,NULL);
INSERT INTO puntata VALUES (23,2,'The Flash',2014,'Sfida finale',43,NULL);

INSERT INTO puntata VALUES (1,3,'The Flash',2014,'Flashpoint',43,NULL);
INSERT INTO puntata VALUES (2,3,'The Flash',2014,'Dottor Alchemy',43,NULL);
INSERT INTO puntata VALUES (3,3,'The Flash',2014,'Magenta',43,NULL);
INSERT INTO puntata VALUES (4,3,'The Flash',2014,'I nuovi nemici',43,NULL);
INSERT INTO puntata VALUES (5,3,'The Flash',2014,'Il mostro',43,NULL);
INSERT INTO puntata VALUES (6,3,'The Flash',2014,'L''ombra',43,NULL);
INSERT INTO puntata VALUES (7,3,'The Flash',2014,'Killer Frost',43,NULL);
INSERT INTO puntata VALUES (8,3,'The Flash',2014,'Invasione!',43,NULL);
INSERT INTO puntata VALUES (9,3,'The Flash',2014,'Il presente',43,NULL);
INSERT INTO puntata VALUES (10,3,'The Flash',2014,'Plunder',43,NULL);
INSERT INTO puntata VALUES (11,3,'The Flash',2014,'Vivo o morto',43,NULL);
INSERT INTO puntata VALUES (12,3,'The Flash',2014,'Intoccabile',43,NULL);
INSERT INTO puntata VALUES (13,3,'The Flash',2014,'Attacco a Gorilla City',43,NULL);
INSERT INTO puntata VALUES (14,3,'The Flash',2014,'Attacco a Central City',43,NULL);
INSERT INTO puntata VALUES (15,3,'The Flash',2014,'La collera di Savitar',43,NULL);
INSERT INTO puntata VALUES (16,3,'The Flash',2014,'Dentro la Forza della Velocità',43,NULL);
INSERT INTO puntata VALUES (17,3,'The Flash',2014,'Duetto',43,NULL);
INSERT INTO puntata VALUES (18,3,'The Flash',2014,'Abra Kadabra',43,NULL);
INSERT INTO puntata VALUES (19,3,'The Flash',2014,'Flash eterno',43,NULL);
INSERT INTO puntata VALUES (20,3,'The Flash',2014,'So chi sei',43,NULL);
INSERT INTO puntata VALUES (21,3,'The Flash',2014,'Causa ed effetto',43,NULL);
INSERT INTO puntata VALUES (22,3,'The Flash',2014,'Infantino Street',43,NULL);
INSERT INTO puntata VALUES (23,3,'The Flash',2014,'La linea del traguardo',43,NULL);

INSERT INTO puntata VALUES (1,4,'The Flash',2014,'La rinascita di Flash',43,NULL);
INSERT INTO puntata VALUES (2,4,'The Flash',2014,'Segnali misti',43,NULL);
INSERT INTO puntata VALUES (3,4,'The Flash',2014,'La fortuna è donna',43,NULL);
INSERT INTO puntata VALUES (4,4,'The Flash',2014,'Plastic Man',43,NULL);
INSERT INTO puntata VALUES (5,4,'The Flash',2014,'Hashtag femminismo',43,NULL);
INSERT INTO puntata VALUES (6,4,'The Flash',2014,'Harry, ti presento Harry...',43,NULL);
INSERT INTO puntata VALUES (7,4,'The Flash',2014,'Il Pensatore',43,NULL);
INSERT INTO puntata VALUES (8,4,'The Flash',2014,'Crisi su Terra-X - III Parte',43,NULL);
INSERT INTO puntata VALUES (9,4,'The Flash',2014,'Non correre',43,NULL);
INSERT INTO puntata VALUES (10,4,'The Flash',2014,'Processo a Flash',43,NULL);
INSERT INTO puntata VALUES (11,4,'The Flash',2014,'L''uomo allungabile',43,NULL);
INSERT INTO puntata VALUES (12,4,'The Flash',2014,'Tesoro, mi si è ristretto il Team Flash',43,NULL);
INSERT INTO puntata VALUES (13,4,'The Flash',2014,'La vera natura',43,NULL);
INSERT INTO puntata VALUES (14,4,'The Flash',2014,'Soggetto 9',43,NULL);
INSERT INTO puntata VALUES (15,4,'The Flash',2014,'Enter Flashtime',43,NULL);
INSERT INTO puntata VALUES (16,4,'The Flash',2014,'Corri, Iris, Corri',43,NULL);
INSERT INTO puntata VALUES (17,4,'The Flash',2014,'Null and Annoyed',43,NULL);
INSERT INTO puntata VALUES (18,4,'The Flash',2014,'Lose Yourself',43,NULL);
INSERT INTO puntata VALUES (19,4,'The Flash',2014,'Fury Rogue',43,NULL);
INSERT INTO puntata VALUES (20,4,'The Flash',2014,'Therefore She is',43,NULL);
INSERT INTO puntata VALUES (21,4,'The Flash',2014,'Harry e gli Harrison',43,NULL);
INSERT INTO puntata VALUES (22,4,'The Flash',2014,'Pensa velocemente',43,NULL);
INSERT INTO puntata VALUES (23,4,'The Flash',2014,'Noi siamo Flash',43,NULL);

-- Inserimento serie tv - stagione - puntata: Stranger Things
INSERT INTO serietv VALUES ('Stranger Things',2016,0,'Succedono strane cose a Hawkins nell''Indiana, dove l''improvvisa scomparsa di un ragazzino porta alla luce una coetanea dai poteri ultraterreni.057281');

INSERT INTO stagione VALUES (1,'Stranger Things',2016,2016,0);
INSERT INTO stagione VALUES (2,'Stranger Things',2016,2017,0);
INSERT INTO stagione VALUES (3,'Stranger Things',2016,2019,0);

INSERT INTO puntata VALUES (1,1,'Stranger Things',2016,'Capitolo primo: La scomparsa di Will Byers',49,'Di ritorno da casa di un amico, il giovane Will vede qualcosa di terrificante. Nel vicino laboratorio governativo si cela un oscuro segreto.');
INSERT INTO puntata VALUES (2,1,'Stranger Things',2016,'Capitolo due: La stramba di Maple Street',55,'Lucas, Mike e Dustin provano a parlare con la ragazza ritrovata nel bosco. Hopper interroga Joyce su un''inquietante telefonata.');
INSERT INTO puntata VALUES (3,1,'Stranger Things',2016,'Capitolo tre: Luci natalizie',52,'Nancy, sempre più preoccupata, cerca Barb e scopre che cosa ha fatto Jonathan. Joyce è convinta che Will stia cercando di comunicare con lei.');
INSERT INTO puntata VALUES (4,1,'Stranger Things',2016,'Capitolo quattro: Il corpo',50,'Rifiutando la morte del figlio, Joyce cerca di entrare in contatto con lui. I ragazzi sistemano Undici, mentre Nancy e Jonathan siglano un''improbabile alleanza.');
INSERT INTO puntata VALUES (5,1,'Stranger Things',2016,'Capitolo cinque: La pulce e l''acrobata',53,'Hopper entra nel laboratorio mentre Nancy e Jonathan affrontano la forza che ha preso Will. I ragazzi chiedono al signor Clarke come viaggiare in un''altra dimensione.');
INSERT INTO puntata VALUES (6,1,'Stranger Things',2016,'Capitolo sei: Il mostro',47,'Jonathan, in preda all''agitazione, cerca Nancy al buio ignorando la presenza di Steve. Hopper e Joyce scoprono la verità sugli esperimenti del laboratorio.');
INSERT INTO puntata VALUES (7,1,'Stranger Things',2016,'Capitolo sette: La vasca da bagno',42,'Undici cerca di raggiungere Will, mentre Lucas avverte che "i cattivi stanno arrivando". Nancy e Jonathan mostrano alla polizia le riprese di Jonathan.');
INSERT INTO puntata VALUES (8,1,'Stranger Things',2016,'Capitolo otto: Il sottosopra',55,'Il dottor Brenner trattiene Hopper e Joyce per interrogarli mentre i ragazzi aspettano con Undici in palestra. Nancy e Jonathan si preparano allo scontro a casa di Will.');

INSERT INTO puntata VALUES (1,2,'Stranger Things',2016,'Capitolo uno: Mad Max',48,'Mentre la città si prepara per Halloween, un rivale da record porta scompiglio in sala giochi e uno scettico Hopper ispeziona un campo di zucche marce.');
INSERT INTO puntata VALUES (2,2,'Stranger Things',2016,'Capitolo due: Dolcetto o scherzetto, matto',56,'Dopo la visione terribile di Will la notte di Halloween, Mike si chiede dove sia Undici. Nancy deve fare i conti con la verità su Barb.');
INSERT INTO puntata VALUES (3,2,'Stranger Things',2016,'Capitolo tre: Il girino',51,'Dustin adotta uno strano animaletto e Undici diventa sempre più impaziente. Animato da buone intenzioni, Bob sprona Will ad affrontare le sue paure.');
INSERT INTO puntata VALUES (4,2,'Stranger Things',2016,'Capitolo quattro: Will il saggio',46,'Mentre è malato, Will si apre con Joyce con conseguenze inquietanti. Hopper cerca di arrivare alla verità e Undici fa una scoperta sorprendente.');
INSERT INTO puntata VALUES (5,2,'Stranger Things',2016,'Capitolo cinque: Dig Dug',58,'Nancy e Jonathan scambiano teorie del complotto con un nuovo alleato, mentre Undici cerca una persona del passato. “Bob il cervellone” affronta un difficile problema.');
INSERT INTO puntata VALUES (6,2,'Stranger Things',2016,'Capitolo sei: La spia',51,'Il rapporto di Will con una forza oscura si rafforza, ma nessuno sa come fermarla. Intanto, Dustin e Steve stringono un legame improbabile.');
INSERT INTO puntata VALUES (7,2,'Stranger Things',2016,'Capitolo sette: La sorella perduta',45,'Alcune visioni paranormali avvicinano Undici a una banda di violenti reietti e a una ragazza rabbiosa dal passato oscuro.');
INSERT INTO puntata VALUES (8,2,'Stranger Things',2016,'Capitolo otto: Il Mind Flayer',47,'Un improbabile eroe si fa avanti quando i laboratori di Hawkins vengono chiusi, intrappolando Will e molte altre persone all''interno.');
INSERT INTO puntata VALUES (9,2,'Stranger Things',2016,'Capitolo nove: La porta',62,'Undici si organizza per portare a termine quanto ha cominciato, mentre i sopravvissuti passano all''azione contro la forza mostruosa che ha catturato Will.');


-- Inserimento serie tv - stagione - puntata: Tredici
INSERT INTO serietv VALUES ('Tredici',2017,0,'Dopo lo strano suicidio di un''adolescente, un suo compagno di classe riceve alcune audiocassette che rivelano il mistero dietro al tragico gesto.');

INSERT INTO stagione VALUES (1,'Tredici',2017,2017,0);
INSERT INTO stagione VALUES (2,'Tredici',2017,2018,0);

INSERT INTO puntata VALUES (1,1,'Tredici',2017,'Cassetta 1, parte A',54,'Mentre la scuola è in lutto per la morte di Hannah Baker, il suo amico Clay riceve alcune audiocassette con dei messaggi registrati da Hannah prima del suicidio.');
INSERT INTO puntata VALUES (2,1,'Tredici',2017,'Cassetta 1, parte B',52,'Hannah diventa amica di Jessica e Alex, due altri studenti appena arrivati. Justin non si presenta a scuola e la madre di Hannah fa una scoperta sconcertante.');
INSERT INTO puntata VALUES (3,1,'Tredici',2017,'Cassetta 2, parte A',57,'La gelosia e i pettegolezzi rovinano la vita ad Hannah. Mentre Alex affronta i propri rimpianti, i ragazzi spingono Clay a ubriacarsi.');
INSERT INTO puntata VALUES (4,1,'Tredici',2017,'Cassetta 2, parte B',57,'Hannah pensa che qualcuno la stia perseguitando e prepara una trappola. La madre di Hannah affronta il preside e Clay reagisce contro chi ha fatto del male ad Hannah.');
INSERT INTO puntata VALUES (5,1,'Tredici',2017,'Cassetta 3, parte A',59,'Hannah e Clay si trovano al ballo scolastico, ma un volgare pettegolezzo rovina l''atmosfera. Clay porta Courtney sulla tomba di Hannah.');
INSERT INTO puntata VALUES (6,1,'Tredici',2017,'Cassetta 3, parte B',52,'L''appuntamento di Hannah per San Valentino non va come previsto. Alex viene coinvolto in una rissa a scuola e deve affrontare il consiglio disciplinare.');
INSERT INTO puntata VALUES (7,1,'Tredici',2017,'Cassetta 4, parte A',54,'Durante un progetto di classe Hannah viene boicottata ancora una volta. Gli incubi riguardanti Hannah cominciano a tormentare Clay anche di giorno.');
INSERT INTO puntata VALUES (8,1,'Tredici',2017,'Cassetta 4, parte B',54,'Hannah viene ispirata da una lettura di poesie e decide di aprire il suo cuore. Tony parla con Clay della notte in cui Hannah è morta.');
INSERT INTO puntata VALUES (9,1,'Tredici',2017,'Cassetta 5, parte A',59,'Durante una festa d''estate Hannah assiste a un evento traumatico. Clay cerca di parlare con Justin, mentre Marcus lo avverte che il peggio deve ancora arrivare.');
INSERT INTO puntata VALUES (10,1,'Tredici',2017,'Cassetta 5, parte B',50,'Hannah è sconvolta e trova un passaggio per tornare a casa. Il comportamento di Jessica è sempre più instabile e Clay scopre la verità nascosta dietro a una disgrazia.');
INSERT INTO puntata VALUES (11,1,'Tredici',2017,'Cassetta 6, parte A',54,'Clay e Hannah diventano più intimi. Mentre Clay trascorre una notte straziante ad ascoltare la sua audiocassetta con Tony, la tensione esplode a casa di Bryce.');
INSERT INTO puntata VALUES (12,1,'Tredici',2017,'Cassetta 6, parte B',62,'Dopo aver litigato con i suoi genitori, Hannah finisce a una festa. Gli studenti ricevono dei mandati di comparizione e Justin è combattuto tra alleanze contrapposte.');
INSERT INTO puntata VALUES (13,1,'Tredici',2017,'Cassetta 7, parte A',60,'Hannah chiede aiuto al signor Porter, lo psicologo scolastico. Clay ascolta il nuovo nastro per Tony e valuta i prossimi passi da fare.');

INSERT INTO puntata VALUES (1,2,'Tredici',2017,'La prima Polaroid',60,'Cinque mesi dopo la morte di Hannah, la causa contro la Liberty approda in aula e Tyler è il primo a testimoniare. Clay trova una foto inquietante nel suo armadietto.');
INSERT INTO puntata VALUES (2,2,'Tredici',2017,'Due ragazze e un bacio',60,'Courtney prende una decisione coraggiosa. Il ricordo di Hannah rovina il rapporto tra Clay e Skye. L''ufficio dell''annuario viene devastato.');
INSERT INTO puntata VALUES (3,2,'Tredici',2017,'L''ubriacona',57,'Spaventati dalle minacce ricevute, Alex e Clay spingono Jessica a testimoniare contro Bryce. Clay chiede aiuto a Tony per trovare un potenziale testimone.');
INSERT INTO puntata VALUES (4,2,'Tredici',2017,'La seconda Polaroid',57,'Clay nasconde un segreto ai genitori. Preoccupato per la sua reputazione, Marcus mente in aula. Jessica e Alex saltano insieme la scuola.');
INSERT INTO puntata VALUES (5,2,'Tredici',2017,'La macchina tracciarighe',57,'Tyler e Cyrus accettano la loro condizione di outsider. Alex cerca disperatamente di ricordare. Ryan e la signora Baker analizzano le poesie di Hannah in cerca d''indizi.');
INSERT INTO puntata VALUES (6,2,'Tredici',2017,'Il sorriso alla fine del molo',58,'Clay cerca di capire dove sono state scattate le Polaroid. Justin si presenta a scuola. La rivelazione di Zach su Hannah coglie tutti di sorpresa.');
INSERT INTO puntata VALUES (7,2,'Tredici',2017,'La terza Polaroid',56,'Alex esplode contro Bryce. Marcus viene ricattato. Clay è chiamato a testimoniare sulla notte passata con Hannah. Jessica ha un flashback.');
INSERT INTO puntata VALUES (8,2,'Tredici',2017,'La bambina',57,'Quando i genitori di Hannah sono sotto investigazione, Jessica contatta la signora Baker. Justin lotta per restare pulito. Clay si riavvicina a Skye.');
INSERT INTO puntata VALUES (9,2,'Tredici',2017,'La pagina mancante',57,'Tyler esce con la sorella di Cyrus. Chloe affronta Bryce per le cassette. Jess si chiede se sia pronta per uscire con un ragazzo. Il professor Porter lotta con i rimorsi.');
INSERT INTO puntata VALUES (10,2,'Tredici',2017,'Un bel sorriso, stronze',55,'Tony si apre sul suo passato. Sheri escogita un piano per entrare nel club. Il professor Porter cerca di aiutare Justin. Zach e Bryce si scontrano.');
INSERT INTO puntata VALUES (11,2,'Tredici',2017,'Bryce e Chloe',58,'Dopo la testimonianza di Bryce, a scuola esplode il caos. Jessica racconta a Chloe del club. I ricordi finiscono per travolgere Alex.');
INSERT INTO puntata VALUES (12,2,'Tredici',2017,'La scatola di Polaroid',56,'Le minacce contro Clay e gli altri s’intensificano. Tyler affronta provvedimenti disciplinari. Justin testimonia contro Bryce, mettendo a rischio il suo futuro.');
INSERT INTO puntata VALUES (13,2,'Tredici',2017,'Addio',70,'Un mese dopo, le persone legate ad Hannah le rendono omaggio, confortandosi a vicenda. Intanto, una brutale aggressione spinge uno studente al limite.');


-- Inserimento serie tv - stagione - puntata: Wayward Pines
INSERT INTO serietv VALUES ('Wayward Pines',2015,0,'Mistery ambientato in una perfetta città americana. Adesso immaginate di non poter lasciare questo posto. Mai. Nessun contatto con l''esterno, nessuna via di fuga. Questa è Wayward Pines.');

INSERT INTO stagione VALUES (1,'Wayward Pines',2015,2015,0);
INSERT INTO stagione VALUES (2,'Wayward Pines',2015,2016,0);

INSERT INTO puntata VALUES (1,1,'Wayward Pines',2015,'Dove il paradiso è di casa',45,NULL);
INSERT INTO puntata VALUES (2,1,'Wayward Pines',2015,'Un piano di fuga',45,NULL);
INSERT INTO puntata VALUES (3,1,'Wayward Pines',2015,'La nostra città, la nostra legge',45,NULL);
INSERT INTO puntata VALUES (4,1,'Wayward Pines',2015,'Una nuova vita',45,NULL);
INSERT INTO puntata VALUES (5,1,'Wayward Pines',2015,'La verità',45,NULL);
INSERT INTO puntata VALUES (6,1,'Wayward Pines',2015,'Scelte',45,NULL);
INSERT INTO puntata VALUES (7,1,'Wayward Pines',2015,'Tradimento',45,NULL);
INSERT INTO puntata VALUES (8,1,'Wayward Pines',2015,'Il posto più bello sulla Terra',45,NULL);
INSERT INTO puntata VALUES (9,1,'Wayward Pines',2015,'Esecuzione',45,NULL);
INSERT INTO puntata VALUES (10,1,'Wayward Pines',2015,'Un nuovo inizio',45,NULL);

INSERT INTO puntata VALUES (1,2,'Wayward Pines',2015,'Linee nemiche',45,NULL);
INSERT INTO puntata VALUES (2,2,'Wayward Pines',2015,'Contro ogni regola',45,NULL);
INSERT INTO puntata VALUES (3,2,'Wayward Pines',2015,'C''era una volta a Wayward Pines',45,NULL);
INSERT INTO puntata VALUES (4,2,'Wayward Pines',2015,'Strategia di fuga',45,NULL);
INSERT INTO puntata VALUES (5,2,'Wayward Pines',2015,'Utopia',45,NULL);
INSERT INTO puntata VALUES (6,2,'Wayward Pines',2015,'L''imboscata',45,NULL);
INSERT INTO puntata VALUES (7,2,'Wayward Pines',2015,'Ogni anno, per duemila anni',45,NULL);
INSERT INTO puntata VALUES (8,2,'Wayward Pines',2015,'Il giorno del giudizio',45,NULL);
INSERT INTO puntata VALUES (9,2,'Wayward Pines',2015,'I prescelti',45,NULL);
INSERT INTO puntata VALUES (10,2,'Wayward Pines',2015,'La favola della buonanotte',45,NULL);

-- Inserimento case produttrici
INSERT INTO casa_produttrice VALUES ('Tredici',2017,'July Moon Productions');
INSERT INTO casa_produttrice VALUES ('Tredici',2017,'Kicked to the Curb Productions');
INSERT INTO casa_produttrice VALUES ('Tredici',2017,'Anonymous Content');
INSERT INTO casa_produttrice VALUES ('Tredici',2017,'Paramount Television');
INSERT INTO casa_produttrice VALUES ('Wayward Pines',2015,'FX Productions');
INSERT INTO casa_produttrice VALUES ('Stranger Things',2016,'Camp Hero Productions');
INSERT INTO casa_produttrice VALUES ('Stranger Things',2016,'21 Laps Entertainment');
INSERT INTO casa_produttrice VALUES ('Stranger Things',2016,'Monkey Massacre');
INSERT INTO casa_produttrice VALUES ('The Flash',2014,'Warner Bros. Television');
INSERT INTO casa_produttrice VALUES ('The Flash',2014,'DC Comics');


-- Inserimento emissione per ogni puntata (parziale)
INSERT INTO emissione VALUES ('Premium Action','2018-02-06 21:15:00',1,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-02-13 21:15:00',2,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-02-20 21:15:00',3,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-02-27 21:15:00',4,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-03-06 21:15:00',5,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-03-13 21:15:00',6,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-03-20 21:15:00',7,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-03-27 21:15:00',8,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-04-03 21:15:00',9,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-04-10 21:15:00',10,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-04-17 21:15:00',11,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-04-24 21:15:00',12,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-06-05 21:15:00',13,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-06-12 21:15:00',14,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-06-19 21:15:00',15,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-06-26 21:15:00',16,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-07-03 21:15:00',17,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-07-10 21:15:00',18,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-07-17 21:15:00',19,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-07-24 21:15:00',20,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-07-31 21:15:00',21,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-08-07 21:15:00',22,4,'The Flash',2014);
INSERT INTO emissione VALUES ('Premium Action','2018-08-14 21:15:00',23,4,'The Flash',2014);

INSERT INTO emissione VALUES ('Fox','2015-05-14 20:30:00',1,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2015-05-21 20:30:00',2,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2015-05-28 20:30:00',3,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2015-06-05 20:30:00',4,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2015-06-11 20:30:00',5,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2015-06-25 20:30:00',6,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2015-07-02 20:30:00',7,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2015-07-09 20:30:00',8,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2015-07-16 20:30:00',9,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2015-07-23 20:30:00',10,1,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-08-29 20:30:00',1,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-08-29 21:30:00',2,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-09-05 20:30:00',3,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-09-05 21:30:00',4,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-09-12 20:30:00',5,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-09-19 20:30:00',6,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-09-26 20:30:00',7,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-10-03 20:30:00',8,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-10-10 20:30:00',9,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Fox','2016-10-17 20:30:00',10,2,'Wayward Pines',2015);
INSERT INTO emissione VALUES ('Netflix','2017-10-27 00:00:00',1,2,'Stranger Things',2016);
INSERT INTO emissione VALUES ('Netflix','2018-05-18 00:00:00',1,2,'Tredici',2017);


-- Inserimento generi
INSERT INTO genere VALUES ('Animazione');
INSERT INTO genere VALUES ('Avventura');
INSERT INTO genere VALUES ('Azione');
INSERT INTO genere VALUES ('Biografico');
INSERT INTO genere VALUES ('Comico');
INSERT INTO genere VALUES ('Commedia');
INSERT INTO genere VALUES ('Documentari');
INSERT INTO genere VALUES ('Drammatico');
INSERT INTO genere VALUES ('Fantascienza');
INSERT INTO genere VALUES ('Fantasy');
INSERT INTO genere VALUES ('Horror');
INSERT INTO genere VALUES ('Thriller');
INSERT INTO genere VALUES ('Western');
INSERT INTO genere VALUES ('Supereroi');
INSERT INTO genere VALUES ('Giallo');
INSERT INTO genere VALUES ('Adolescenziale');

-- Assegnamento generi alle serie tv
INSERT INTO serie_genere VALUES ('The Flash',2014,'Supereroi');
INSERT INTO serie_genere VALUES ('The Flash',2014,'Azione');
INSERT INTO serie_genere VALUES ('The Flash',2014,'Drammatico');
INSERT INTO serie_genere VALUES ('The Flash',2014,'Avventura');
INSERT INTO serie_genere VALUES ('Stranger Things',2016,'Fantascienza');
INSERT INTO serie_genere VALUES ('Stranger Things',2016,'Drammatico');
INSERT INTO serie_genere VALUES ('Stranger Things',2016,'Avventura');
INSERT INTO serie_genere VALUES ('Stranger Things',2016,'Thriller');
INSERT INTO serie_genere VALUES ('Tredici',2017,'Giallo');
INSERT INTO serie_genere VALUES ('Tredici',2017,'Drammatico');
INSERT INTO serie_genere VALUES ('Tredici',2017,'Thriller');
INSERT INTO serie_genere VALUES ('Tredici',2017,'Adolescenziale');
INSERT INTO serie_genere VALUES ('Wayward Pines',2015,'Thriller');
INSERT INTO serie_genere VALUES ('Wayward Pines',2015,'Fantascienza');
INSERT INTO serie_genere VALUES ('Wayward Pines',2015,'Giallo');

-- Lista preferenze generi per gli utenti
INSERT INTO utente_genere VALUES ('MATDES86B12I854K','Supereroi');
INSERT INTO utente_genere VALUES ('MATDES86B12I854K','Azione');
INSERT INTO utente_genere VALUES ('MATDES86B12I854K','Avventura');
INSERT INTO utente_genere VALUES ('GIOGIB84H62C993O','Fantasy');
INSERT INTO utente_genere VALUES ('GIOGIB84H62C993O','Drammatico');


-- Utente guarda una puntata
INSERT INTO guarda VALUES ('MATDES86B12I854K',1,1,'The Flash',2014,'TV','2015-05-04');
INSERT INTO guarda VALUES ('MATDES86B12I854K',2,1,'The Flash',2014,'TV','2015-05-16');
INSERT INTO guarda VALUES ('MATDES86B12I854K',3,1,'The Flash',2014,'TV','2015-05-17');
INSERT INTO guarda VALUES ('MATDES86B12I854K',1,1,'Stranger Things',2016,'Computer','2016-10-17');
INSERT INTO guarda VALUES ('MATDES86B12I854K',1,1,'Wayward Pines',2015,'Tablet','2018-01-13');
INSERT INTO guarda VALUES ('MATDES86B12I854K',2,1,'Wayward Pines',2015,'Tablet','2018-01-13');

INSERT INTO guarda VALUES ('GIOGIB84H62C993O',1,1,'Wayward Pines',2015,'Phone','2017-09-30');
INSERT INTO guarda VALUES ('GIOGIB84H62C993O',1,1,'Tredici',2017,'TV','2018-03-05');
INSERT INTO guarda VALUES ('GIOGIB84H62C993O',2,1,'Tredici',2017,'TV','2018-03-06');
INSERT INTO guarda VALUES ('GIOGIB84H62C993O',3,1,'Tredici',2017,'TV','2018-03-07');
INSERT INTO guarda VALUES ('GIOGIB84H62C993O',1,1,'The Flash',2014,'Computer','2016-02-04');



-- Utente vota una puntata
INSERT INTO vota VALUES ('MATDES86B12I854K',10,1,1,'The Flash',2014);
INSERT INTO vota VALUES ('MATDES86B12I854K',8,3,1,'The Flash',2014);
INSERT INTO vota VALUES ('MATDES86B12I854K',8,1,1,'Stranger Things',2016);
INSERT INTO vota VALUES ('MATDES86B12I854K',7,2,1,'Wayward Pines',2015);

INSERT INTO vota VALUES ('GIOGIB84H62C993O',6,1,1,'Wayward Pines',2015);
INSERT INTO vota VALUES ('GIOGIB84H62C993O',8,1,1,'Tredici',2017);
INSERT INTO vota VALUES ('GIOGIB84H62C993O',7,3,1,'Tredici',2017);
INSERT INTO vota VALUES ('GIOGIB84H62C993O',9,1,1,'The Flash',2014);

-- Utente recensisce una stagione
INSERT INTO recensione VALUES ('MATDES86B12I854K','The Flash',2014,'Molto bella!','Questa serie TV mi sta piacendo molto...');


-- Inserimento attori
INSERT INTO attore VALUES ('GSTGNT90A14Z404L','Grant','Gustin','1990-01-14','Stati Uniti','Norfolk','Grant è nato il 14 gennaio 1990 a Norfolk in Virginia da Tina Haney, un''infermiera pediatrica, e Thomas (Tom) Gustin, un insegnante. Ha un fratello maggiore di nome Tyler e una sorella minore di nome Gracie.');
INSERT INTO attore VALUES ('PTTCDC18H06Z404A','Candice','Patton','1988-06-24','Stati Uniti','Jackson','Nasce a Jackson, nel Mississippi, ma cresce a Plano, in Texas. Ha frequentato la Southern Methodist University a Dallas.');
INSERT INTO attore VALUES ('BRWMLB04B50Z131R','Millie Bobby','Brown','2004-02-19','Spagna','Malaga','Terzogenita di quattro figli, Millie è nata a Malaga (Spagna) da genitori britannici che all''epoca gestivano un ristorante a Marbella.');
INSERT INTO attore VALUES ('LNGKHR96D69Z700Y','Katherine','Langford','1996-04-29','Australia','Perth','Figlia di Stephen e Elizabeth, Katherine ha iniziato a studiare recitazione dopo il diploma alla Perth Modern School, in cui era una nuotatrice classificata a livello nazionale.');
INSERT INTO attore VALUES ('DLLMTT18H06Z404U','Matt','Dillon','1964-02-18','Stati Uniti','New Rochelle','Dillon nasce a New Rochelle (New York) il 18 febbraio 1964 figlio di immigrati irlandesi.');
INSERT INTO attore VALUES ('JNSTBY66P06Z404P','Toby','Jones','1966-09-06','Regno Unito','Londra','Figlio dell''attore Freddie Jones e dell''attrice Jeanne Heslewood, ha studiato alla Abingdon School di Oxfordshire');


-- Inserimento casts
INSERT INTO casts VALUES ('The Flash',2014,'GSTGNT90A14Z404L','Barry Allen');
INSERT INTO casts VALUES ('The Flash',2014,'PTTCDC18H06Z404A','Iris West');
INSERT INTO casts VALUES ('Stranger Things',2016,'BRWMLB04B50Z131R','Undici');
INSERT INTO casts VALUES ('Stranger Things',2016,'BRWMLB04B50Z131R','Jane Ives');
INSERT INTO casts VALUES ('Stranger Things',2016,'BRWMLB04B50Z131R','Jane Hopper');
INSERT INTO casts VALUES ('Tredici',2017,'LNGKHR96D69Z700Y','Hannah Baker');
INSERT INTO casts VALUES ('Wayward Pines',2015,'DLLMTT18H06Z404U','Ethan Burke');
INSERT INTO casts VALUES ('Wayward Pines',2015,'JNSTBY66P06Z404P','David Pilcher');
