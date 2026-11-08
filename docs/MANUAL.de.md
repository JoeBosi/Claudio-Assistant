# Handbuch Claudio-Assistant

*Dieses Handbuch wird beim ersten Start auch als HTML-Seite in diesem Ordner erzeugt, damit es sich bequem im Browser lesen lässt.*

*Ihr Büro*

Ihr Büroassistent, der Ihre Arbeit Tag für Tag lernt. Wie man ihn benutzt und wie er innen funktioniert.

## 1 · Bedienungsanleitung

*Was Sie jeden Tag brauchen. Mehr ist nicht nötig.*

### So öffnen Sie ihn

**Unter Windows und Mac**:

1. Öffnen Sie die App **Claude**.
2. Wählen Sie oben den Reiter **Code**. Normale Chats (Reiter **Chat**) sehen das Gedächtnis und Ihre Aufträge **nicht**.
3. Prüfen Sie, dass der ausgewählte Ordner **Claudio-Assistant** ist.
4. Schreiben Sie. Für einen neuen Auftrag öffnen Sie einen **neuen Chat**: Das Gedächtnis bleibt trotzdem erhalten.

**Unter Linux** gibt es keine Claude-App. Sie benutzen **Claude Code** auf eine dieser zwei Arten:

- in **VS Code** (ein kostenloses Programm): Öffnen Sie den Ordner **Claudio-Assistant** und klicken Sie dann auf das Claude-Symbol;
- im **Terminal**: Öffnen Sie den Ordner **Claudio-Assistant** im Terminal und tippen Sie `claude`.

Wer Ihren Computer eingerichtet hat, kann Ihnen eine Verknüpfung anlegen, die das mit einem Klick erledigt.

> Beim ersten Mal stellt sich Claudio vor und stellt Ihnen ein paar Fragen, um Sie kennenzulernen (15-20 Minuten). Danach installiert er selbst die Programme, die er braucht.

### So sprechen Sie mit ihm

So, wie Sie mit einem guten Mitarbeiter im Büro sprechen würden. Sie brauchen keine Befehle und keine Fachbegriffe.

> „Neuer Auftrag für den Kunden Müller GmbH: …“

> „Mach mir einen Entwurf des Berichts. Nimm den vom letzten Jahr als Vorlage.“

> „Schreib das Protokoll der Besprechung von heute Morgen: Müller und Schmidt waren da, wir haben beschlossen …“

> „Der Kunde hat mir diese Unterlagen geschickt, prüf, ob alles da ist.“

**Claudio spricht Ihre Sprache.** Beim ersten Start fragt er, welche Sprache Sie bevorzugen; bis dahin antwortet er in der Sprache, in der Sie schreiben. Die Ordnernamen bleiben englisch (das sind die echten Namen auf der Festplatte), aber er erklärt sie Ihnen immer.

**Sie können auch diktieren**, statt zu tippen:

- **Windows**: Drücken Sie `Win` + `H` und sprechen Sie;
- **Mac**: Drücken Sie zweimal `Fn` (oder die Mikrofontaste) und sprechen Sie. Wenn nichts passiert, schalten Sie es ein unter Systemeinstellungen → Tastatur → Diktierfunktion;
- **Linux**: Das hängt von Ihrer Arbeitsoberfläche ab. Fragen Sie Claudio: „Richte mir das Diktieren ein.“

Claudio versteht auch ungeordnete Sätze. Je mehr Zusammenhang Sie ihm geben (wo, was, wer, wann), desto besser arbeitet er. Wenn etwas fehlt, fragt er nach.

**Er gibt Ihnen nicht immer recht**: Wenn eine Anfrage falsch ist (ein Gesetz, eine Berechnung, ein Verfahren), sagt er es Ihnen, erklärt warum und schlägt Alternativen vor. Dann entscheiden Sie.

**Er geht selbst ins Internet** (mit dem Browser Chromium), für Gesetze, öffentliche Portale und technische Informationen. Die Daten Ihrer Kunden gibt er nie auf Websites ein.

### Einen neuen Auftrag beginnen

Sagen Sie einfach „neuer Auftrag“, dazu den Kunden und worum es geht. Er:

- legt für diesen Auftrag einen Unterordner in `jobs` an (dem Ordner Ihrer Aufträge), mit einem **Auftragsblatt**, das alles zusammenfasst (wer, was, wie weit wir sind);
- prüft, ob er Kunde, Lieferanten und beteiligte Ämter schon kennt;
- schlägt vor, wo man anfängt.

**Er fragt Sie, wo gearbeitet werden soll**: in seinem Standardordner oder in einem Ordner von Ihnen (zum Beispiel dem, in dem Sie die Unterlagen des Kunden schon abgelegt haben). Wählen Sie Ihren, **macht er zuerst eine Sicherungskopie** und rührt die vorhandenen Dokumente nicht an.

Beim nächsten Mal genügt „machen wir mit dem Auftrag Müller weiter“: Er liest das Auftragsblatt und weiß, wo Sie stehengeblieben sind.

### Ihm Dateien, Fotos, Dokumente geben

- **Ziehen** Sie die Dateien (PDF, Word, Excel, Fotos, Scans) in den Chat, oder
- legen Sie sie im Ordner des Auftrags unter `received` (erhaltene Unterlagen) ab und sagen Sie es ihm.

**Fotos und Scans** schaut er sich wirklich an: Er liest auch Dokumente, die mit dem Handy fotografiert wurden.

Kann er ein Format noch nicht lesen, besorgt er sich selbst das nötige Programm. **Sie müssen nichts umwandeln.**

### Entwürfe: Sie prüfen und unterschreiben

Claudio bereitet vor, **Sie prüfen und unterschreiben**. Die Verantwortung bleibt bei Ihnen, und mehrere Gesetze verlangen das (zum Beispiel die europäische KI-Verordnung, der „AI Act“, und in Italien das Gesetz 132/2025 für freie Berufe).

- Jede Angabe trägt ihre Quelle: das Gesetz mit Artikel, das Dokument oder die offizielle Website, von der sie stammt.
- Am Ende jedes Entwurfs finden Sie die Liste **„Zu prüfen“**: getroffene Annahmen, fehlende Daten, Zweifel. Fangen Sie dort an.
- Sehen Sie im Text `[ZU PRÜFEN: …]` (oder `[TO CHECK: …]`), ist das eine Stelle, für die er keine sichere Quelle hatte.

> Finden Sie einen Fehler, sagen Sie es ihm: „Hier hast du dich geirrt, die Frist beträgt 60 Tage, nicht 30.“ Er korrigiert ihn und fragt, ob er sich das fürs nächste Mal merken soll.

### Der Eingangskorb Learn-From-Here

Auf Ihrem Schreibtisch haben Sie die Verknüpfung **Learn-From-Here (Claude)**, also „lerne von hier“. Legen Sie dort Arbeiten ab, die Ihnen gut gelungen sind und die er nachmachen lernen soll:

- nur das fertige Dokument (PDF, Word, Excel …), oder
- das Dokument und eine Notiz von Ihnen, auch nur zwei Zeilen („schau, wie ich die Schlussfolgerungen geschrieben habe“), oder
- einen ganzen Ordner mit allen Dateien eines Auftrags.

Sagen Sie ihm dann „ich habe dir Arbeiten in den Eingangskorb gelegt“. Vergessen Sie es, bemerkt er es beim nächsten Chat von selbst.

Er studiert sie, sagt Ihnen, was er verstanden hat, verschiebt sie zu den **guten Beispielen** (dem Ordner `good-examples`), und der Eingangskorb ist wieder leer. Er löscht nichts. Sieht er dieselbe Art von Auftrag 2-3 Mal, schlägt er vor, sie als **feste Fertigkeit** (einen „Skill“) zu lernen.

### Ihn sich Dinge merken lassen

> „Merk dir, dass der Kunde Müller immer zuerst das Angebot haben will.“

> „Ab jetzt will ich Datumsangaben ausgeschrieben.“

Am Ende eines Auftrags schlägt er selbst vor, was er sich merken soll, in einer nummerierten Liste. Antworten Sie „ja, alles“ oder „Nummer 2 streichen“. **Ohne Ihr OK speichert er nichts.**

Einmal im Monat schlägt er vor, **das Gedächtnis aufzuräumen**: Er führt Doppeltes zusammen, entfernt Veraltetes und erinnert Sie an Fristen (Pflichtfortbildung, Versicherung, Verlängerungen).

### Archivieren

> „Archiviere den Auftrag Müller.“

Er kopiert die Dokumente in Ihr Archiv (Büroserver, Ordner oder Cloud), in die Ordner und mit den Namen, die Sie üblicherweise verwenden, und notiert, wo er sie abgelegt hat. **Er kopiert nur**: Im Archiv löscht und überschreibt er nie etwas.

Wenn Sie die Dateien lieber von Hand verschieben, ist das völlig in Ordnung: Sagen Sie es ihm („ich habe sie in … abgelegt“), damit er sie nächstes Mal wiederfindet.

### Berechtigungsfenster

Ab und zu installiert Claudio ein kostenloses Programm, das er braucht. Der Computer kann Sie dann um Erlaubnis bitten:

- **Windows**: Ein Fenster fragt *„Möchten Sie zulassen, dass durch diese App Änderungen an Ihrem Gerät vorgenommen werden?“* → klicken Sie auf **Ja**;
- **Mac**: Ein Fenster fragt nach dem Passwort des Computers oder Ihrem Fingerabdruck (**Touch ID**);
- **Linux**: Ein Fenster fragt nach dem Passwort des Computers.

Vor einer Installation kann Claudio Sie auch im Chat um Ihr OK bitten: Antworten Sie mit **Ja**.

**Seltener Fall, nur Mac und Linux**: Manchmal wird das Passwort im **Terminal** gebraucht, wo Claudio es nicht für Sie eingeben kann. Dann bereitet er **einen einzigen Befehl** vor und führt Sie Schritt für Schritt: Terminal öffnen, Befehl einfügen, `Enter` drücken, Ihr Passwort tippen und noch einmal `Enter` drücken. **Während Sie das Passwort tippen, erscheint nichts auf dem Bildschirm**, nicht einmal Punkte: Das ist normal.

> **Wenn Claudio Sie gerade vorgewarnt hat** („gleich erscheint ein Fenster, klicken Sie auf Ja / geben Sie Ihr Passwort ein“), machen Sie ruhig weiter.

> **Wenn niemand Sie vorgewarnt hat**, antworten Sie **Nein** (oder schließen Sie das Fenster) und fragen Sie Claudio, was er gerade gemacht hat.

Bei allem, was Geld kostet, bei Anmeldungen auf Ihren Namen oder Lizenzen, die zu akzeptieren sind, fragt er Sie immer vorher.

### Abkürzungen mit dem Schrägstrich /

Freiwillig: Mit Worten fragen funktioniert genauso. Tippen Sie `/` und den Namen. Die Namen sind englisch, aber Claudio antwortet Ihnen auf Deutsch.

| Tippen Sie | Was es macht |
|---|---|
| `/help` | erinnert Sie daran, was Sie ihn fragen können |
| `/new-job` | legt einen neuen Auftrag mit Auftragsblatt an |
| `/learn-from-here` | studiert die Arbeiten im Eingangskorb |
| `/remember` | schlägt vor, was ins Gedächtnis soll |
| `/archive` | kopiert die fertigen Dokumente ins Archiv |
| `/tidy-memory` | monatliches Aufräumen des Gedächtnisses |
| `/create-skill` | macht aus einer Arbeit, die Sie wiederholen, eine feste „Fertigkeit“ |
| `/forget` | findet und entfernt auf Wunsch die Daten einer Person oder Firma |
| `/get-tools` | besorgt ein Programm, das ihm fehlt |
| `/setup` | stellt die Anfangsfragen noch einmal (wenn sich im Büro etwas ändert) |
| `/deadlines` | was diese Woche fällig ist, Hinweise beim Start |
| `/mail` | liest die E-Mails, die Sie einfügen oder im Ordner inbox ablegen, ordnet sie den Aufträgen zu, entwirft Antworten (sendet nie) |
| `/guided-job` | führt Sie Schritt für Schritt durch eine Art von Auftrag |
| `/fill-form` | füllt ein PDF- oder Word-Formular mit den bekannten Daten aus; fragt nach fehlenden |
| `/ask-client` | listet fehlende Unterlagen auf und schreibt die Nachricht an den Kunden (Sie senden sie) |
| `/daily-summary` | Zusammenfassung des Tages oder der Woche: erledigt, stockend, wartend, nächste Schritte |
| `/transcribe` | macht aus Sprachnachrichten, Anrufen und Besprechungen Text, auf diesem Computer |
| `/backup` | geprüfte Sicherungskopie von Gedächtnis, Aufträgen und Fertigkeiten; geführte Wiederherstellung |
| `/explain` | erklärt jeden Begriff oder jedes Dokument von Grund auf, in einfachen Worten |
| `/legal-research` | sucht die Vorschriften in amtlichen Quellen, mit Links und Daten |
| `/check-updates` | wöchentliche Prüfung auf eine neue Version von Claudio, nur lesend |

Mit der Zeit kommen neue hinzu: Das sind die Fertigkeiten, die er von Ihnen lernt.

### 4 Dinge, die Sie nicht tun sollten

1. **Verschieben oder benennen Sie den Ordner Claudio-Assistant nicht um.** Das Gedächtnis geht nicht verloren, der Chatverlauf aber schon.
2. **Löschen Sie Dateien in `memory` (dem Gedächtnis) nicht von Hand.** Wenn etwas falsch ist, sagen Sie es ihm, und er korrigiert es.
3. **Unterschreiben Sie keinen Entwurf, ohne ihn gelesen zu haben**, angefangen bei der Liste „Zu prüfen“.
4. **Schreiben Sie keine Passwörter oder PINs in den Chat** (elektronische Signatur, zertifizierte E-Mail, Bank).

## 2 · Vertiefung

*Wie er innen funktioniert, und ein paar Techniken, um ihn besser zu nutzen. Zum Arbeiten nicht nötig.*

### Wie der Ordner aufgebaut ist

```
Claudio-Assistant/
├── CLAUDE.md          die Grundanweisungen: wer Sie sind, die Regeln, wie gearbeitet wird
├── VERSION.txt        die installierte Version (für die wöchentliche Update-Prüfung)
├── docs/              dieses Handbuch, in mehreren Sprachen
├── memory/            das Gedächtnis: was er über Sie, das Büro, den Beruf, Kunden, Lieferanten, Ämter weiß
├── jobs/              die Aufträge: einer pro Unterordner, jeder mit seiner JOB.md (dem Auftragsblatt)
├── good-examples/     die guten Beispiele: Ihre besten Arbeiten, nach Art sortiert
├── Learn-From-Here/   der Eingangskorb „lerne von hier“ (Verknüpfung auf dem Schreibtisch)
├── knowledge/         das Wissen: die offiziellen Quellen Ihres Berufs (Gesetze, Formulare, Datenbanken)
├── inbox/             hier legen Sie E-Mails ab, die er lesen und nach Auftrag ablegen soll
├── _trash/            der Papierkorb: was Claudio entfernt, landet hier, Sie leeren ihn
└── .claude/           (versteckter Ordner) Fertigkeiten, Berechtigungen, Startprüfungen
```

Das sind alles gewöhnliche Textdateien: Sie können sie aus Neugier mit dem Editor (Windows), TextEdit (Mac) oder einem beliebigen Texteditor öffnen. Änderungen überlassen Sie aber besser Claudio.

### Wie das Gedächtnis funktioniert

- **Beim Öffnen jedes Chats** liest Claudio `CLAUDE.md` und von dort aus die wichtigsten Teile des Gedächtnisses: wer Sie sind, Ihre Vorlieben, die Lektionen, die Werkzeuge. Den Rest (Kontakte von Kunden, Lieferanten, Ämtern; den Beruf) öffnet er bei Bedarf.
- Das Gedächtnis ist aufgeteilt in: **Büro** (Sie, das Büro, Archiv, Programme) · **Beruf** (typische Arbeiten, Gesetze, Quellen) · **Kontakte** (Kunden, Lieferanten, Ämter) · **Entscheidungen** (wie Sie die Dinge haben wollen) · **Lektionen** (Fehler, die sich nicht wiederholen sollen) · **Auftragsarten** (die bisher gesehenen und wie oft).
- Das Gedächtnis wird **in Ihrer Sprache** geschrieben: Es ist Ihr Notizbuch.
- **Es wird nur mit Ihrem OK beschrieben.** Ausnahmen sind die Auftragsblätter und das technische Verzeichnis der Programme, denn das ist „Arbeitsstand“ und kein Gedächtnis.
- **Es ordnet sich selbst neu**: Alle 30 Tage schlägt Claudio vor, es zu verbessern (lange Dateien aufteilen, neue Kategorien anlegen, sich wiederholende Regeln in die Fertigkeiten übernehmen). Vor jedem Aufräumen macht er eine Kopie in `memory/_history`.
- Beim Start meldet ihm eine kleine automatische Prüfung, ob Dateien im Eingangskorb liegen, ob das Aufräumen fällig ist oder ob ein Programm fehlt.

### Fertigkeiten (Skills): was sie sind und wie sie entstehen

Eine Fertigkeit ist **Ihre Methode, schriftlich festgehalten**, für eine Art von Auftrag: was man fragt, welche Quellen man nutzt, in welcher Reihenfolge man vorgeht, wie das Dokument aussieht, was man am Ende prüft. Sie sorgt dafür, dass die Arbeit jedes Mal so wird wie Ihre beste, und nicht so, wie irgendeine KI sie machen würde.

- **Wie sie entsteht**: Wenn eine Art von Auftrag 2-3 Mal vorkommt (aus dem Eingangskorb oder aus Ihren Aufträgen), schlägt Claudio vor, sie anzulegen. Er sieht sich Ihre Beispiele an, sucht online nach etwas Gutem, auf dem er aufbauen kann, stellt Ihnen 3-5 Fragen zu Ihrer Methode und schreibt sie auf.
- **Wie sie besser wird**: Jede wichtige Korrektur, die Sie machen, kann eine Regel der Fertigkeit werden. Sagen Sie es ihm: „Aktualisiere die Fertigkeit für Angebote: Die Mehrwertsteuer will ich immer getrennt ausgewiesen.“
- Beim ersten Start studiert Claudio Ihren Beruf und schlägt Ihnen eine Liste typischer Arbeiten vor: Das ist der Ausgangspunkt für die ersten Fertigkeiten.

### Selbstständigkeit: Programme und Skills, die er sich selbst besorgt

Wenn ihm etwas fehlt (ein Format, das er nicht lesen kann, etwa signierte P7M-Dateien oder gescannte PDFs, eine Möglichkeit, eine Word-Datei zu erstellen, technisches Wissen), dann:

1. prüft er, ob er das Werkzeug schon hat;
2. informiert er sich und sucht: fertige Skills, offizielle kostenlose Programme, Anleitungen und Gesetze aus offiziellen Quellen;
3. **prüft** er vor der Installation: zuverlässige Quelle, kein verstecktes Senden von Daten, keine gefährlichen Befehle;
4. installiert und testet er es und notiert in `memory/office/tools.md` (der Werkzeugliste), wie man es benutzt;
5. sagt er Ihnen in einer Zeile, was er getan hat, und macht mit der Arbeit weiter.

Beim ersten Start installiert er die **Grundausstattung**: Python, Node.js, Pandoc, LibreOffice, die Werkzeuge für PDFs und Scans, den Browser Chromium und die offiziellen Skills von Anthropic für Word, Excel und PDF. Wenn Ihr Beruf besondere Formate nutzt, besorgt er sich auch diese.

### Quellen, und der Kampf gegen Erfundenes

Das Risiko bei KI ist, dass sie Daten selbstsicher erfindet. Hier gilt die Regel: **Daten werden nicht aus dem Kopf geschrieben, sondern aus einer Quelle genommen und zitiert**.

| Was | Woher es kommt |
|---|---|
| Gesetze und Verfahren | Offizielle Websites (nationale Gesetzesportale, Ministerien, regionale Behörden, Ihre Berufskammer), mit Datum in `knowledge` gespeichert |
| Preise, Gebühren, Formulare | Offizielle Preislisten, Gebührenordnungen und Formulare Ihres Berufs, in `knowledge` |
| Aufbau und Ton der Dokumente | Ihre **guten Beispiele** |

Die Teile, die Claudio „aus eigenem Kopf“ schreibt, sind nur solche, die kein Archiv enthalten kann: der Zusammenhang des einzelnen Auftrags, Bewertungen, Verbindungen zwischen den Dingen. Genau diese sollten Sie auch am aufmerksamsten lesen.

**Ihre Kunden informieren**: Manche Gesetze verlangen von Berufstätigen, ihre Kunden über den Einsatz von KI-Werkzeugen zu informieren (in Italien zum Beispiel das Gesetz 132/2025). Prüfen Sie, was für Sie gilt, und bitten Sie Claudio, einen Standardabsatz für Ihre Auftragsschreiben vorzubereiten.

### Techniken für besseres Arbeiten

#### Ein Chat pro Auftrag

Öffnen Sie für jeden neuen Auftrag einen neuen Chat: Der Chat bleibt übersichtlich und Claudio genauer. Gedächtnis und Auftragsblätter gehen trotzdem von einem Chat zum nächsten mit. Alte Chats bleiben in der Liste links und lassen sich wieder öffnen.

#### Erst der Plan, dann das Dokument

Sagen Sie ihm bei langen Arbeiten: *„Sag mir zuerst, wie du vorgehen willst, dann leg los.“* Einen Plan von 10 Zeilen zu korrigieren geht viel schneller als ein Dokument von 40 Seiten.

#### Diktieren

Windows `Win` + `H`; Mac zweimal `Fn` (oder die Mikrofontaste); Linux je nach Arbeitsoberfläche (Claudio kann es einrichten). Ideal, um von einer gerade beendeten Besprechung zu erzählen: Sprechen Sie frei, Claudio bringt es in Ordnung.

#### Fotos und Bildschirmfotos

Sie können ein Bildschirmfoto in den Chat einfügen: eine Seite eines Portals, eine Tabelle, eine Fehlermeldung, die Sie nicht verstehen.

- **Windows**: `Win` + `Umschalt` + `S`, Bereich auswählen, dann `Strg` + `V` im Chat;
- **Mac**: `Cmd` + `Ctrl` + `Umschalt` + `4`, Bereich auswählen, dann `Cmd` + `V` im Chat (mit `Cmd` + `Umschalt` + `4` wird das Bild dagegen auf dem Schreibtisch gespeichert: Ziehen Sie es in den Chat);
- **Linux**: `Druck` (Druck-Taste), dann das Bild in den Chat einfügen oder hineinziehen.

#### Ihn auf das hinweisen lassen, was Sie übersehen haben

Fragen Sie ausdrücklich: *„Was fehlt? Was habe ich nicht bedacht?“* Darin ist ein Assistent besonders wertvoll.

#### Ihm gezielt eine neue Arbeit beibringen

Sie müssen nicht warten, bis er sie 3 Mal sieht: *„Lerne, Angebote zu schreiben: Ich habe dir drei Beispiele in den Eingangskorb gelegt.“*

#### Nutzungsgrenzen Ihres Claude-Abos

Claude-Abos (zum Beispiel Pro) haben eine Nutzungsgrenze, die sich nach einigen Stunden wieder auffüllt. Erscheint die Meldung „Limit erreicht“, geht die Arbeit nicht verloren: Machen Sie später im selben Chat weiter. Sehr lange Arbeiten erledigt man besser in Teilen: erst die Gliederung, dann ein Kapitel nach dem anderen.

### Berechtigungen und Sicherheit

- Claude ist auf den Modus **Auto** (oder „Änderungen akzeptieren“) eingestellt: Claudio arbeitet selbstständig und hält nur bei riskanten Aktionen an, um zu fragen.
- **Löschen ist gesperrt**: Was weg soll, landet in `_trash` (dem Papierkorb), und Sie leeren ihn.
- Im Archiv (Server, Cloud) **kopiert Claudio nur**: Er löscht und überschreibt nichts.
- Online gefundene Skills installiert er nur in diesem Ordner, nachdem er sie vollständig gelesen und geprüft hat.
- Wenn der Computer um eine Berechtigung bittet (Ja-Fenster, Passwort, Touch ID), warnt er Sie immer vorher. Siehe Berechtigungsfenster.

### Datenschutz und Kundendaten

Die Daten von Kunden und Lieferanten sind das **Kapital des Büros**: Sie werden aufbewahrt und genutzt. Die Pflicht ist, sie **nicht weiterzugeben**.

- Gedächtnis und Aufträge bleiben **auf diesem Computer** (und in Ihrem Archiv, wenn Sie archivieren), nicht im Internet.
- Was Claudio liest, wird allerdings auf den Servern von Anthropic verarbeitet, damit er antworten kann. Deshalb sollten Sie unter **Einstellungen → Datenschutz** die Nutzung Ihrer Chats zur Verbesserung der Modelle **ausschalten**.
- Wenn er im Internet sucht, verwendet Claudio Themen, Orte und Gesetze, **nie** Namen, Steuernummern oder Kundendaten.
- Sensible Daten (Gesundheit, Ausweise, Bankverbindungen) verwendet er nur, wo sie nötig sind, und legt sie nie im Gedächtnis ab.
- Fragt ein Kunde, welche Daten Sie über ihn haben, oder will er sie löschen lassen: „vergiss Herrn Müller“. Claudio findet alles und entfernt nur, was Sie freigeben (Dokumente mit gesetzlicher Aufbewahrungspflicht bleiben).
- Keine Passwörter, PINs oder Codes der elektronischen Signatur in den Chat.

> **Für Ihr Büro zu entscheiden** (Claudio kann die Texte vorbereiten): ein Claude-Abo mit gewerblichen Bedingungen und Auftragsverarbeitungsvertrag; die Datenschutzinformation für Kunden mit Hinweis auf den KI-Einsatz und, wo Ihr Datenschutzgesetz es verlangt (zum Beispiel die DSGVO in der EU), das Verzeichnis der Verarbeitungstätigkeiten; die Verschlüsselung der Festplatte (**BitLocker** unter Windows, **FileVault** auf dem Mac, **LUKS** unter Linux). Die aktuelle Liste steht in `memory/decisions/privacy.md`. Am besten fragen Sie auch den Datenschutzberater des Büros.

### Sicherungskopien

Da das Gedächtnis nur auf diesem Computer liegt, ist es verloren, wenn die Festplatte kaputtgeht. Einmal pro Woche schlägt Claudio eine **Sicherungskopie** von Gedächtnis, Beispielen, Aufträgen und Fertigkeiten vor, wohin Sie wollen (ein eigener Ordner auf dem Server, die Cloud oder ein USB-Stick). Sie können sie auch jederzeit verlangen: „mach eine Sicherungskopie des Gedächtnisses“.

### Den Assistenten aktualisieren, ohne etwas zu verlieren

Wenn Sie eine neue Version des Ordners bekommen, **ersetzen Sie nicht alles**. Die Ordner `memory` (Gedächtnis), `jobs` (Aufträge), `good-examples` (gute Beispiele), `knowledge` (Quellen) und die aus Ihrer Arbeit entstandenen Fertigkeiten gehören Ihnen und dürfen nicht überschrieben werden. Am einfachsten: Legen Sie die neue Version in einen eigenen Ordner (zum Beispiel unter Downloads) und sagen Sie Claudio „im Ordner Downloads liegt ein Update, übernimm es, ohne mein Gedächtnis zu verlieren“.

Einmal pro Woche prüft Claudio selbst, ohne etwas herunterzuladen, ob im Internet eine neuere Version liegt. Er sagt Ihnen in einfachen Worten, was neu ist (hinzugefügt, verbessert, behoben, entfernt), und aktualisiert nur mit Ihrer Zustimmung, nach einer Sicherungskopie, ohne Gedächtnis und Aufträge anzutasten.

## Wenn etwas nicht klappt

#### Er erinnert sich nicht an mich / weiß nichts über meine Aufträge

Fast immer sind Sie im Reiter **Chat** statt **Code**, oder der ausgewählte Ordner ist nicht Claudio-Assistant. Prüfen Sie das oben. Unter Linux prüfen Sie, ob Sie Claude Code im Ordner Claudio-Assistant gestartet haben.

#### Er bittet mich, das Terminal oder PowerShell zu öffnen, eine Datei umzuwandeln oder etwas zu installieren

Das sollte er nicht. Antworten Sie: *„Mach du das, ich kenne mich nicht aus.“* Passiert es wieder, sagen Sie ihm, er soll es bei den Lektionen notieren. (Einzige Ausnahme ist der seltene Fall des Passworts im Terminal auf Mac oder Linux, und nur nachdem er Sie vorgewarnt und alles Schritt für Schritt erklärt hat.)

#### Er hat etwas Falsches oder Erfundenes geschrieben

Fragen Sie ihn: *„Aus welcher Quelle hast du das?“* Gibt es keine Quelle, korrigieren Sie ihn und sagen Sie ihm, er soll es sich merken. Jede Korrektur macht ihn genauer.

#### Eine Fehlermeldung erscheint, die ich nicht verstehe

Machen Sie ein Bildschirmfoto (Windows `Win` + `Umschalt` + `S`; Mac `Cmd` + `Ctrl` + `Umschalt` + `4`; Linux `Druck`), fügen Sie es in den Chat ein und schreiben Sie *„Was ist das? Bring das in Ordnung.“*

#### Er hat mir einen Link oder Pfad gegeben, der sich nicht öffnet

Ein richtiger Pfad sieht so aus:

- **Windows**: beginnt mit dem Laufwerksbuchstaben, zum Beispiel `C:\Users\...`, oder mit `\\` für den Büroserver;
- **Mac**: beginnt mit `/Users/...`, oder `/Volumes/...` für den Server;
- **Linux**: beginnt mit `/home/...`, oder dort, wo der Server eingebunden ist.

Sehen Sie ein gemischtes Format (unter Windows etwa `/c/Users/...`; auf Mac oder Linux etwa `C:\...`) oder einen kurzen Pfad wie `./jobs/...`, schreiben Sie ihm: *„Der Link funktioniert nicht, gib ihn mir im Format meines Computers und prüfe, ob es ihn gibt.“*

#### Er findet die Dateien nicht, die ich archiviert habe

Sagen Sie ihm, wo Sie sie abgelegt haben: Er aktualisiert das Auftragsblatt und findet sie nächstes Mal wieder.

#### Er hat die Nutzungsgrenze erreicht

Warten Sie ein paar Stunden und machen Sie im selben Chat weiter: Es geht nichts verloren.

Claudio-Assistant · Handbuch v1 · Oktober 2026. Bei Unklarheiten fragen Sie Claudio: *„Erklär mir den Teil über … genauer.“*

Autor: Giuseppe Bosi · [www.giuseppebosi.com](https://www.giuseppebosi.com) · [LinkedIn](https://www.linkedin.com/in/giuseppebosi)
