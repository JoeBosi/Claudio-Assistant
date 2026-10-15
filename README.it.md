# Claudio-Assistant

[English](README.md) · **Italiano** · [Français](README.fr.md) · [Deutsch](README.de.md)

Una cartella pronta per [Claude Code](https://claude.com/claude-code) che trasforma Claude in
**Claudio**, un assistente d'ufficio molto autonomo per professionisti che non sono
programmatori. Impara come lavori *tu* dagli esempi che gli dai, ricorda ciò che conta,
si installa da solo gli strumenti e ti consegna sempre **bozze** che controlli e firmi tu.

## A chi è rivolto

A qualsiasi professionista o piccolo studio: avvocati, commercialisti, architetti, geometri,
ingegneri, consulenti, medici, traduttori… su **Windows, macOS o Linux**. Non servono
competenze tecniche: con Claudio si parla con parole semplici, nella propria lingua.

## Caratteristiche principali

- **Intervista al primo avvio.** Claudio chiede chi sei, che lavoro fai, dove tieni i file,
  quali programmi usi e come preferisci lavorare (15-20 minuti, una domanda alla volta).
- **Studia la tua professione** su fonti ufficiali e propone l'elenco dei tuoi lavori tipici.
- **Si installa da solo gli strumenti** (leggere e scrivere Word, Excel, PDF, scansioni,
  navigare in internet): tu clicchi solo "Sì" quando il sistema chiede il permesso.
- **Impara dai tuoi lavori migliori.** Metti i documenti finiti nella cartella
  `Learn-From-Here` (c'è un collegamento sul desktop): Claudio li studia e li usa come metro
  di qualità.
- **Memoria locale che si riordina da sola.** Clienti, fornitori, enti, decisioni e lezioni
  stanno in semplici file di testo dentro la cartella. Ogni 30 giorni Claudio propone un
  riordino: niente doppioni, niente contraddizioni, file divisi quando diventano troppo lunghi.
- **Chiede prima di ricordare.** In memoria non si scrive niente senza il tuo ok.
- **Crea nuove skill.** Quando un tipo di lavoro ritorna per la 2ª o 3ª volta, Claudio
  propone di trasformarlo in una skill, costruita sui tuoi esempi e sul tuo metodo.
- **Privacy prima di tutto.** I dati dei clienti restano sul tuo computer e non vengono mai
  scritti in siti web o ricerche in internet.
- **Bozze, mai documenti definitivi.** Ogni documento finisce con un elenco "Da verificare".
  Dati, prezzi e norme sono presi da una fonte e citati; se la fonte non c'è, Claudio lo dice.
- **Non ti dà sempre ragione.** Se una richiesta è sbagliata, Claudio spiega perché, con la
  fonte, e propone alternative. Decidi tu.

## Come funziona

![Come funziona Claudio](docs/how-it-works.svg)

1. **Primo avvio.** Apri la cartella in Claude Code e scrivi "ciao". Uno script di avvio
   avvisa Claude che serve la configurazione: Claudio ti intervista, installa la dotazione
   di base e studia la tua professione (serve internet).
2. **Insegnargli.** Metti 2-3 lavori ben riusciti in `Learn-From-Here` e diglielo. Capisce
   di che tipo di lavoro si tratta, li archivia in `good-examples/` e aggiorna la memoria.
3. **Lavoro di tutti i giorni.** Chiedi a parole: "nuovo lavoro per il cliente X",
   "prepara la relazione come l'ultima volta". Ogni lavoro ha la sua scheda
   (`jobs/<lavoro>/JOB.md`) con chi, cosa, stato, decisioni e dove sono i file. Puoi anche
   lavorare in una tua cartella: Claudio prima ne fa una copia di riserva.
4. **Alla fine di un lavoro** Claudio propone le 2-5 cose da ricordare e le salva solo se
   sei d'accordo.
5. **Ogni 30 giorni** propone il riordino di memoria e skill e una copia di riserva.

## Struttura della cartella

I nomi delle cartelle sono in inglese, così il pacchetto funziona ovunque; Claudio te li
spiega e scrive la memoria in italiano.

```
Claudio-Assistant/
├── CLAUDE.md                le regole dell'assistente (Claude le legge a ogni avvio)
├── README.md                questa pagina (anche .it .fr .de)
├── GETTING-STARTED.en.txt   breve guida all'installazione (anche .it .fr .de)
├── CUSTOMIZING.md           per chi prepara la cartella per una professione
├── LICENSE
├── docs/                    manuale: MANUAL.en.html, MANUAL.it.html, MANUAL.fr.html, MANUAL.de.html
├── memory/                  la memoria: tu, lo studio, la professione, anagrafiche, decisioni, lezioni
│   ├── INDEX.md
│   ├── office/              owner.md, office.md, tools.md
│   ├── contacts/            clients.md, suppliers.md, authorities.md
│   ├── decisions/           preferences.md, privacy.md
│   ├── lessons/             lessons.md
│   ├── profession.md, job-types.md, _maintenance.md
│   └── _history/            vecchie versioni conservate dal riordino
├── jobs/                    i lavori, uno per sottocartella, ognuno con la sua JOB.md
│   ├── _template/           modello di JOB.md
│   ├── _backup/             copie fatte prima di lavorare nelle tue cartelle
│   └── _archived/
├── good-examples/           i tuoi lavori migliori, per tipo: il metro di qualità
├── Learn-From-Here/         la cassetta dove lasci i lavori da far studiare a Claudio
├── knowledge/               le fonti della professione (norme, prezzari, modulistica)
├── _trash/                  il cestino: non si cancella niente, i file tolti aspettano qui
└── .claude/
    ├── settings.json
    ├── hooks/               startup.ps1 (Windows), startup.sh (macOS/Linux)
    └── skills/              help, setup, new-job, learn-from-here, remember,
                             tidy-memory, archive, create-skill, forget, get-tools
```

Le 10 skill si possono chiamare come comandi (`/help`, `/setup`, `/new-job`…) o chiedendo
semplicemente a parole.

## Requisiti

- Un **piano Claude Pro o superiore** (Max, Team, Enterprise).
- **Windows o macOS:** l'[app Claude Desktop](https://claude.ai/download), scheda **Code**.
- **Linux:** non esiste un'app desktop ufficiale; si usa la
  [Claude Code CLI](https://docs.claude.com/en/docs/claude-code) nel terminale o l'estensione
  Claude Code per VS Code.
- **Internet** per la prima configurazione (installazione degli strumenti e studio della
  professione) e per l'uso normale di Claude.

## Installazione

1. **Scarica** la cartella: su GitHub clicca *Code → Download ZIP* ed estraila, oppure
   `git clone https://github.com/JoeBosi/Claudio-Assistant.git`.
2. **Mettila in un posto stabile**, per esempio `Documenti/Claudio-Assistant`, e **non
   spostarla più**: lo storico delle chat è legato a quel percorso (la memoria sta dentro la
   cartella e non si perde). Se vuoi rinominarla (es. `Avvocato-Claudio`), fallo prima del
   primo avvio.
3. **Aprila in Claude Code**: nell'app desktop, scheda *Code*, scegli la cartella come
   cartella di lavoro (su Linux: entra nella cartella con `cd` e lancia `claude`).
4. **Fidati della cartella** quando viene chiesto: serve per i permessi e lo script di avvio.
5. **Modalità dei permessi:** nell'app scegli **"Auto"** se c'è (Claude lavora da solo e
   chiede conferma solo per le azioni rischiose); altrimenti **"Accetta modifiche"**. (Linux, Claude Code nel
   terminale: la modalità si cambia con Maiusc+Tab.)
6. **Scrivi "ciao".** Claudio si presenta e inizia la configurazione. Conviene fare la prima
   sessione insieme alla persona che lo userà.

Guide passo passo per chi lo installa: `GETTING-STARTED.<lingua>.txt`.

## Note sulla privacy

Claudio è pensato per tenere i dati dei clienti in locale e non divulgarli mai, ma la
conversazione passa comunque dal servizio di Anthropic. Prima di lavorare con dati veri:

- Nelle impostazioni di Claude disattiva l'opzione che permette ad Anthropic di usare le chat per
  migliorare i modelli (Impostazioni → Privacy) (uso delle chat
  per l'addestramento).
- Per i dati dei clienti valuta un **piano commerciale** (Team / Enterprise / API) con un
  **accordo sul trattamento dei dati (DPA)**.
- Attiva la **cifratura del disco** (BitLocker, FileVault, LUKS): la memoria è salvata in
  file di testo sul tuo computer.
- Parla con il tuo **consulente per la protezione dei dati** (es. GDPR nell'UE) e verifica le
  regole del tuo ordine o collegio sull'uso dell'IA. Diverse leggi lasciano al professionista
  la responsabilità del lavoro svolto con l'IA (es. l'AI Act europeo; in Italia la
  Legge 132/2025).

## Aggiornare senza perdere la memoria

La tua memoria e il tuo lavoro stanno in `memory/`, `jobs/`, `good-examples/`, `knowledge/`
e nelle skill che Claudio ha creato per te. **Non sovrascrivere la cartella** con una
versione nuova. Il modo più semplice: scarica la versione nuova in una cartella a parte e di'
a Claudio "c'è un aggiornamento in <cartella>, integralo senza perdere la mia memoria".
Aggiorna regole, manuali e skill standard e lascia stare i tuoi dati.
Non usare `git pull` su una cartella già in uso: la configurazione compila i file della
memoria e un pull andrebbe in conflitto con i tuoi dati.

## Personalizzarlo per una professione

Claudio si adatta da solo al primo avvio. Se vuoi prepararlo in anticipo per una
professione (fonti in `knowledge/`, profilo della professione, skill già pronte), vedi
[CUSTOMIZING.md](CUSTOMIZING.md) (in inglese).

## Limiti e note oneste

- **Provato sul campo:** l'autore ha installato Claudio su un vero computer di studio con l'app
  Claude Desktop (ottobre 2026) e ha funzionato tutto: configurazione, installazione degli
  strumenti, apprendimento dagli esempi, memoria.
- **Provati anche:** `startup.sh` su Linux; `startup.ps1` con PowerShell 7. Segnalazioni e issue
  su altri sistemi e versioni sono benvenute.
- A volte Claude scrive percorsi nel formato sbagliato per il sistema (es. percorsi "alla
  Linux" su Windows). C'è una regola contro questo in `CLAUDE.md`; controllalo nelle prime
  sessioni.
- Le skill Anthropic **docx / pdf / xlsx / pptx** **non sono incluse** perché la loro licenza
  non ne permette la redistribuzione. Claudio le installa (o installa alternative gratuite)
  da solo al primo avvio.
- La modalità "Auto" non si può impostare dai file del progetto: si sceglie nell'app.
- Claudio è un assistente: i documenti che prepara sono bozze. Il professionista li
  controlla, li firma e ne resta responsabile.

## Lingue

README: [English](README.md) · [Italiano](README.it.md) · [Français](README.fr.md) · [Deutsch](README.de.md)
Manuale: [English](docs/MANUAL.en.html) · [Italiano](docs/MANUAL.it.html) · [Français](docs/MANUAL.fr.html) · [Deutsch](docs/MANUAL.de.html)
Claudio ti parla nella tua lingua, qualunque sia.

## Origine

Il pacchetto deriva da un assistente reale costruito per uno studio di geometri nell'ottobre
2026, reso generico per qualsiasi professione.

## Licenza

MIT — vedi [LICENSE](LICENSE).

## Autore

Giuseppe Bosi — GitHub [@JoeBosi](https://github.com/JoeBosi)
