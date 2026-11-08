# Claudio-Assistant

*Questo manuale viene generato anche come pagina HTML in questa cartella al primo avvio, per una lettura comoda nel browser.*

Il tuo assistente di studio, che impara il tuo lavoro giorno per giorno. Come si usa, e come funziona dentro.

## 1 · Manuale d'uso

Le cose che userai tutti i giorni. Bastano queste.

1. [Come si apre](#open)
2. [Come gli parli](#talk)
3. [Iniziare un lavoro nuovo](#new)
4. [Dargli file, foto, documenti](#files)
5. [Le bozze: tu controlli e firmi](#drafts)
6. [La cassetta Learn-From-Here](#inbox)
7. [Fargli ricordare le cose](#remember)
8. [Archiviare](#archive)
9. [Le finestre dei permessi](#permission)
10. [Le scorciatoie con la barra /](#commands)
11. [Le 4 cose da non fare](#dont)

### Come si apre

**Su Windows e Mac**:

1. Apri l'app **Claude**.
2. In alto scegli la scheda **Code**. Le chat normali (scheda **Chat**) **non** vedono la memoria né i tuoi lavori.
3. Controlla che la cartella selezionata sia **Claudio-Assistant**.
4. Scrivi. Per un lavoro nuovo apri una **nuova chat**: la memoria resta comunque.

**Su Linux** l'app Claude non c'è. Si usa **Claude Code** in uno di questi due modi:

- in **VS Code** (un programma gratuito): apri la cartella **Claudio-Assistant**, poi clicca sull'icona di Claude;
- nel **Terminale**: apri la cartella **Claudio-Assistant** nel Terminale e scrivi `claude`.

Chi ti ha preparato il computer può farti un collegamento che fa tutto con un clic.

> La prima volta Claudio si presenta e ti fa qualche domanda per conoscerti (15-20 minuti). Poi installa da solo i programmi che gli servono.

### Come gli parli

Come parleresti a un bravo collaboratore di studio. Non servono comandi né parole tecniche.

> "Nuovo lavoro per il cliente Rossi srl: …"

> "Fammi la bozza della relazione. Usa come modello quella dell'anno scorso."

> "Prepara il verbale della riunione di stamattina: c'erano Rossi e Bianchi, abbiamo deciso…"

> "Il cliente mi ha mandato questi documenti, controlla che ci sia tutto."

**Claudio parla la tua lingua.** Al primo avvio ti chiede in che lingua preferisci; fino ad allora risponde nella lingua in cui scrivi. I nomi delle cartelle restano in inglese (sono i nomi veri sul disco), ma lui te li spiega sempre.

**Puoi anche dettare a voce** invece di scrivere:

- **Windows**: premi `Win` + `H` e parla;
- **Mac**: premi due volte `Fn` (o il tasto del microfono) e parla. Se non succede niente, attivala in Impostazioni di Sistema → Tastiera → Dettatura;
- **Linux**: dipende dal tuo desktop. Chiedi a Claudio: "attivami la dettatura".

Claudio capisce anche frasi in disordine. Più contesto gli dai (dove, cosa, chi, quando), meglio lavora. Se manca qualcosa, te lo chiede lui.

**Non ti dà sempre ragione**: se una richiesta è sbagliata (una norma, un calcolo, una procedura) te lo dice, spiega perché e ti propone le alternative. Poi decidi tu.

**Va su internet da solo** (con il navigatore Chromium) per norme, portali pubblici e informazioni tecniche. Non scrive mai sui siti i dati dei tuoi clienti.

### Iniziare un lavoro nuovo

Basta dirgli "nuovo lavoro" con il cliente e cosa si fa. Lui:

- crea una sottocartella per quel lavoro dentro `jobs` (la cartella dei lavori), con una **scheda** che riassume tutto (chi, cosa, a che punto siamo);
- controlla se cliente, fornitori e uffici li conosce già;
- ti propone da dove partire.

**Ti chiede dove lavorare**: nella sua cartella standard oppure in una cartella tua (per esempio quella dove hai già messo i documenti del cliente). Se scegli la tua, **prima ne fa una copia di riserva** e non tocca i documenti che ci sono già.

Le volte dopo, basta dire "riprendiamo il lavoro per Rossi": legge la scheda e sa dove eravate rimasti.

### Dargli file, foto, documenti

- **Trascina** i file (PDF, Word, Excel, foto, scansioni) dentro la chat, oppure
- mettili nella cartella del lavoro, in `received` (materiale ricevuto), e diglielo.

Le **foto e le scansioni** le guarda davvero: legge anche documenti fotografati col telefono.

Se un formato non lo sa ancora leggere, si procura da solo il programma che serve. **Non devi convertire niente.**

### Le bozze: tu controlli e firmi

Claudio prepara, **tu controlli e firmi**. Resti tu il responsabile, e lo chiedono diverse leggi (per esempio l'AI Act europeo e, in Italia, la L. 132/2025 per le professioni intellettuali).

- Ogni dato porta la sua fonte: la norma con l'articolo, il documento o il sito ufficiale da cui è preso.
- In fondo a ogni bozza trovi l'elenco **"Da verificare"**: ipotesi fatte, dati mancanti, dubbi. Parti da lì.
- Se vedi `[DA VERIFICARE: …]` (o `[TO CHECK: …]`) nel testo, è un punto dove lui non aveva una fonte sicura.

> Se trovi un errore, diglielo: "qui hai sbagliato, la scadenza è a 60 giorni, non a 30". Lo corregge e ti chiede se ricordarlo per la prossima volta.

### La cassetta Learn-From-Here

Sul desktop hai il collegamento **Learn-From-Here (Claude)**, cioè "impara da qui". Mettici i lavori che ti sono venuti bene e che vuoi che impari a rifare:

- solo il documento finito (PDF, Word, Excel…), oppure
- il documento e un tuo appunto, anche di due righe ("guarda come ho fatto le conclusioni"), oppure
- una cartella intera con tutti i file di un lavoro.

Poi digli ""ti ho messo dei lavori nella cassetta"". Se te ne dimentichi, se ne accorge da solo alla chat successiva.

Lui li studia, ti dice cosa ha capito, li sposta fra gli **esempi buoni** (la cartella `good-examples`) e la cassetta torna vuota. Non cancella niente. Quando vede lo stesso tipo di lavoro 2-3 volte, ti propone di impararlo come **mestiere fisso** (una "skill").

### Fargli ricordare le cose

> "Ricordati che il cliente Rossi vuole sempre il preventivo prima di iniziare."

> "D'ora in poi le date le voglio scritte per esteso."

A fine lavoro è lui a proporti cosa ricordare, in un elenco numerato. Rispondi "sì, tutte" oppure "togli la 2". **Non salva niente senza il tuo ok.**

Una volta al mese ti propone di **riordinare la memoria**: unisce doppioni, toglie cose vecchie, ti ricorda scadenze (formazione obbligatoria, assicurazione, rinnovi).

### Archiviare

> "Archivia il lavoro per Rossi."

Copia i documenti nel tuo archivio (server dello studio, cartella o cloud), nelle cartelle e con i nomi che usate di solito, e annota dove li ha messi. **Copia soltanto**: nell'archivio non cancella e non sovrascrive niente.

Se preferisci spostare i file a mano, va benissimo: diglielo ("li ho messi in…") così la prossima volta li ritrova.

### Le finestre dei permessi

Ogni tanto Claudio installa un programma gratuito che gli serve. Il computer può allora chiederti il permesso:

- **Windows**: una finestra chiede *"Vuoi consentire a questa app di apportare modifiche al dispositivo?"* → clicca **Sì**;
- **Mac**: una finestra chiede la password del computer o l'impronta (**Touch ID**);
- **Linux**: una finestra chiede la password del computer.

**Caso raro, solo Mac e Linux**: a volte la password serve dentro il **Terminale**, dove Claudio non può scriverla al posto tuo. Allora prepara **un solo comando** e ti guida passo passo: apri il Terminale, incolli il comando, premi `Invio`, scrivi la tua password e premi di nuovo `Invio`. **Mentre scrivi la password sullo schermo non compare niente**, nemmeno i puntini: è normale.

> **Se Claudio ti ha appena avvisato** ("tra poco compare una finestra, clicca Sì / scrivi la password"), vai pure.

> **Se nessuno ti ha avvisato**, rispondi **No** (o chiudi la finestra) e chiedi a Claudio cosa stava facendo.

Per cose a pagamento, registrazioni a tuo nome o licenze da accettare ti chiede sempre prima.

### Le scorciatoie con la barra /

Facoltative: chiedere a parole funziona uguale. Scrivi `/` e il nome. I nomi sono in inglese, ma Claudio ti risponde in italiano.

| Scrivi | Cosa fa |
|---|---|
| `/help` | ti ricorda cosa puoi chiedergli |
| `/new-job` | apre un lavoro nuovo con la sua scheda |
| `/learn-from-here` | studia i lavori che hai messo nella cassetta |
| `/remember` | propone cosa tenere in memoria |
| `/archive` | copia i documenti finiti nell'archivio |
| `/tidy-memory` | riordino mensile della memoria |
| `/create-skill` | trasforma un lavoro che ripeti in un "mestiere" fisso |
| `/forget` | trova e, se vuoi, toglie i dati di una persona o azienda |
| `/get-tools` | si procura un programma che gli manca |
| `/setup` | rifà le domande iniziali (se cambia qualcosa nello studio) |
| `/deadlines` | cosa scade questa settimana, avvisi all'avvio |
| `/mail` | legge le email che incolli o lasci nella cartella inbox, le smista per pratica, prepara le risposte (non invia mai) |
| `/guided-job` | ti guida passo per passo in un tipo di pratica |
| `/fill-form` | compila un modulo PDF o Word con i dati che conosce; chiede quelli mancanti |
| `/ask-client` | elenca i documenti mancanti e scrive il messaggio al cliente (lo invii tu) |
| `/daily-summary` | riepilogo del giorno o della settimana: fatto, fermo, in attesa, prossimi passi |
| `/transcribe` | trasforma note vocali, telefonate e riunioni in testo, su questo computer |
| `/backup` | copia di sicurezza di memoria, lavori e mestieri, verificata; ripristino guidato |
| `/explain` | spiega da zero qualunque termine o documento, in parole semplici |
| `/legal-research` | cerca le norme su fonti ufficiali, con link e date |
| `/check-updates` | controllo settimanale di una nuova versione di Claudio, in sola lettura |

Col tempo ne compariranno di nuove: sono i mestieri che impara da te.

### Le 4 cose da non fare

1. **Non spostare né rinominare la cartella Claudio-Assistant.** La memoria non si perde, ma lo storico delle chat sì.
2. **Non cancellare a mano i file in `memory`** (la memoria). Se qualcosa è sbagliato, diglielo e lo corregge lui.
3. **Non firmare una bozza senza averla letta**, partendo dall'elenco "Da verificare".
4. **Non scrivere password o PIN in chat** (firma digitale, PEC, banca).

## 2 · Approfondimenti

Come funziona dentro, e qualche tecnica per usarlo meglio. Non serve per lavorare.

1. [Com'è fatta la cartella](#folder)
2. [Come funziona la memoria](#memory)
3. [Mestieri (skill): cosa sono e come nascono](#skills)
4. [Autonomia: programmi e skill che si procura da solo](#autonomy)
5. [Le fonti e la lotta alle invenzioni](#sources)
6. [Tecniche per lavorare meglio](#techniques)
7. [Permessi e sicurezza](#security)
8. [Privacy e dati dei clienti](#privacy)
9. [Copie di riserva](#backup)
10. [Aggiornare l'assistente senza perdere niente](#updates)

### Com'è fatta la cartella

```
Claudio-Assistant/
├── CLAUDE.md          le istruzioni di base: chi sei, le regole, come lavorare
├── VERSION            la versione installata (per il controllo settimanale degli aggiornamenti)
├── docs/              questo manuale, in più lingue
├── memory/            la memoria: quello che sa di te, dello studio, della professione, di clienti, fornitori, enti
├── jobs/              i lavori: uno per sottocartella, ognuno con il suo JOB.md (la scheda)
├── good-examples/     gli esempi buoni: i tuoi lavori migliori, divisi per tipo
├── Learn-From-Here/   la cassetta "impara da qui" (collegamento sul desktop)
├── knowledge/         la conoscenza: le fonti ufficiali della tua professione (norme, modulistica, banche dati)
├── inbox/             qui lasci le email che deve leggere e smistare per pratica
├── _trash/            il cestino: quello che Claudio toglie finisce qui, lo svuoti tu
└── .claude/           (cartella nascosta) mestieri, permessi, controlli di avvio
```

Sono tutti file di testo normali: puoi aprirli per curiosità con il Blocco note (Windows), TextEdit (Mac) o qualsiasi editor di testo. Le modifiche però è meglio chiederle a Claudio.

### Come funziona la memoria

- **All'apertura di ogni chat** Claudio legge `CLAUDE.md` e da lì le parti principali della memoria: chi sei, le tue preferenze, le lezioni, gli strumenti. Il resto (anagrafiche di clienti, fornitori, uffici; la professione) lo apre quando serve.
- La memoria è divisa in: **studio** (tu, lo studio, archivio, programmi) · **professione** (lavori tipici, norme, fonti) · **anagrafiche** (clienti, fornitori, enti) · **decisioni** (come vuoi le cose) · **lezioni** (errori da non ripetere) · **tipi di lavoro** (quelli visti e quante volte).
- La memoria è scritta **nella tua lingua**: è il tuo quaderno.
- **Si scrive solo col tuo ok.** Fanno eccezione le schede dei lavori e l'inventario tecnico dei programmi, che sono "stato dei lavori" e non memoria.
- **Si riorganizza da sola**: ogni 30 giorni Claudio propone di migliorarla (dividere file lunghi, creare categorie nuove, spostare dentro i mestieri le regole che si ripetono). Prima di ogni riordino ne fa una copia in `memory/_history`.
- All'avvio un piccolo controllo automatico gli segnala se ci sono file nella cassetta, se il riordino è scaduto o se manca un programma.

### Mestieri (skill): cosa sono e come nascono

Un mestiere è **il tuo metodo scritto** per un tipo di lavoro: cosa chiedere, quali fonti usare, in che ordine procedere, com'è fatto il documento, cosa controllare alla fine. Serve perché il lavoro venga ogni volta come il migliore che hai fatto, e non come lo farebbe un'AI qualsiasi.

- **Come nasce**: quando un tipo di lavoro arriva 2-3 volte (dalla cassetta o dai lavori), Claudio ti propone di crearlo. Guarda i tuoi esempi, cerca se online esiste già qualcosa di buono su cui costruire, ti fa 3-5 domande sul tuo metodo e lo scrive.
- **Come migliora**: ogni correzione importante che fai può diventare una regola del mestiere. Diglielo: ""aggiorna il mestiere dei preventivi: l'IVA la voglio sempre separata"".
- Al primo avvio Claudio studia la tua professione e ti propone l'elenco dei lavori tipici: è il punto di partenza per i primi mestieri.

### Autonomia: programmi e skill che si procura da solo

Quando gli manca qualcosa (un formato che non sa leggere come P7M o PDF scansionati, un modo per creare un file Word, una conoscenza tecnica), Claudio:

1. controlla se lo strumento ce l'ha già;
2. studia e cerca: skill già pronte, programmi gratuiti ufficiali, guide e norme dalle fonti ufficiali;
3. **verifica** prima di installare: fonte affidabile, nessun invio nascosto di dati, nessun comando pericoloso;
4. installa, prova e annota in `memory/office/tools.md` (l'elenco degli strumenti) come si usa;
5. ti dice in una riga cosa ha fatto e torna al lavoro.

Al primo avvio installa la **dotazione di base**: Python, Node.js, Pandoc, LibreOffice, gli strumenti per PDF e scansioni, il navigatore Chromium e i mestieri ufficiali di Anthropic per Word, Excel e PDF. Se la tua professione usa formati particolari, si procura anche quelli.

### Le fonti e la lotta alle invenzioni

Il rischio delle AI è che inventino dati con sicurezza. Qui la regola è: **i dati non si scrivono a memoria, si prendono da una fonte e si citano**.

| Cosa | Da dove viene |
|---|---|
| Norme e procedure | Siti ufficiali (portali nazionali delle leggi, ministeri, enti regionali, il tuo Ordine o Collegio), salvati in `knowledge` con la data |
| Prezzi, tariffe, moduli | Prezzari, tariffari e modulistica ufficiali della tua professione, in `knowledge` |
| Struttura e tono dei documenti | I tuoi **esempi buoni** |

Le parti che Claudio scrive "di testa sua" sono solo quelle che nessun archivio può contenere: il contesto del singolo lavoro, le valutazioni, i collegamenti fra le cose. Sono anche quelle da rileggere con più attenzione.

**Informativa al cliente**: alcune leggi chiedono ai professionisti di comunicare al cliente che usano strumenti di AI (in Italia, per esempio, la L. 132/2025). Verifica cosa vale per te e chiedi a Claudio di prepararti un paragrafo standard da mettere negli incarichi.

### Tecniche per lavorare meglio

#### Una chat per lavoro

Per ogni lavoro nuovo apri una chat nuova: la chat resta ordinata e Claudio più preciso. La memoria e le schede dei lavori passano comunque da una chat all'altra. Le chat vecchie restano nell'elenco a sinistra e si possono riaprire.

#### Prima il piano, poi il documento

Per i lavori lunghi digli: *"prima dimmi come pensi di farlo, poi procedi"*. Correggere un piano di 10 righe è molto più veloce che correggere un documento di 40 pagine.

#### Dettare a voce

Windows `Win` + `H`; Mac due volte `Fn` (o il tasto del microfono); Linux dipende dal desktop (Claudio può attivarla). Ottima per raccontare un incontro appena finito: parla liberamente, Claudio rimette in ordine.

#### Foto e schermate

Puoi incollare in chat una schermata: una pagina di un portale, una tabella, un errore che non capisci.

- **Windows**: `Win` + `Shift` + `S`, scegli la zona, poi `Ctrl` + `V` nella chat;
- **Mac**: `Cmd` + `Ctrl` + `Shift` + `4`, scegli la zona, poi `Cmd` + `V` nella chat (con `Cmd` + `Shift` + `4` invece l'immagine finisce sul desktop: trascinala nella chat);
- **Linux**: `Stamp` (o `PrtSc`), poi incolla o trascina l'immagine nella chat.

#### Fargli suggerire quello che non hai visto

Chiedi esplicitamente: *"cosa manca? cosa non ho considerato?"*. È una delle cose in cui un assistente rende di più.

#### Insegnargli un lavoro nuovo apposta

Non devi aspettare che lo veda 3 volte: *"impara a fare i preventivi: ti ho messo tre esempi nella cassetta"*.

#### Limiti di utilizzo del tuo piano Claude

I piani Claude (per esempio Pro) hanno un tetto di utilizzo che si ricarica dopo alcune ore. Se compare il messaggio di limite raggiunto, il lavoro non si perde: riprendi più tardi dalla stessa chat. I lavori molto lunghi conviene farli a pezzi: prima la struttura, poi un capitolo alla volta.

### Permessi e sicurezza

- Claude è impostato in modalità **Auto** (o "Accetta modifiche"): Claudio lavora da solo e si ferma a chiedere solo per azioni rischiose.
- **Cancellare è bloccato**: quello che va tolto finisce in `_trash` (il cestino), e lo svuoti tu.
- Nell'archivio (server, cloud) Claudio **copia soltanto**: non cancella e non sovrascrive.
- Le skill trovate online le installa solo in questa cartella, dopo averle lette tutte e controllate.
- Quando il computer chiede un permesso (finestra "Sì", password, Touch ID), ti avvisa sempre prima. Vedi [Le finestre dei permessi](#permission).

### Privacy e dati dei clienti

I dati di clienti e fornitori sono il **patrimonio dello studio**: si tengono e si usano. Il dovere è **non divulgarli**.

- La memoria e i lavori stanno **su questo computer** (e nel tuo archivio quando archivi), non su internet.
- Quello che Claudio legge però viene elaborato dai server di Anthropic per rispondere. Per questo in **Impostazioni → Privacy** va **spento** l'uso delle chat per migliorare i modelli.
- Quando cerca su internet, Claudio usa argomenti, luoghi e norme, **mai** nomi, codici fiscali o dati dei clienti.
- Dati delicati (salute, documenti d'identità, IBAN) li usa solo dove servono e non li mette in memoria.
- Se un cliente chiede quali dati avete di lui, o di cancellarli: ""dimentica il signor Rossi"". Claudio trova tutto e toglie solo quello che approvi (i documenti da conservare per legge restano).
- Niente password, PIN o codici della firma digitale in chat.

> **Da decidere per lo studio** (Claudio può prepararti i testi): un piano Claude con condizioni commerciali e accordo sul trattamento dati; l'informativa privacy ai clienti con l'uso dell'AI e, dove la legge sulla protezione dei dati lo chiede (per esempio il GDPR nell'Unione Europea), il registro dei trattamenti; la cifratura del disco (**BitLocker** su Windows, **FileVault** su Mac, **LUKS** su Linux). L'elenco aggiornato è in `memory/decisions/privacy.md`. Meglio sentire anche il consulente privacy dello studio.

### Copie di riserva

Siccome la memoria sta solo su questo computer, se il disco si rompe si perde. Una volta alla settimana Claudio ti propone una **copia di riserva** di memoria, esempi, lavori e mestieri dove vuoi tu (una tua cartella sul server, il cloud o una chiavetta). Puoi chiederla anche quando vuoi: ""fai una copia di riserva della memoria"".

### Aggiornare l'assistente senza perdere niente

Se ti arriva una versione nuova della cartella, **non sostituire tutto**. Le cartelle `memory` (memoria), `jobs` (lavori), `good-examples` (esempi buoni), `knowledge` (fonti) e i mestieri nati da te sono tuoi e non vanno sovrascritti. Il modo più semplice: metti la versione nuova in una cartella a parte (per esempio in Download) e di' a Claudio ""c'è un aggiornamento nella cartella Download, integralo senza perdere la mia memoria"".

Una volta alla settimana Claudio controlla da solo, senza scaricare niente, se su internet c'è una versione più nuova. Ti dice in parole semplici cosa c'è di nuovo (aggiunto, migliorato, corretto, rimosso) e aggiorna solo se sei d'accordo, dopo una copia di riserva, lasciando intatti memoria e lavori.

## Se qualcosa non va

#### Non si ricorda di me / non sa niente dei miei lavori

Quasi sempre sei nella scheda **Chat** invece che **Code**, oppure la cartella selezionata non è Claudio-Assistant. Controlla in alto. Su Linux, controlla di aver avviato Claude Code dentro la cartella Claudio-Assistant.

#### Mi chiede di aprire il Terminale o PowerShell, di convertire un file o di installare qualcosa

Non dovrebbe farlo. Rispondigli: *"fallo tu, io non sono pratico"*. Se ricapita, digli di annotarlo fra le lezioni. (L'unica eccezione è il raro caso della password nel Terminale su Mac o Linux, e solo dopo che ti ha avvisato e spiegato passo passo.)

#### Ha scritto una cosa sbagliata o inventata

Chiedigli *"da quale fonte l'hai preso?"*. Se la fonte non c'è, correggilo e digli di ricordarlo. Ogni correzione lo rende più preciso.

#### Compare un messaggio di errore che non capisco

Fai una schermata (Windows `Win` + `Shift` + `S`; Mac `Cmd` + `Ctrl` + `Shift` + `4`; Linux `Stamp`), incollala in chat e scrivi *"cos'è questo? sistemalo tu"*.

#### Mi ha dato un link o un percorso che non si apre

Un percorso giusto è fatto così:

- **Windows**: comincia con la lettera del disco, per esempio `C:\Users\...`, oppure con `\\` per il server dello studio;
- **Mac**: comincia con `/Users/...`, oppure `/Volumes/...` per il server;
- **Linux**: comincia con `/home/...`, oppure dove è collegato il server.

Se vedi un formato misto (su Windows cose come `/c/Users/...`; su Mac o Linux cose come `C:\...`) o un percorso corto come `./jobs/...`, scrivigli: *"il link non funziona, dammelo nel formato del mio computer e controlla che esista"*.

#### Non trova i file che ho archiviato

Digli dove li hai messi: aggiorna la scheda del lavoro e la prossima volta li ritrova.

#### Ha raggiunto il limite di utilizzo

Aspetta qualche ora e riprendi dalla stessa chat: non si perde niente.

Claudio-Assistant · manuale v1 · ottobre 2026. Per chiarimenti chiedi a Claudio: *"spiegami meglio la parte su…"*

Autore: Giuseppe Bosi · [www.giuseppebosi.com](https://www.giuseppebosi.com) · [LinkedIn](https://www.linkedin.com/in/giuseppebosi)
