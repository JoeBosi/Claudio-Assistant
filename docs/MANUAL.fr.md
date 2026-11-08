# Manuel de Claudio-Assistant

*Ce manuel est aussi généré sous forme de page HTML dans ce dossier au premier démarrage, pour une lecture facile dans un navigateur.*

*Votre cabinet*

Votre assistant de cabinet, qui apprend votre travail jour après jour. Comment l'utiliser, et comment il fonctionne à l'intérieur.

## 1 · Mode d'emploi

*Ce que vous utiliserez tous les jours. Cela suffit.*

### Comment l'ouvrir

**Sur Windows et Mac** :

1. Ouvrez l'application **Claude**.
2. En haut, choisissez l'onglet **Code**. Les conversations normales (onglet **Chat**) ne voient **pas** la mémoire ni vos dossiers.
3. Vérifiez que le dossier sélectionné est bien **Claudio-Assistant**.
4. Écrivez. Pour un nouveau dossier, ouvrez une **nouvelle conversation** : la mémoire reste de toute façon.

**Sur Linux**, il n'y a pas d'application Claude. On utilise **Claude Code** de l'une de ces deux façons :

- dans **VS Code** (un logiciel gratuit) : ouvrez le dossier **Claudio-Assistant**, puis cliquez sur l'icône de Claude ;
- dans le **Terminal** : ouvrez le dossier **Claudio-Assistant** dans le Terminal et tapez `claude`.

La personne qui a installé votre ordinateur peut vous créer un raccourci qui fait tout en un clic.

> La première fois, Claudio se présente et vous pose quelques questions pour faire connaissance (15 à 20 minutes). Ensuite, il installe tout seul les logiciels dont il a besoin.

### Comment lui parler

Comme vous parleriez à un bon collaborateur du cabinet. Pas besoin de commandes ni de mots techniques.

> « Nouveau dossier pour le client Dupont SARL : … »

> « Prépare-moi le brouillon du rapport. Prends celui de l'an dernier comme modèle. »

> « Rédige le compte rendu de la réunion de ce matin : Dupont et Martin étaient là, nous avons décidé… »

> « Le client m'a envoyé ces documents, vérifie qu'il ne manque rien. »

**Claudio parle votre langue.** Au premier démarrage, il vous demande quelle langue vous préférez ; d'ici là, il répond dans la langue dans laquelle vous écrivez. Les noms des dossiers restent en anglais (ce sont les vrais noms sur le disque), mais il vous les explique toujours.

**Vous pouvez aussi dicter** au lieu de taper :

- **Windows** : appuyez sur `Win` + `H` et parlez ;
- **Mac** : appuyez deux fois sur `Fn` (ou sur la touche micro) et parlez. Si rien ne se passe, activez la dictée dans Réglages Système → Clavier → Dictée ;
- **Linux** : cela dépend de votre bureau. Demandez à Claudio : « installe-moi la dictée ».

Claudio comprend aussi les phrases en désordre. Plus vous lui donnez de contexte (où, quoi, qui, quand), mieux il travaille. S'il manque quelque chose, il vous le demande.

**Il ne vous donne pas toujours raison** : si une demande est erronée (une loi, un calcul, une procédure), il vous le dit, explique pourquoi et propose des alternatives. Ensuite, c'est vous qui décidez.

**Il va seul sur internet** (avec le navigateur Chromium) pour les lois, les portails publics et les informations techniques. Il ne saisit jamais les données de vos clients sur des sites.

### Commencer un nouveau dossier

Il suffit de lui dire « nouveau dossier » avec le client et ce qu'il faut faire. Il :

- crée un sous-dossier pour ce travail dans `jobs` (le dossier de vos travaux), avec une **fiche** qui résume tout (qui, quoi, où on en est) ;
- vérifie s'il connaît déjà le client, les fournisseurs et les administrations concernés ;
- vous propose par où commencer.

**Il vous demande où travailler** : dans son dossier standard ou dans un dossier à vous (par exemple celui où vous avez déjà mis les documents du client). Si vous choisissez le vôtre, **il en fait d'abord une copie de sauvegarde** et ne touche pas aux documents déjà présents.

Les fois suivantes, dites simplement « reprenons le dossier Dupont » : il lit la fiche et sait où vous en étiez.

### Lui donner des fichiers, photos, documents

- **Faites glisser** les fichiers (PDF, Word, Excel, photos, scans) dans la conversation, ou
- mettez-les dans le dossier du travail, dans `received` (documents reçus), et dites-le-lui.

Il regarde vraiment les **photos et les scans** : il lit même des documents photographiés avec un téléphone.

S'il ne sait pas encore lire un format, il se procure seul le logiciel nécessaire. **Vous n'avez rien à convertir.**

### Les brouillons : vous vérifiez et signez

Claudio prépare, **vous vérifiez et signez**. Vous restez responsable, et plusieurs lois l'exigent (par exemple le règlement européen sur l'IA, l'« AI Act », et, en Italie, la loi 132/2025 pour les professions intellectuelles).

- Chaque donnée porte sa source : la loi avec son article, le document ou le site officiel d'où elle provient.
- À la fin de chaque brouillon, vous trouvez la liste **« À vérifier »** : hypothèses retenues, données manquantes, doutes. Commencez par là.
- Si vous voyez `[À VÉRIFIER : …]` (ou `[TO CHECK: …]`) dans le texte, c'est un point pour lequel il n'avait pas de source sûre.

> Si vous trouvez une erreur, dites-le-lui : « ici tu t'es trompé, le délai est de 60 jours, pas de 30 ». Il corrige et vous demande s'il doit s'en souvenir pour la prochaine fois.

### La boîte Learn-From-Here

Sur votre bureau, vous avez le raccourci **Learn-From-Here (Claude)**, c'est-à-dire « apprends d'ici ». Déposez-y les travaux réussis que vous voulez qu'il apprenne à refaire :

- seulement le document final (PDF, Word, Excel…), ou
- le document et une note de vous, même de deux lignes (« regarde comment j'ai rédigé les conclusions »), ou
- un dossier entier avec tous les fichiers d'un travail.

Puis dites-lui « je t'ai mis des travaux dans la boîte ». Si vous oubliez, il s'en aperçoit seul à la conversation suivante.

Il les étudie, vous dit ce qu'il a compris, les range parmi les **bons exemples** (le dossier `good-examples`) et la boîte redevient vide. Il ne supprime rien. Quand il voit le même type de travail 2 ou 3 fois, il vous propose de l'apprendre comme **savoir-faire fixe** (une « skill »).

### Lui faire retenir des choses

> « Souviens-toi que le client Dupont veut toujours le devis avant de commencer. »

> « Désormais, je veux les dates écrites en toutes lettres. »

À la fin d'un travail, c'est lui qui vous propose quoi retenir, dans une liste numérotée. Répondez « oui, tout » ou « enlève le 2 ». **Il n'enregistre rien sans votre accord.**

Une fois par mois, il vous propose de **ranger la mémoire** : il fusionne les doublons, retire les choses périmées, vous rappelle les échéances (formation obligatoire, assurance, renouvellements).

### Archiver

> « Archive le dossier Dupont. »

Il copie les documents dans votre archive (serveur du cabinet, dossier ou cloud), dans les dossiers et avec les noms que vous utilisez d'habitude, et note où il les a mis. **Il ne fait que copier** : dans l'archive, il ne supprime et n'écrase jamais rien.

Si vous préférez déplacer les fichiers à la main, très bien : dites-le-lui (« je les ai mis dans… ») pour qu'il les retrouve la prochaine fois.

### Les fenêtres d'autorisation

De temps en temps, Claudio installe un logiciel gratuit dont il a besoin. L'ordinateur peut alors vous demander l'autorisation :

- **Windows** : une fenêtre demande *« Voulez-vous autoriser cette application à apporter des modifications à votre appareil ? »* → cliquez sur **Oui** ;
- **Mac** : une fenêtre demande le mot de passe de l'ordinateur ou votre empreinte (**Touch ID**) ;
- **Linux** : une fenêtre demande le mot de passe de l'ordinateur.

**Cas rare, Mac et Linux uniquement** : parfois le mot de passe doit être saisi dans le **Terminal**, où Claudio ne peut pas le taper à votre place. Il prépare alors **une seule commande** et vous guide pas à pas : ouvrir le Terminal, coller la commande, appuyer sur `Entrée`, taper votre mot de passe et appuyer de nouveau sur `Entrée`. **Pendant que vous tapez le mot de passe, rien ne s'affiche à l'écran**, pas même des points : c'est normal.

> **Si Claudio vient de vous prévenir** (« une fenêtre va apparaître, cliquez sur Oui / tapez votre mot de passe »), allez-y.

> **Si personne ne vous a prévenu**, répondez **Non** (ou fermez la fenêtre) et demandez à Claudio ce qu'il était en train de faire.

Pour tout ce qui est payant, les inscriptions à votre nom ou les licences à accepter, il vous demande toujours avant.

### Les raccourcis avec la barre /

Facultatifs : demander avec des mots fonctionne tout aussi bien. Tapez `/` suivi du nom. Les noms sont en anglais, mais Claudio vous répond en français.

| Tapez | Ce que cela fait |
|---|---|
| `/help` | vous rappelle ce que vous pouvez lui demander |
| `/new-job` | ouvre un nouveau dossier avec sa fiche |
| `/learn-from-here` | étudie les travaux déposés dans la boîte |
| `/remember` | propose ce qu'il faut garder en mémoire |
| `/archive` | copie les documents finis dans l'archive |
| `/tidy-memory` | rangement mensuel de la mémoire |
| `/create-skill` | transforme un travail que vous répétez en « savoir-faire » fixe |
| `/forget` | trouve et, si vous le voulez, retire les données d'une personne ou d'une entreprise |
| `/get-tools` | se procure un logiciel qui lui manque |
| `/setup` | repose les questions de départ (si quelque chose change au cabinet) |
| `/deadlines` | ce qui arrive à échéance cette semaine, rappels au démarrage |
| `/mail` | lit les e-mails que vous collez ou déposez dans le dossier inbox, les classe par dossier, prépare les réponses (n'envoie jamais) |
| `/guided-job` | vous guide étape par étape dans un type de dossier |
| `/fill-form` | remplit un formulaire PDF ou Word avec les données qu'il connaît ; demande celles qui manquent |
| `/ask-client` | liste les pièces manquantes et rédige le message au client (vous l'envoyez) |
| `/daily-summary` | résumé du jour ou de la semaine : fait, bloqué, en attente, prochaines étapes |
| `/transcribe` | transforme notes vocales, appels et réunions en texte, sur cet ordinateur |
| `/backup` | copie de sauvegarde de la mémoire, des dossiers et des savoir-faire, vérifiée ; restauration guidée |
| `/explain` | explique depuis le début n'importe quel terme ou document, en mots simples |
| `/legal-research` | recherche les règles sur les sources officielles, avec liens et dates |
| `/check-updates` | vérification hebdomadaire d'une nouvelle version de Claudio, en lecture seule |

Avec le temps, de nouveaux apparaîtront : ce sont les savoir-faire qu'il apprend de vous.

### Les 4 choses à ne pas faire

1. **Ne déplacez pas et ne renommez pas le dossier Claudio-Assistant.** La mémoire n'est pas perdue, mais l'historique des conversations, si.
2. **Ne supprimez pas à la main les fichiers de `memory`** (la mémoire). Si quelque chose est faux, dites-le-lui et il corrige.
3. **Ne signez pas un brouillon sans l'avoir lu**, en commençant par la liste « À vérifier ».
4. **N'écrivez pas de mots de passe ni de codes PIN dans la conversation** (signature électronique, messagerie certifiée, banque).

## 2 · Pour aller plus loin

*Comment il fonctionne à l'intérieur, et quelques techniques pour mieux l'utiliser. Pas nécessaire pour travailler.*

### À quoi ressemble le dossier

```
Claudio-Assistant/
├── CLAUDE.md          les instructions de base : qui vous êtes, les règles, comment travailler
├── VERSION.txt        la version installée (pour la vérification hebdomadaire des mises à jour)
├── docs/              ce manuel, en plusieurs langues
├── memory/            la mémoire : ce qu'il sait de vous, du cabinet, du métier, des clients, fournisseurs, administrations
├── jobs/              les travaux : un par sous-dossier, chacun avec son JOB.md (la fiche)
├── good-examples/     les bons exemples : vos meilleurs travaux, classés par type
├── Learn-From-Here/   la boîte « apprends d'ici » (raccourci sur le bureau)
├── knowledge/         les connaissances : les sources officielles de votre métier (lois, formulaires, bases de données)
├── inbox/             déposez ici les e-mails qu'il doit lire et classer par dossier
├── _trash/            la corbeille : ce que Claudio retire arrive ici, c'est vous qui la videz
└── .claude/           (dossier caché) savoir-faire, autorisations, contrôles de démarrage
```

Ce sont tous des fichiers texte ordinaires : vous pouvez les ouvrir par curiosité avec le Bloc-notes (Windows), TextEdit (Mac) ou n'importe quel éditeur de texte. Pour les modifier, mieux vaut le demander à Claudio.

### Comment fonctionne la mémoire

- **À l'ouverture de chaque conversation**, Claudio lit `CLAUDE.md` et, à partir de là, les parties principales de la mémoire : qui vous êtes, vos préférences, les leçons, les outils. Le reste (fiches des clients, fournisseurs, administrations ; le métier), il l'ouvre quand c'est utile.
- La mémoire est divisée en : **cabinet** (vous, le cabinet, l'archive, les logiciels) · **métier** (travaux typiques, lois, sources) · **contacts** (clients, fournisseurs, administrations) · **décisions** (comment vous voulez les choses) · **leçons** (erreurs à ne pas répéter) · **types de travaux** (ceux déjà vus et combien de fois).
- La mémoire est écrite **dans votre langue** : c'est votre carnet.
- **Elle ne s'écrit qu'avec votre accord.** Font exception les fiches des travaux et l'inventaire technique des logiciels, qui sont de l'« état d'avancement » et non de la mémoire.
- **Elle se réorganise toute seule** : tous les 30 jours, Claudio propose de l'améliorer (diviser les fichiers trop longs, créer de nouvelles catégories, déplacer dans les savoir-faire les règles qui se répètent). Avant chaque rangement, il en fait une copie dans `memory/_history`.
- Au démarrage, un petit contrôle automatique lui signale s'il y a des fichiers dans la boîte, si le rangement est dû ou s'il manque un logiciel.

### Savoir-faire (skills) : ce que c'est et comment ils naissent

Un savoir-faire, c'est **votre méthode, mise par écrit**, pour un type de travail : quoi demander, quelles sources utiliser, dans quel ordre procéder, à quoi ressemble le document, quoi vérifier à la fin. Il sert à ce que le travail soit à chaque fois comme le meilleur que vous ayez fait, et non comme le ferait n'importe quelle IA.

- **Comment il naît** : quand un type de travail revient 2 ou 3 fois (par la boîte ou par vos dossiers), Claudio vous propose de le créer. Il regarde vos exemples, cherche en ligne s'il existe déjà quelque chose de bon sur quoi s'appuyer, vous pose 3 à 5 questions sur votre méthode et le rédige.
- **Comment il s'améliore** : chaque correction importante que vous faites peut devenir une règle du savoir-faire. Dites-le-lui : « mets à jour le savoir-faire des devis : je veux toujours la TVA à part ».
- Au premier démarrage, Claudio étudie votre métier et vous propose la liste des travaux typiques : c'est le point de départ des premiers savoir-faire.

### Autonomie : logiciels et skills qu'il se procure seul

Quand il lui manque quelque chose (un format qu'il ne sait pas lire, comme les fichiers signés P7M ou les PDF scannés, un moyen de créer un fichier Word, une connaissance technique), Claudio :

1. vérifie s'il a déjà l'outil ;
2. étudie et cherche : skills toutes prêtes, logiciels gratuits officiels, guides et lois issus de sources officielles ;
3. **contrôle** avant d'installer : source fiable, aucun envoi caché de données, aucune commande dangereuse ;
4. installe, teste et note dans `memory/office/tools.md` (la liste des outils) comment s'en servir ;
5. vous dit en une ligne ce qu'il a fait et retourne au travail.

Au premier démarrage, il installe l'**équipement de base** : Python, Node.js, Pandoc, LibreOffice, les outils pour les PDF et les scans, le navigateur Chromium et les skills officielles d'Anthropic pour Word, Excel et PDF. Si votre métier utilise des formats particuliers, il se les procure aussi.

### Les sources, et la lutte contre les inventions

Le risque avec l'IA, c'est qu'elle invente des données avec assurance. Ici la règle est : **les données ne s'écrivent pas de mémoire, elles se prennent dans une source et se citent**.

| Quoi | D'où cela vient |
|---|---|
| Lois et procédures | Sites officiels (portails nationaux des lois, ministères, collectivités régionales, votre ordre ou chambre professionnelle), enregistrés dans `knowledge` avec la date |
| Prix, tarifs, formulaires | Barèmes, tarifs et formulaires officiels de votre métier, dans `knowledge` |
| Structure et ton des documents | Vos **bons exemples** |

Les parties que Claudio écrit « de lui-même » sont seulement celles qu'aucune archive ne peut contenir : le contexte du dossier, les appréciations, les liens entre les choses. Ce sont aussi celles à relire le plus attentivement.

**Informer vos clients** : certaines lois demandent aux professionnels d'informer leurs clients qu'ils utilisent des outils d'IA (en Italie, par exemple, la loi 132/2025). Vérifiez ce qui s'applique à vous et demandez à Claudio de vous préparer un paragraphe type à insérer dans vos lettres de mission.

### Techniques pour mieux travailler

#### Une conversation par dossier

Pour chaque nouveau dossier, ouvrez une nouvelle conversation : elle reste claire et Claudio plus précis. La mémoire et les fiches passent de toute façon d'une conversation à l'autre. Les anciennes conversations restent dans la liste à gauche et peuvent être rouvertes.

#### D'abord le plan, ensuite le document

Pour les travaux longs, dites-lui : *« dis-moi d'abord comment tu comptes faire, puis vas-y »*. Corriger un plan de 10 lignes est bien plus rapide que corriger un document de 40 pages.

#### Dicter

Windows `Win` + `H` ; Mac deux fois `Fn` (ou la touche micro) ; Linux selon le bureau (Claudio peut l'installer). Idéal pour raconter une réunion qui vient de finir : parlez librement, Claudio remet de l'ordre.

#### Photos et captures d'écran

Vous pouvez coller une capture d'écran dans la conversation : une page de portail, un tableau, une erreur que vous ne comprenez pas.

- **Windows** : `Win` + `Maj` + `S`, sélectionnez la zone, puis `Ctrl` + `V` dans la conversation ;
- **Mac** : `Cmd` + `Ctrl` + `Maj` + `4`, sélectionnez la zone, puis `Cmd` + `V` dans la conversation (avec `Cmd` + `Maj` + `4`, l'image est enregistrée sur le bureau : faites-la glisser dans la conversation) ;
- **Linux** : `Impr écran`, puis collez ou faites glisser l'image dans la conversation.

#### Lui faire signaler ce que vous n'avez pas vu

Demandez-le explicitement : *« qu'est-ce qui manque ? qu'est-ce que je n'ai pas pris en compte ? »*. C'est là qu'un assistant rapporte le plus.

#### Lui apprendre exprès un nouveau travail

Inutile d'attendre qu'il le voie 3 fois : *« apprends à faire les devis : je t'ai mis trois exemples dans la boîte »*.

#### Limites d'utilisation de votre abonnement Claude

Les abonnements Claude (par exemple Pro) ont un plafond d'utilisation qui se recharge après quelques heures. Si le message « limite atteinte » apparaît, le travail n'est pas perdu : reprenez plus tard dans la même conversation. Les travaux très longs se font mieux par morceaux : d'abord la structure, puis un chapitre à la fois.

### Autorisations et sécurité

- Claude est réglé en mode **Auto** (ou « Accepter les modifications ») : Claudio travaille seul et ne s'arrête pour demander que pour les actions risquées.
- **La suppression est bloquée** : ce qui doit partir va dans `_trash` (la corbeille), et c'est vous qui la videz.
- Dans l'archive (serveur, cloud), Claudio **ne fait que copier** : il ne supprime et n'écrase rien.
- Les skills trouvées en ligne, il ne les installe que dans ce dossier, après les avoir entièrement lues et contrôlées.
- Quand l'ordinateur demande une autorisation (fenêtre « Oui », mot de passe, Touch ID), il vous prévient toujours avant. Voir Les fenêtres d'autorisation.

### Confidentialité et données des clients

Les données des clients et fournisseurs sont le **patrimoine du cabinet** : on les conserve et on les utilise. Le devoir est de **ne pas les divulguer**.

- La mémoire et les dossiers restent **sur cet ordinateur** (et dans votre archive quand vous archivez), pas sur internet.
- Ce que Claudio lit est toutefois traité par les serveurs d'Anthropic pour répondre. C'est pourquoi, dans **Paramètres → Confidentialité**, il faut **désactiver** l'utilisation de vos conversations pour améliorer les modèles.
- Quand il cherche sur internet, Claudio utilise des sujets, des lieux et des lois, **jamais** des noms, numéros fiscaux ou données de clients.
- Les données sensibles (santé, pièces d'identité, coordonnées bancaires), il ne les utilise que là où c'est nécessaire et ne les met jamais en mémoire.
- Si un client demande quelles données vous avez sur lui, ou demande leur suppression : « oublie M. Dupont ». Claudio trouve tout et ne retire que ce que vous approuvez (les documents à conserver légalement restent).
- Pas de mots de passe, codes PIN ou codes de signature électronique dans la conversation.

> **À décider pour votre cabinet** (Claudio peut préparer les textes) : un abonnement Claude avec conditions commerciales et accord de traitement des données ; la notice d'information des clients mentionnant l'usage de l'IA et, si votre loi sur la protection des données l'exige (par exemple le RGPD dans l'Union européenne), le registre des traitements ; le chiffrement du disque (**BitLocker** sur Windows, **FileVault** sur Mac, **LUKS** sur Linux). La liste à jour se trouve dans `memory/decisions/privacy.md`. Mieux vaut aussi consulter le conseiller en protection des données du cabinet.

### Copies de sauvegarde

Comme la mémoire n'existe que sur cet ordinateur, si le disque tombe en panne, elle est perdue. Une fois par semaine, Claudio vous propose une **copie de sauvegarde** de la mémoire, des exemples, des dossiers et des savoir-faire, où vous voulez (un dossier à vous sur le serveur, le cloud ou une clé USB). Vous pouvez aussi la demander quand vous voulez : « fais une copie de sauvegarde de la mémoire ».

### Mettre à jour l'assistant sans rien perdre

Si vous recevez une nouvelle version du dossier, **ne remplacez pas tout**. Les dossiers `memory` (la mémoire), `jobs` (les travaux), `good-examples` (les bons exemples), `knowledge` (les sources) et les savoir-faire nés de votre travail vous appartiennent et ne doivent pas être écrasés. Le plus simple : mettez la nouvelle version dans un dossier à part (par exemple dans Téléchargements) et dites à Claudio « il y a une mise à jour dans le dossier Téléchargements, intègre-la sans perdre ma mémoire ».

Une fois par semaine, Claudio vérifie seul, sans rien télécharger, si une version plus récente existe sur internet. Il vous dit en mots simples ce qui est nouveau (ajouté, amélioré, corrigé, retiré) et ne met à jour que si vous êtes d'accord, après une copie de sauvegarde, sans toucher à votre mémoire ni à vos dossiers.

## En cas de problème

#### Il ne se souvient pas de moi / ne sait rien de mes dossiers

Presque toujours, vous êtes dans l'onglet **Chat** au lieu de **Code**, ou le dossier sélectionné n'est pas Claudio-Assistant. Vérifiez en haut. Sur Linux, vérifiez que vous avez lancé Claude Code dans le dossier Claudio-Assistant.

#### Il me demande d'ouvrir le Terminal ou PowerShell, de convertir un fichier ou d'installer quelque chose

Il ne devrait pas. Répondez-lui : *« fais-le toi, je ne m'y connais pas »*. Si cela se reproduit, dites-lui de le noter parmi les leçons. (Seule exception : le cas rare du mot de passe dans le Terminal sur Mac ou Linux, et seulement après qu'il vous a prévenu et tout expliqué pas à pas.)

#### Il a écrit quelque chose de faux ou d'inventé

Demandez-lui *« de quelle source l'as-tu tiré ? »*. S'il n'y a pas de source, corrigez-le et dites-lui de s'en souvenir. Chaque correction le rend plus précis.

#### Un message d'erreur que je ne comprends pas apparaît

Faites une capture d'écran (Windows `Win` + `Maj` + `S` ; Mac `Cmd` + `Ctrl` + `Maj` + `4` ; Linux `Impr écran`), collez-la dans la conversation et écrivez *« qu'est-ce que c'est ? règle-le toi-même »*.

#### Il m'a donné un lien ou un chemin qui ne s'ouvre pas

Un chemin correct ressemble à ceci :

- **Windows** : il commence par la lettre du disque, par exemple `C:\Users\...`, ou par `\\` pour le serveur du cabinet ;
- **Mac** : il commence par `/Users/...`, ou `/Volumes/...` pour le serveur ;
- **Linux** : il commence par `/home/...`, ou par l'endroit où le serveur est connecté.

Si vous voyez un format mélangé (sur Windows des choses comme `/c/Users/...` ; sur Mac ou Linux des choses comme `C:\...`) ou un chemin court comme `./jobs/...`, écrivez-lui : *« le lien ne marche pas, donne-le-moi au format de mon ordinateur et vérifie qu'il existe »*.

#### Il ne trouve pas les fichiers que j'ai archivés

Dites-lui où vous les avez mis : il met à jour la fiche du dossier et les retrouvera la prochaine fois.

#### Il a atteint la limite d'utilisation

Attendez quelques heures et reprenez dans la même conversation : rien n'est perdu.

Claudio-Assistant · manuel v1 · octobre 2026. Pour toute précision, demandez à Claudio : *« explique-moi mieux la partie sur… »*

Auteur: Giuseppe Bosi · [www.giuseppebosi.com](https://www.giuseppebosi.com) · [LinkedIn](https://www.linkedin.com/in/giuseppebosi)
