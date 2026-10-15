# Claudio-Assistant

[English](README.md) · [Italiano](README.it.md) · **Français** · [Deutsch](README.de.md)

Un dossier prêt à l'emploi pour [Claude Code](https://claude.com/claude-code) qui transforme
Claude en **Claudio**, un assistant de bureau très autonome pour les professionnels qui ne
sont pas programmeurs. Il apprend comment *vous* travaillez à partir des exemples que vous lui
donnez, retient ce qui compte, installe lui-même ses outils et vous remet toujours des
**brouillons** que vous vérifiez et signez.

## Pour qui

Tout professionnel ou petit cabinet : avocats, experts-comptables, architectes, géomètres,
ingénieurs, consultants, médecins, traducteurs… sous **Windows, macOS ou Linux**. Aucune
compétence technique n'est nécessaire : on parle à Claudio avec des mots simples, dans sa
propre langue.

## Fonctionnalités principales

- **Entretien au premier démarrage.** Claudio vous demande qui vous êtes, ce que vous faites,
  où sont vos fichiers, quels logiciels vous utilisez et comment vous aimez travailler
  (15-20 minutes, une question à la fois).
- **Étudie votre profession** à partir de sources officielles et propose la liste de vos
  travaux types.
- **Installe lui-même ses outils** (lire et écrire Word, Excel, PDF, documents numérisés,
  navigation web) : vous cliquez seulement sur « Oui » quand le système demande l'autorisation.
- **Apprend de vos meilleurs travaux.** Déposez des documents terminés dans le dossier
  `Learn-From-Here` (un raccourci est placé sur votre bureau) : Claudio les étudie et s'en sert
  comme référence de qualité.
- **Mémoire locale qui se range toute seule.** Clients, fournisseurs, administrations,
  décisions et leçons sont conservés dans de simples fichiers texte à l'intérieur du dossier.
  Tous les 30 jours, Claudio propose un rangement : pas de doublons, pas de contradictions,
  fichiers découpés quand ils deviennent trop longs.
- **Demande avant de mémoriser.** Rien n'est écrit en mémoire sans votre accord.
- **Crée de nouvelles compétences (skills).** Quand un type de travail revient pour la 2e ou
  3e fois, Claudio propose d'en faire une skill, construite sur vos exemples et votre méthode.
- **La confidentialité d'abord.** Les données des clients restent sur votre ordinateur et ne
  sont jamais saisies sur des sites web ni dans des recherches en ligne.
- **Des brouillons, jamais des documents définitifs.** Chaque document se termine par une
  liste « À vérifier ». Données, prix et textes de loi sont tirés d'une source et cités ;
  sans source, Claudio le dit.
- **Ne vous donne pas toujours raison.** Si une demande est erronée, Claudio explique
  pourquoi, avec la source, et propose des alternatives. Vous décidez.

## Comment ça marche

![Comment fonctionne Claudio](docs/how-it-works.svg)

1. **Premier démarrage.** Vous ouvrez le dossier dans Claude Code et dites « bonjour ». Un
   script de démarrage signale à Claude que la configuration est à faire : Claudio vous
   interroge, installe les outils de base et étudie votre profession (Internet nécessaire).
2. **Lui apprendre.** Mettez 2-3 bons travaux passés dans `Learn-From-Here` et dites-le-lui.
   Il identifie le type de chaque travail, les range dans `good-examples/` et met à jour la
   mémoire.
3. **Travail quotidien.** Demandez avec des mots : « nouveau dossier pour le client X »,
   « prépare le rapport comme la dernière fois ». Chaque travail a sa fiche
   (`jobs/<travail>/JOB.md`) : qui, quoi, état, décisions et emplacement des fichiers. Vous
   pouvez aussi travailler dans un dossier à vous : Claudio en fait d'abord une copie de
   sauvegarde.
4. **À la fin d'un travail**, Claudio propose les 2-5 choses à retenir et ne les enregistre
   que si vous êtes d'accord.
5. **Tous les 30 jours**, il propose de ranger la mémoire et les skills, ainsi qu'une copie de
   sauvegarde.

## En action

Réponses réelles de Claude Code avec ce dossier (utilisatrice fictive, conversation en anglais).

![Premier démarrage : l'entretien de configuration](docs/screenshots/first-start.png)

![Apprentissage à partir d'un rapport déposé dans Learn-From-Here](docs/screenshots/learn-from-here.png)

## Structure du dossier

Les noms des dossiers sont en anglais pour que le paquet fonctionne partout ; Claudio vous
les explique et écrit la mémoire dans votre langue.

```
Claudio-Assistant/
├── CLAUDE.md                les règles de l'assistant (lues par Claude à chaque démarrage)
├── README.md                cette page (aussi .it .fr .de)
├── GETTING-STARTED.en.txt   guide d'installation rapide (aussi .it .fr .de)
├── CUSTOMIZING.md           pour qui prépare le dossier pour une profession
├── LICENSE
├── docs/                    manuel : MANUAL.en.html, MANUAL.it.html, MANUAL.fr.html, MANUAL.de.html
├── memory/                  la mémoire : vous, le cabinet, la profession, contacts, décisions, leçons
│   ├── INDEX.md
│   ├── office/              owner.md, office.md, tools.md
│   ├── contacts/            clients.md, suppliers.md, authorities.md
│   ├── decisions/           preferences.md, privacy.md
│   ├── lessons/             lessons.md
│   ├── profession.md, job-types.md, _maintenance.md
│   └── _history/            anciennes versions conservées lors du rangement
├── jobs/                    un sous-dossier par travail, chacun avec sa fiche JOB.md
│   ├── _template/           modèle de JOB.md
│   ├── _backup/             copies faites avant de travailler dans vos propres dossiers
│   └── _archived/
├── good-examples/           vos meilleurs travaux, par type : la référence de qualité
├── Learn-From-Here/         la boîte de dépôt des travaux que Claudio doit étudier
├── knowledge/               les sources de votre profession (lois, barèmes, formulaires)
├── _trash/                  rien n'est supprimé : les fichiers retirés attendent ici
└── .claude/
    ├── settings.json
    ├── hooks/               startup.ps1 (Windows), startup.sh (macOS/Linux)
    └── skills/              help, setup, new-job, learn-from-here, remember,
                             tidy-memory, archive, create-skill, forget, get-tools
```

Les 10 skills s'appellent comme des commandes (`/help`, `/setup`, `/new-job`…) ou simplement
en le demandant avec des mots.

## Prérequis

- Un **abonnement Claude Pro ou supérieur** (Max, Team, Enterprise).
- **Windows ou macOS :** l'[application Claude Desktop](https://claude.ai/download), onglet
  **Code**.
- **Linux :** il n'existe pas d'application de bureau officielle ; utilisez la
  [Claude Code CLI](https://docs.claude.com/en/docs/claude-code) dans le terminal ou
  l'extension Claude Code pour VS Code.
- **Internet** pour la première configuration (installation des outils et étude de la
  profession) et pour l'utilisation normale de Claude.

## Installation

1. **Téléchargez** le dossier : sur GitHub, cliquez sur *Code → Download ZIP* et
   décompressez-le, ou `git clone https://github.com/JoeBosi/Claudio-Assistant.git`.
2. **Placez-le à un endroit stable**, par ex. `Documents/Claudio-Assistant`, et **ne le
   déplacez plus** ensuite : l'historique des conversations est lié à ce chemin (la mémoire
   est dans le dossier et ne se perd pas). Pour le renommer (par ex. `Avocat-Claudio`),
   faites-le avant le premier démarrage.
3. **Ouvrez-le dans Claude Code** : dans l'application de bureau, onglet *Code*, choisissez
   le dossier comme dossier de travail (sous Linux : `cd` dans le dossier puis `claude`).
4. **Faites confiance au dossier** quand c'est demandé : c'est nécessaire pour les
   autorisations et le script de démarrage.
5. **Mode d'autorisation :** dans l'application, choisissez **« Auto »** s'il existe (Claude
   travaille seul et ne demande confirmation que pour les actions risquées) ; sinon
   **« Accepter les modifications »**. (Linux, Claude Code dans le
   terminal : changez de mode avec Maj+Tab.)
6. **Dites « bonjour ».** Claudio se présente et lance la configuration. Il est conseillé de
   faire la première session avec la personne qui l'utilisera.

Guides pas à pas pour la personne qui l'installe : `GETTING-STARTED.<langue>.txt`.

## Confidentialité

Claudio est conçu pour garder les données des clients en local et ne jamais les divulguer,
mais la conversation elle-même passe par le service d'Anthropic. Avant de travailler avec de
vraies données de clients :

- Dans les paramètres de Claude, désactivez l'option qui permet à Anthropic d'utiliser vos
  conversations pour améliorer ses modèles (Paramètres → Confidentialité) (utilisation
  des conversations pour l'entraînement).
- Pour les données de clients, envisagez un **abonnement professionnel** (Team / Enterprise /
  API) avec un **accord de traitement des données (DPA)**.
- Activez le **chiffrement du disque** (BitLocker, FileVault, LUKS) : la mémoire est stockée
  dans des fichiers texte sur votre ordinateur.
- Parlez-en à votre **délégué ou conseiller à la protection des données** (par ex. au titre
  du RGPD dans l'UE) et vérifiez les règles de votre ordre ou chambre professionnelle sur
  l'usage de l'IA. Plusieurs lois laissent au professionnel la responsabilité du travail
  réalisé avec l'IA (par ex. le règlement européen sur l'IA, AI Act).

## Mettre à jour sans perdre la mémoire

Votre mémoire et votre travail se trouvent dans `memory/`, `jobs/`, `good-examples/`,
`knowledge/` et dans les skills que Claudio a créées pour vous. **N'écrasez pas le dossier**
avec une nouvelle version. Le plus simple : téléchargez la nouvelle version dans un dossier à
part et dites à Claudio « il y a une mise à jour dans <dossier>, intègre-la sans perdre ma
mémoire ». Il met à jour les règles, les manuels et les skills standard sans toucher à vos
données.
N'utilisez pas `git pull` sur un dossier déjà en service : la configuration remplit les
fichiers de mémoire et un pull entrerait en conflit avec vos données.

## Adapter à une profession

Claudio s'adapte tout seul au premier démarrage. Pour le préparer à l'avance pour une
profession (sources dans `knowledge/`, profil de la profession, skills prêtes à l'emploi),
voir [CUSTOMIZING.md](CUSTOMIZING.md) (en anglais).

## Limites et remarques honnêtes

- **Testé en conditions réelles :** l'auteur a installé Claudio sur un vrai ordinateur de
  bureau avec l'application Claude Desktop (octobre 2026) et tout a fonctionné : configuration,
  installation des outils, apprentissage à partir des exemples, mémoire.
- **Testés aussi :** `startup.sh` sous Linux ; `startup.ps1` avec PowerShell 7. Retours et
  issues sur d'autres systèmes et versions bienvenus.
- Claude écrit parfois des chemins au mauvais format pour le système (par ex. des chemins
  « style Linux » sous Windows). Une règle de `CLAUDE.md` l'interdit ; surveillez-le lors des
  premières sessions.
- Les skills Anthropic **docx / pdf / xlsx / pptx** **ne sont pas incluses** car leur licence
  n'en permet pas la redistribution. Claudio les installe (ou des alternatives gratuites)
  automatiquement au premier démarrage.
- Le mode « Auto » ne peut pas être défini depuis les fichiers du projet : il se choisit dans
  l'application.
- Claudio est un assistant : les documents qu'il prépare sont des brouillons. Le
  professionnel les vérifie, les signe et en reste responsable.

## Langues

README : [English](README.md) · [Italiano](README.it.md) · [Français](README.fr.md) · [Deutsch](README.de.md)
Manuel : [English](docs/MANUAL.en.html) · [Italiano](docs/MANUAL.it.html) · [Français](docs/MANUAL.fr.html) · [Deutsch](docs/MANUAL.de.html)
Claudio vous parle dans votre langue, quelle qu'elle soit.

## Origine

Le paquet est issu d'un véritable assistant construit pour un cabinet de géomètres en
octobre 2026, puis généralisé pour toutes les professions.

## Licence

MIT — voir [LICENSE](LICENSE).

## Auteur

Giuseppe Bosi — GitHub [@JoeBosi](https://github.com/JoeBosi)
