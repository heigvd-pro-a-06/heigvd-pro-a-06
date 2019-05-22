
-- Insertion dans la table departement. -----

INSERT INTO departement(nom_departement)
Values 
  ('HEG'),
  ('TIC'),
  ('TIN'),
  ('EC+G'),  
  ('COMEN');

-- Insertion dans la table roles. ----------

INSERT INTO roles (nom_role)
Values 
  ('Etudiant'),
  ('Assistant'),
  ('Professeur'),
  ('Administrateur'); 

-- Insertion dans la table utilisateur. --------------------------------------

INSERT INTO utilisateur(nom_utilisateur, mail_utilisateur, mot_de_passe, role_utilisateur)
Values
    /*md5('root1234') = e8bc632a8955b067e4f57824d5954690*/
  ('Admin', 'admin.administrateur@heig-vd.ch', '$2a$10$RUwvl75fVxOx2JFgP5QSV.Acgbjc9bGAOOW1G6Rv.T0.KSp.ZgOha', 4),
    /*md5('bestpassword123454') = e8bc632a8955b067e4f57824d5954690*/
  ('CrescenceK', 'crescence.yimnaingkamdem@heig-vd.ch', '$2a$10$xOE2usp0N/qA49RPjo.RaO03GfO6TNlFMLsiJeXyzppfju..unCfC', 1),
  /*md5('fyk456') = 95577c3adb3cfa71d89d2d4e2eda96fd*/
  ('youndzoFrancine', 'francine.youndzokengne@heig-vd.ch', '$2a$10$I5/XQLRUrZB4cEDhX.0COO8FlhyK7s7MbZOmPGg1qWi8qr9mYibWe', 1),
    /*md5('tpq789') = 0acf1488de10c0fce54f6aaaf39a303e*/
  ('tiagoquin', 'tiago.povoaqui@heig-vd.ch', '$2a$10$18jY/0KSj01yOYuTyGx9duB/R0LtL9y9MGcPaDSZHoaoKvAoY/QUq', 1),
  /*md5('cln123') = 865b501220e511a279efc515503c5ae1  => mdp recu par Api*/
  ('cedriclankeu', 'cedric.lankeungassam@heig-vd.ch', '$2a$10$Kp6mYqx/X0k27u3xAlpiVu1UoDEtW7G8/CMUy/9xjuYS4wYZ5Dqz2', 1),
    /*md5('agi456') = f7b057bc528e98dd80eac722296dd39f*/
  ('AlexandreGabrielli', 'alexandre.gabrielli@heig-vd.ch', '$2a$10$qvTT3Cxlxs8xiowENYY5sOwVwMWGfVY1Kh9QEKmaSCMgdCoMXdqCW', 1),
    /*md5('mcf789') = 80758752c5e07f13a5f9ca9e43eea251*/
  ('Maxcaduff', 'max.caduff@heig-vd.ch', '$2a$10$GXVUzQ2sp3prMsgLjrHmLusPaXsBoumaChh5SiP5Fz4dmFySn/EL.', 1),
    /*md5('mcf789') = 80758752c5e07f13a5f9ca9e43eea251*/
  ('grafolytics', 'marcel.graf@heig-vd.ch', '$2a$10$Jybj2bD5I/H.fxaRm8XcOu1hh9cxFbMDBaf/Hs7sn16sy404skyxy', 3),
    /*md5('cpa456') = 8670948c5a87999218c67b098ed43883*/
  ('ci4cb', 'carlos.pena@heig-vd.ch', '$2a$10$BUGl1onA1/3tbM13qlRkCO6xNZOqUdKGn1hUsKrhHA3kUV8ohskIG', 3),
    /*md5('lionel') = 8670948c5a87999218c67b098ed43883*/
  ('lionel', 'lionel.assistant@heig-vd.ch','$2a$10$Zrhs93W1Rrcqf0VhPNbAGO53q72.V1ZxNgE6.q515GN0gZIVIVbZa', 2),
    /*md5('nicole') = fc63f87c08d505264caba37514cd0cfd*/
  ('nicole', 'nicole.assistant@heig-vd.ch', '$2a$10$C5O07Qrgnq6QUXY0mEofZO/ruJEOOc5BR5jpLsxKp6JP7pNSzKmUm', 2);  
  
 -- Insertion dans la table appartient. -------------------------------------------
 
INSERT INTO appartient(departement_id, utilisateur_id)
values
	(1,2),
	(1,3),
	(2,4),
	(2,5),
	(3,6),
	(3,7),
	(4,8),
	(4,9),
	(2,8),
	(2,9),
	(5,10),
	(5,11);

-- Insertion dans la table tag. -----------------------------------------------------------------------------

INSERT INTO tag (nom, prioritaire, rang) 
values 
	('debian', true, 6),
	('assembleur',true,4),
	('numeristaion', false, 6),
	('signaux',false,1),
	('systeme',true,10),
	('gen',false,7),
	('scapy',false,9),
	('cpp' ,true,1),
	('netbeans' ,true,7),
	('postgresql',true,9),
	('nodejs',false,8),
	('securite',true,8),
	('get',false,10),
	('angular',false,5),
	('wireshark',false,9),
	('tic',false,3),
	('swi',false,4),
	('pro',true,5),
	('poo1',false,2),
	('poo2',false,5),
	('aro1',false,7),
	('aro2',true,8),
	('info',false,8),
	('labo',false,2),
	('pco',true,10),
	('ser',true,6),
	('res',false,3),
	('srx',true,4),
	('gen',false,5),
	('slo',false,2),
	('cloud',true,7),
	('get',false,1),
	('signaux',true,5),
	('analogique',false,4),
	('numerique',true,6),
	('inf1',true,1),
	('inf2',true,3),
	('inf01',true,9),
	('info2',true,4),
	('progoo',false,9),
	('economie',false,5),
	('c++',false,5),
	('c',true,4),
	('c#',true,1),
	('java',false,1),
	('intellij',false,1),
	('vscode',true,6),
	('socket',true,9),
	('trigger',false,6),
	('procedure',false,5);

-- Insertion dans la table message, (message racine )-------------------------------.

 INSERT INTO message(date_creation, contenu, score, utilisateur_id)
 VALUES
	('2018/10/06 13:45:55', 'J ai un problème lorsque je veux lire des données de la base de données PostgreSQL Author et écrire dans la base de données de livres PostgreSQL. Je crée des configurations pour les deux bases de données et cela fonctionne bien. Mon problème est dans ItemReader. Voici mon erreur: Une erreur s est produite lors de l exécution de l étape ETL-file-load dans le travail ETL-Load error: exception java.lang.IllegalArgumentException: org.hibernate.hql.internal.ast.QuerySyntaxException: l auteur n est pas mappé [sélectionnez id, prénom, nom de famille de l auteur]', 0, 6),
	('2018/09/02 09:35:51', 'Je pensais que toute action provoquerait l appel des fonctions mapState par react-redux-connect mais lorsqu une action ne change rien, ce n est pas le cas. J ai un module localStorage qui distribue des actions mais ne change pas d état, mais il écrira à localStorage. Le module comporte des sélecteurs utilisés dans les conteneurs, mais ils ne seront pas appelés tant que l état n aura pas été modifié. L interface utilisateur s affichera correctement après l envoi d une autre action modifiant l état. Problème : Lorsque je mets le magasin sur window (window.store = store), ajoute un console.log dans le mapStateToProps, puis dans la console, je dépose une action: store.dispatch ({type: une action}), puis sur la console. journal de la mapStateToProps ne montre pas.', 0, 3),
	
	('2018/11/26 15:05:01', 'J aimerais créer des actions d événement pour avertir les autres classes lorsqu un événement survient. internal class Third{public event Action Updated;public Third(){if(Updated != null)}}', 0, 5),
	('2019/04/26 15:00:01', 'I am working on doing some statistical analysis in python however I am new to the field and have been stuck on an error.For background, I am computing a set of sample_means for each sample size, 200 times. I am then calculating the mean and standard deviation for each sample size, which are then stored in arrays. This is my code: in[] = sample_sizes = np.arange(1,1001,1) number_of_samples = 200 mean_of_sample_means = [] std_dev_of_sample_means = [] for x in range (number_of_samples): mean_of_sample_means.append(np.mean(sample_sizes)) std_dev_of_sample_means.append(np.std(sample_sizes)) in[] = # mean and std of 200 means from 200 replications, each of size 10 trials[0], mean_of_sample_means[0], std_dev_of_sample_means[0] out[] = (10, 500.5, 288.67499025720952) ', 0, 3),
	('2019/02/18 19:00:01', 'Bonjour, est-ce que la VM est la même que celle utilisée pour SYE et ASM au premier semestre?', 0, 3),
	('2018/04/09 18:05:01', 'Bonjour, je vous prie de m excuser mais j ai oublié de signer la feuille hier mais j etais bien present et j ai noté que vous m avez mis absent sur gaps', 0, 11),
	('2018/09/19 22:05:51', 'Bonjour, nous avons un problème pour le premier labo. Sans avoir touché à une seule ligne de code nous n avons quasiment aucune erreurs sur le résultat du compteur. Nous devons lance au moins 50 000 threads et 1 000 000 000 d itérations pour avoir 1% d erreurs, il est donc difficile de faire des tests et de se rendre compte si ce que nous faisons a un impact positif ou négatif sur le résultat.', 0, 11),
	('2018/05/16 12:05:51', 'Bonjour, nous avons essayé d’utiliser la libraire <atomic> pour effectuer un compare_exchange_strong pour une récupération d’un token juste avant l’incrémentation du compteur globale. Cependant nous avons aucune amélioration, il semblerait qu’il existe un bug sur ce fonctionnement qui n’est pas thread-safe, mais nous utilisons une version plus récente. Nous avons aussi testé de rendre le compteur atomic pour avoir une post incrémentation atomic, cela à un effet ~90% avec 10’000 thread avec un compteur de 10’000 sur 4 processeurs mais cela ne dure par car à 100 000 thread on chute à ~35%.Il y a une raison que la classe atomic n’effectue pas vraiment des operations totalement atomic ?', 0, 6),
	('2018/11/8 12:45:51', 'Peut-être que quelqu un a eu un problème similaire -> lorsque je tente de relancer (bouton start) une deuxième fois un comptage, j ai un SIGABRT. Une idée? Au débug ça a l air de se produire dans une des boucles du dialog.cppEdit: j ai trouvé la solution grâce à quelqu un. Au cas où vous avez ce problème: peut-être que vous distribuez des identifiants à vos threads. Si vous utilisez un compteur il ne faut pas oublier de le reset à 0. J espère que ça peut aider quelqu un, désolé de la question pourrie.', 0, 1),
	('2018/07/9 10:45:51', 'Pour le labo courant, a-t-on le droit de déplacer le code de la fonction `startHacking` dans la fonction run de nos threads ? Merci', 0, 7),
	('2018/09/18 23:05:01', 'Bonsoir, j ai un souci pour la validation. Après avoir rajouté socket.write("\r\n") et socket.end(), j exécute la validaction, mais j ai un message d erreur qui s affiche et je ne comprends pas d où ça peut venir.', 0, 7),
	('2018/06/09 15:05:01', 'Bonsoir,Je suis en train de faire le labo Orchestre, et j essaie de valider mon travail. Mes 2 containers fonctionne, et à la main, je les vois communiquer. En lançant le script de validation, je n arrive cependant que jusqu ici, et je ne sais pas comment me sortir de cette erreur. Auriez-vous une suggestion ? Merci d avance.', 0, 8),
	('2018/12/29 11:05:01', 'Comment gérer l erreur de mailtrap: Requested action not taken: too many emails per second? Faire des sleep?', 0, 11),
	('2019/03/1 11:05:01', 'Bonjour, j ai un problème cette fois avec Maven : lorsque j exécute la commande mvn clean install sur mon projet, il génère bien le smtpServer-1.0-SNAPSHOT.jar dans le dossier target, mais lorsque je l exécute avec java -jar, il me met une erreur no main manifest attribute, in smtpClient-1.0-SNAPSHOT.jar. J ai pris le même pom.xml que le projet Chill et j ai essayé de rajouter des choses trouvés sur Internet pour indiquer la classe Main, mais il me génère pleins d erreurs. Pouvez-vous me donner des pistes svp?', 0, 3),
	('2018/05/16 14:05:51', 'Hello, Est-ce que c est normal que sur netcat quand j essaie d envoyer des commandes smtp au MockMock, il reçoit aucune réponse mais par contre avec telnet ça marche normalement', 0, 10),
	('2019/02/26 07:05:01', 'je me demandais, comment détermine-t-on simplement qu un serveur smtp force à utiliser le protocol esmtp. Peut-être ai-je mal compris ce qui se passe, mais il me semble smtp.mailtrap.io oblige à passer par une authentification. Y a t il moyen d anticiper cela, ou bien faut il tenter sans authentification, puis après réception d un message d erreur comprendre qu il faut utiliser l authentification?', 0, 2),
	('2018/06/09 15:05:01', 'Bonjour, nous sommes en train de refaire l exercice 15. Nous comprenons pas pourquoi le producteur fait 2 `waitEmpty.acquire()` et aussi que le `waitEmpty.acquire()` dans le producteur est un appel bloquant et il doit attendre le `waitEmpty.release()` dans le consommateur pour continuer, et que dans le consommateur, il y a le `waitFull.acquire(); et le` waitFull.release()` se situe vers la fin du producteur, mais comme le producteur est bloqué par un `waitEmpty.acquire()`, comment le producteur peut exécuter le `waitFull.release()`?', 0, 1),
	('2018/07/12 17:45:38', 'Bonsoir, j aurai une question à propos du laboratoire. Lorsque je teste mon implémentation, 100 Threads et 1000 itérations. Ca fonctionne parfaitement mais dès le moment où je mets plus par exemple 1000 Threads et 10000 itérations, le programme crash. Est-ce que c est normal, je veux dire est-ce que c est naturel que ça se produise à ce stade où il faudrait s attendre à ce genre de comportement avec des valeurs quand même bien plus grandes ?', 0, 8),
	('2019/12/03 15:45:03', 'Bonsoir, pour implémenter l authentification CRAM-MD5, j ai pris une classe complète qui calcule des HMACS. Est-ce que c est bon tant que je précise dans les commentaires que cette classe ne m appartient pas? Merci.', 0, 7),
	('2018/07/18 22:41:33', 'Un lien utile pour les problèmes d encodage avec SMTP: https://ncona.com/2011/06/using-utf-8-characters-on-an-e-mail-subject/', 0, 6),
	('2019/04/26 18:00:00', 'Pour le labo, on doit pouvoir aussi envoyer des mails à smtp.heig-vd.ch ?', 0, 4);

-- Insertion dans la table discussion. -------------------------------

INSERT INTO discussion (sujet, msgracine_id, utilisateur_id) 
values 
	('Problème avec le lecteur Spring Batch de PostgreSQL DB1 pour écrire dans PostgreSQL DB2', 1, 6),
	('redux connect mapStateToProps n est appelé lors de la distribution de laction', 2, 3),
	('Initialiser les actions d événement pour générer des notifications d événement', 3, 5),
	('Data science error python - ValueError: x et y doivent avoir la même première dimension', 4, 3),
	('Environement de travail pour PCO', 5, 3),
	('Absence sur gaps', 6, 11),
	('Laboratoire1 PCO', 7, 11),
	('Laboratoire1 PCO', 8, 6),
	('Laboratoire 2 PCO', 9, 1),
	('Modification structure des fichiers du labo', 10, 7),
	('Soucis avec lors de l execution du fichier validation.sh ', 11, 7),
	('Laboratoire Orchestra', 12, 8),
	('SMTP Mock mock server', 13, 11),
	('Dependances maven', 14, 3),
	('Mock mock server et netcat', 15, 10),
	('SMTP mailtrap.io avec ou sans authentification pour le labo en cours ? ', 16, 2),
	('Exercice 15 sur les threads', 17, 1),
	('Labo sur les threads.', 18, 8),
	('Implementation de l authentification Labo SMTP', 19, 7),
	('Documentation pour le labo SMTP.', 20, 6),
	('Nom de domaine', 21, 4);


-- Insertion dans la table message (réponse aux messages racine). ------------------------

INSERT INTO message (date_creation, contenu, score, utilisateur_id, super_message_id) 
values 
	('2018/10/06 13:55:50', 'Assure toi de fournir le bon type d arguments.', 0, 6, 1),
    ('2018/10/07 07:15:05', 'Fais voir ton code', 0, 3, 1),
    ('2018/03/09 10:41:33', 'Votre exemple codepen fonctionne très bien, il vous suffit de déclencher une action qui dépasse de votre niveau le plus bas et qui est conforme à la structure attendue, afin de ne générer aucune erreur de suivi: Publiez-le dans la console de votre code: store.dispatch ({emittedBy: "COUNTER", tapez: "COUNTER -> AUGMENTER", id: "counter1", charge utile: {type: "INCREASE", id: ["counter1" ]}})', 0, 4, 2),
    ('2018/03/09 18:49:01', 'Ce problème était dû au fait que j avais un module localStorage qui distribuait des actions sans modifier l état, mais qu il écrivait dans localStorage.Le module avait des sélecteurs qui obtiendraient les bonnes données et les conteneurs les utiliseraient pour construire l’état correct, mais puisque l’action envoyée ne modifiait pas l’état dans le magasin Redux, reak-redux ignorerait l’appel de mes fonctions mapState (probablement un état mémoizing dans Provider). ). La solution consiste à laisser le réducteur racine renvoyer une nouvelle référence d état {... state} afin que toute action provoque l appel des fonctions mapState.', 0, 10, 2),
    ('2018/11/28 10:41:33', 'Le problème ici est que vous essayez de faire cela dans le constructeur, où à ce moment-là, rien n a (encore) été affecté à l événement Updated. Vous pouvez "résoudre" ceci en vérifiant la valeur null: internal class Third { public event Action Updated,public Third(){// ...if(Updated != null) Updated(); }} Mais cela ne veut pas dire que votre code "fonctionne" maintenant, car vous n attribuez à l événement qu un gestionnaire après l appel du constructeur.', 0, 4, 3),
    ('2018/11/28 10:49:03', 'Vous appelez Update () avant que les classes puissent s abonner aux événements, en raison du constructeur de l objet sous-jacent appelé en premier. Je l ai changé pour que le constructeur prenne la classe associée et abonne l événement lui-même.', 0, 9, 3),
    ('2019/04/26 15:30:01', 'Cette ligne a besoin des deux arguments pour avoir la même forme (parce que vous avez besoin de x et y pour votre tracé sur un système de coordonnées cartésien, pour être plus précis: la même taille en ce qui concerne la première dimension telle que vue dans l erreur: if x.shape [ 0]! = Y.shape [0]). Mais: sample_sizes = np.arange (1.1001,1) # 1000!', 0, 6, 4),
    ('2019/02/19 09:00:01', 'Bonjour non.La version 2019_02 est une mise à jour de la précédente avec Qt Creator installé et pré-configuré pour les labos.', 0, 10, 5),
    ('2018/04/09 18:35:01', 'Bonjour, pareil pour moi. J ai zappé la feuille en sortant du cours hier alors que j étais présent.', 0, 9, 6),
    ('2018/04/09 19:15:01', 'ok, pas de soucis je corrige', 0, 1, 6),
    ('2018/09/20 12:05:51', 'Le problème est très probablement que vous êtes en mode "Release" dans Qt Creator au lieu du mode "Debug". Je ne connais pas la source du problème, mais on pourrait suspecter que certaines options d optimisation à la compilation ont un effet sur le comportement du programme.', 0, 6, 7), 
    ('2018/09/20 10:41:33', 'En effet plus les instructions seront rapides a faire le travail moins il y aura de risque de contention - mais cela ne veut pas dire que les problemes ne vont pas apparaitre. Il est aussi interessant d observer combien de coeurs sont utilises: plus le parallelisme sera important, plus les risques d acces concurrents à la memoire seront éléves', 0, 8, 7), 
    ('2018/05/16 13:05:51', 'Attention, sauf erreur l attribut `counter` est stockée dans un `unsigned long`. Il ne faut donc pas que le produit nbThread*nbIncrementation soit plus grand que ULONG_MAX (probablement 4294967295 sur votre machine http://www.cplusplus.com/reference/climits/)', 0, 4, 8), 
    ('2018/09/12 16:41:33', 'utiliser la libraire <atomic> bonne idée, les operations atomiques sont effectivement interessantes et permettent de la synchonisation sans bloquer les thread ce qui peut etre tres performant dans certaines situtations, a classer un peu dans la meme "famille" que les algorithmes d exclusion mutuels que nous allons commencer a regarder. Qt a meme des operations atomiques (https://doc.qt.io/archives/qt-4.8/qatomicint.html). Mais nous n allons pas les aborder directement pendant le cours, cependant libre a vous de les essayer', 0, 2, 8),
    ('2018/07/09 16:41:33', 'Bonjour,Nous vous demandons seulement de ne pas créer de nouveau fichier dans le projet Qt du labo comme indiqué dans la donnée. Justifiez vos choix d implémentation en commentaire et dans le Readme.', 0, 8, 10),
    ('2018/11/8 13:45:51', 'c est du json malformé vous n envoyez pas un tableau de musiciens (entre [ ])', 0, 1, 11),
    ('2018/06/09 16:41:33', 'comme ça, ça ne me dit rien...', 0, 2, 12),
    ('2018/06/09 16:45:03', 'Je ne pense pas que ça ait de rapport, mais depuis que mon auditor est dockerisé, je n arrive plus à me connecter en TCP dessus (avec `telnet 192.168.99.100 2205`)', 0, 8, 12),
    ('2018/06/09 16:55:00', 'vous avez fait un run avec -p 2205:2205 ?', 0, 2, 12),
    ('2018/06/10 10:55:00', 'Oui, pour être exact ', 0, 8, 12),
    ('2018/06/10 11:05:00', 'ajoutez sock.write("\r\n");sock.end();ce qui devrait débloquer le client tcp dans validation', 0, 8, 12),
    ('2018/06/10 11:55:00', 'Victoire, merci pour votre grande aide, et désolé pour ça, je ne suis pas encore à l aise avec NodeJS.', 0, 2, 12),
    ('2018/12/29 14:05:01', 'Moi j ai fait ça. Des Sleep de 5 secondes et ça marche pico bello', 0, 1, 13),
    ('2018/12/29 14:07:01', 'Entre chaque groupe ou entre chaque RCPT TO?', 0, 4, 13),
    ('2018/12/29 14:17:31', 'Entre chaque rcp to', 0, 1, 13), 
    ('2018/08/27 09:40:51', 'Tu dois spécifier le main qu il doit exécuter. Perso j avais ce soucis, le plus simple, c est de te baser sur le pom.xml du labo javaIO précédent. Tu verras qu il spécifie le main (ou la classe). Après tu recompiles et ça devrait être ok', 0, 8, 14),
    ('2018/08/27 10:02:51', 'Merci beaucoup ça marche du tonnerre', 0, 3, 14),
    ('2019/05/16 17:05:01', ' C est à cause des \n vs \r\n: sur linux (ou mac), netcat va envoyer par défaut des \n, ce qui viole le rfc. Vous pouvez passer un flag en démarrant netcat pour lui dire de faire le contraire. -c sur mac os', 0, 11, 15),
    ('2019/05/16 17:06:51', ' Oui ça marche merci! Mais du coup cette erreur se reproduit dans le code? Je vais regarder mes séparateurs', 0, 11, 15),
    ('2019/02/26 07:15:09', 'Le RFC (et le protocole) ne prévoit rien pour annoncer que l auth. est obligatoire pour la soumission de mails (il y a des entêtes pour indiquer les méthodes d auth. qui PEUVENT être utilisées). S il n y a aucune méthode d auth, alors on peut en déduire que l auth n est pas nécessaire, mais pas l inverse. Comme vous le dites, c est après la réception du message d erreur qu on le sait. Ceci dit, vous utilisez esmtp dans tous les cas (c est le mécanisme avec la liste plus ou moins longue d options, dont celles liées à l auth.)', 0, 6, 16),
    ('2018/06/09 15:25:41', 'Bonsoir, j ai mis la solution sur `general` j avais oublié de le faire. L idée est que le producteur doit attendre que les deux consommateurs ont lu, et inversément le producteur doit libérer deux consommateurs une fois l élément écrit', 0, 7, 17),
    ('2018/06/09 15:55:07', 'Okay. Merci', 0, 1, 17),
    ('2018/07/12 18:29:00', '100 threads et 100 000 itérations passent aussi mais je voulais savoir si ce sont des valeurs correctes ou il faudrait pouvoir entrer bien plus grand ?', 0, 8, 18),
    ('2018/07/12 19:15:08', 'Bonjour, qu entendez-vous par crash? Est-ce que l application crash réellement ou freeze?Concernant le nombre de thread, je pense qu il n est pas pertinent de monter au delà de 100. Suivant l algorithme choisis, 100 000 itérations sur 100 threads peut être relativement long à calculer. Je vous suggère de monter votre nombre d itérations petit à petit. Sachez cependant que 100 threads et 100 000 itérations sont des valeurs tout à fait corrects.', 0, 2, 18),
    ('2018/07/12 19:55:18', 'Bonjour, alors ça freeze plutôt. Du coup, je comprends mieux. Merci bien', 0, 8, 18),
    ('2019/12/03 16:00:03', 'Tu testes avec quel serveur? Parce que la seule manipulation que j ai du faire c est de coder en base64 le password et le username.', 0, 3, 19),
    ('2019/12/03 16:05:18', 'Oui, ça c est AUTH LOGIN, mais j ai implémenté les 2 ^^.', 0, 6, 19),
    ('2019/12/03 16:07:03', 'C est obligatoire ?', 0, 3, 19),
    ('2019/12/03 16:10:00', 'Non, il faut produire un .jar executable.', 0, 9, 19),
    ('2019/12/03 16:17:03', 'On est d accord que le chemin du fichier de config est codé en dur, et que s il le modifie, il rebuild le jar avec mvn clean install?', 0, 3, 19),
    ('2018/07/19 07:46:27', 'ça doit passer avec MockMock ? De notre côté une erreur 500: commande pas implémentée', 0, 6, 20),
    ('2018/07/19 07:50:27', 'Pour moi ça passe bien si jamais', 0, 9, 20),
    ('2019/04/26 18:06:06', 'vous pouvez faire le test, mais alors utilisez une config avec 1-2 groupes - sinon vous risquez de vous faire blacklister', 0, 2, 21),
    ('2019/04/26 15:00:01', 'Il y a besoin d une étape en plus? Le serveur me refuse la connexion', 0, 4, 21),
    ('2019/04/26 18:08:00', 'vous êtes sur quel réseau? Les politiques réseau du SI appliquent des règles différents en fonction de votre connexion au réseau heig-vd, educanet, ou externe.', 0, 2, 21),
    ('2019/04/26 19:20:49', 'sur heig-vd. Mais il s attend à une authentification ou quelque chose?', 0, 4, 21),
    ('2019/04/27 09:01:49', 'essayez aussi le port 587 (qui normalement devrait être utilisé par le client mail pour délivrer au premier serveur smtp... mais le SI semble avoir bloqué 25)', 0, 2, 21),
    ('2019/04/27 09:04:09', 'Oui c est celui que j avais essayé en effet.', 0, 4, 21),
    ('2019/04/27 09:07:19', 'Notez que c est peut-être EDUROAM qui bloque le trafic (de la même manière qu un ISP comme swisscom reroute le trafic TCP/25 sur le serveur SMTP pour lutter contre le spam) en effet: https://community.jisc.ac.uk/library/janet-services-documentation/implementing-eduroam-roadmap-part-2', 0, 2, 21),
    ('2019/04/27 09:1:49', 'Okay, merci!', 0, 4, 21);
 
-- Insertion dans la table message (réponse aux réponses des messages racines). ------------------------

INSERT INTO message (date_creation, contenu, score, utilisateur_id, super_message_id) 
 values 	
	('2018/06/09 15:35:41', '@Override public Book process(Author item) throws Exception { Book book = newBook();book.setName(item.getFirstname());return book;}', 0, 9, 52),
	('2019/02/26 07:17:00', 'J ai bien respecté les types', 0, 11, 51),
    ('2018/06/09 16:27:11', 'Ca marche merci', 0, 2, 53),
    ('2018/07/12 19:18:19', 'Bien vu merci', 0, 5, 55),
    ('2019/12/03 16:09:25', 'Parfait merci bien ! ', 0, 4, 58),
    ('2019/04/26 15:04:01', 'Dac! ca marche.', 0, 7, 65);

	
-- Insertion dans la table message_family -------------------------

INSERT INTO  message_Family(message_parent , message_fils)
VALUES
	-- reponse aux messages racines
	(1,22),
	(1,23),
	(2,24),
	(2,25),
	(3,26),
	(3,27),
	(4,28),
	(5,29),
	(6,30),
	(6,31),
	(7,32),
	(7,33),
	(8,34),
	(8,35),
	(10,36),
	(11,37),
	(12,38),
	(12,39),
	(12,40),
	(12,41),
	(12,42),
	(12,43),
	(13,45),
	(13,46),
	(13,47),
	(14,48),
	(14,49),
	(15,50),
	(15,51),
	(16,52),
	(17,53),
	(18,54),
	(18,55),
	(18,56),
	(19,57),
	(19,58),
	(19,59),
	(19,60),
	(19,61),
	(20,62),
	(20,63),
	(21,64),
	(21,65),
	(21,66),
	(21,67),
	(21,68),
	(21,69),
	(21,70),
	(21,71),
	-- reponse de reponse 
	(52,72),
	(51,73),
	(53,74),
	(55,75),
	(58,76),
	(65,77);

-- Insertion dans la table vote -------------------------
	
	INSERT INTO vote (utilisateur_id, message_id, up_vote) 
values 
	(9, 43, true),
	(3, 51, true),
	(5, 60, false),
	(8, 37, true),
	(11, 7, false),
	(4, 74, false),
	(7, 18, false),
	(4, 13, false),
	(6, 1, true),
	(6, 19, true),
	(6, 59, false),
	(6, 11, false),
	(7, 52, false),
	(10, 3, false),
	(7, 51, true),
	(2, 38, false),
	(10, 48, false),
	(1, 42, true),
	(1, 16, true),
	(3, 32, true),
	(4, 67, false),
	(3, 14, true),
	(8, 33, true),
	(2, 39, true),
	(6, 56, true),
	(4, 51, false),
	(3, 74, true),
	(4, 68, false),
	(5, 29, true),
	(1, 66, false),
	(9, 8, true),
	(6, 2, true),
	(5, 67, false),
	(2, 6, true),
	(2, 22, true),
	(3, 70, false),
	(5, 23, true),
	(9, 7, false),
	(3, 59, true),
	(8, 11, true),
	(11, 62, true),
	(6, 18, true),
	(11, 16, false),
	(2, 34, false),
	(11, 64, false),
	(4, 43, true),
	(9, 73, false),
	(6, 35, true),
	(3, 5, true),
	(10, 41, true),
	(11, 73, false),
	(6, 64, false),
	(3, 2, true),
	(6, 62, true),
	(2, 70, true),
	(10, 42, false),
	(7, 56, true),
	(7, 48, false),
	(4, 4, true),
	(3, 47, false),
	(7, 33, true),
	(2, 33, true),
	(2, 66, true),
	(4, 55, false),
	(3, 66, true),
	(7, 12, true),
	(7, 13, false),
	(8, 42, true),
	(2, 45, true),
	(9, 5, true),
	(10, 10, true),
	(9, 60, true),
	(11, 36, true),
	(11, 48, false),
	(2, 51, false),
	(8, 2, false),
	(3, 26, false),
	(6, 26, false),
	(2, 46, true),
	(5, 63, true),
	(2, 47, true),
	(7, 7, true),
	(6, 57, true),
	(5, 75, false),
	(6, 6, false),
	(2, 77, true),
	(8, 47, true),
	(9, 63, true),
	(5, 5, false),
	(8, 67, false),
	(8, 60, false),
	(5, 11, true),
	(7, 74, true),
	(8, 59, true),
	(2, 20, true),
	(10, 35, false),
	(8, 21, false),
	(3, 61, true),
	(7, 22, true),
	(10, 51, false),
	(9, 67, true),
	(10, 6, true),
	(9, 56, true),
	(6, 61, false),
	(8, 74, true),
	(8, 18, true),
	(3, 10, true),
	(2, 16, true),
	(4, 16, false),
	(6, 68, false),
	(11, 28, false),
	(1, 3, false),
	(6, 51, true),
	(6, 71, true),
	(11, 39, false),
	(8, 22, true),
	(5, 34, false),
	(9, 77, true),
	(6, 25, true),
	(10, 61, true),
	(1, 33, false),
	(3, 21, true),
	(1, 72, true),
	(11, 61, true),
	(10, 40, false),
	(11, 68, true),
	(9, 15, false),
	(5, 53, false),
	(5, 18, true),
	(10, 22, false),
	(2, 43, true),
	(8, 68, true),
	(8, 16, true),
	(9, 30, false),
	(1, 44, false),
	(5, 41, true),
	(1, 5, true),
	(4, 30, false),
	(9, 21, false),
	(9, 53, false),
	(6, 48, false),
	(9, 58, false),
	(5, 7, true),
	(8, 63, true),
	(1, 20, false),
	(10, 43, true),
	(11, 75, true),
	(6, 34, false),
	(6, 38, false),
	(5, 58, false),
	(8, 29, false),
	(2, 29, false),
	(7, 37, true),
	(11, 41, false),
	(10, 23, false),
	(4, 62, true),
	(5, 47, true),
	(5, 21, true),
	(4, 69, false),
	(6, 47, true),
	(8, 9, true),
	(5, 10, true),
	(2, 73, true),
	(8, 30, false),
	(6, 73, false),
	(3, 27, true),
	(10, 68, false),
	(1, 58, false),
	(9, 72, true),
	(9, 70, false),
	(10, 57, true),
	(4, 71, true),
	(3, 35, false),
	(6, 72, false),
	(1, 54, true),
	(10, 74, true),
	(1, 49, false),
	(8, 75, true),
	(10, 39, false),
	(11, 30, true);

 -- Insertion dans la table est_liÉ. -------------------------------------------
 
INSERT INTO est_lier(discussion_id, tag_id)
values
	(1,2),
	(1,21),
	(1,12),
	(1,35),
	(1,27),
	(1,13),
	(2,45),
	(2,5),
	(2,12),
	(2,25),
	(2,34),
	(2,15),
	(3,27),
	(3,17),
	(3,15),
	(3,35),
	(3,5),
	(3,10),
	(3,12),
	(3,7),
	(4,15),
	(4,26),
	(4,8),
	(5,9),
	(5,10),
	(5,5),
	(6,12),
	(6,17),
	(6,35),
	(6,42),
	(7,15),
	(8,47),
	(9,45),
	(9,36),
	(10,15),
	(10,26),
	(10,25),
	(10,36),
	(11,42),
	(11,22),
	(11,17),
	(11,35),
	(11,37),
	(11,23),
	(12,43),
	(12,49),
	(12,12),
	(12,32),
	(12,38),
	(12,13),
	(13,44),
	(13,33),
	(13,22),
	(13,11),
	(13,1),
	(13,50),
	(13,10),
	(13,20),
	(14,14),
	(14,46),
	(14,28),
	(15,19),
	(15,10),
	(15,45),
	(16,42),
	(16,1),
	(16,47),
	(16,48),
	(17,5),
	(18,47),
	(19,31),
	(19,39),
	(20,2),
	(20,29),
	(20,31),
	(20,26);


