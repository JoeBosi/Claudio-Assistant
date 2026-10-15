# Claudio-Assistant

[English](README.md) · [Italiano](README.it.md) · [Français](README.fr.md) · **Deutsch**

Ein fertiger Ordner für [Claude Code](https://claude.com/claude-code), der Claude in
**Claudio** verwandelt: einen sehr selbstständigen Büroassistenten für Berufstätige, die
keine Programmierer sind. Er lernt aus Ihren Beispielen, wie *Sie* arbeiten, merkt sich das
Wichtige, installiert seine Werkzeuge selbst und liefert Ihnen immer **Entwürfe**, die Sie
prüfen und unterschreiben.

## Für wen

Für alle Freiberufler und kleinen Büros: Anwälte, Steuerberater, Architekten, Vermesser,
Ingenieure, Berater, Ärzte, Übersetzer… unter **Windows, macOS oder Linux**. Technische
Kenntnisse sind nicht nötig: Man spricht mit Claudio in einfachen Worten, in der eigenen
Sprache.

## Wichtigste Funktionen

- **Gespräch beim ersten Start.** Claudio fragt, wer Sie sind, was Sie tun, wo Ihre Dateien
  liegen, welche Programme Sie nutzen und wie Sie gern arbeiten (15-20 Minuten, eine Frage
  nach der anderen).
- **Studiert Ihren Beruf** anhand offizieller Quellen und schlägt die Liste Ihrer typischen
  Arbeiten vor.
- **Installiert seine Werkzeuge selbst** (Word, Excel, PDF und Scans lesen und schreiben,
  im Internet surfen): Sie klicken nur auf „Ja“, wenn das System um Erlaubnis bittet.
- **Lernt aus Ihren besten Arbeiten.** Legen Sie fertige Dokumente in den Ordner
  `Learn-From-Here` (eine Verknüpfung liegt auf Ihrem Desktop): Claudio studiert sie und nimmt
  sie als Qualitätsmaßstab.
- **Lokales Gedächtnis, das sich selbst aufräumt.** Kunden, Lieferanten, Behörden,
  Entscheidungen und Lektionen stehen in einfachen Textdateien im Ordner. Alle 30 Tage
  schlägt Claudio eine Aufräumrunde vor: keine Doppelungen, keine Widersprüche, zu lange
  Dateien werden aufgeteilt.
- **Fragt, bevor er sich etwas merkt.** Ohne Ihr OK wird nichts ins Gedächtnis geschrieben.
- **Erstellt neue Skills.** Kommt eine Art von Arbeit zum 2. oder 3. Mal vor, schlägt Claudio
  vor, daraus einen Skill zu machen, aufgebaut auf Ihren Beispielen und Ihrer Methode.
- **Datenschutz zuerst.** Kundendaten bleiben auf Ihrem Computer und werden nie in Websites
  oder Internetsuchen eingegeben.
- **Entwürfe, niemals endgültige Dokumente.** Jedes Dokument endet mit einer Liste „Zu
  prüfen“. Daten, Preise und Gesetze werden aus einer Quelle übernommen und zitiert; fehlt
  die Quelle, sagt Claudio das.
- **Gibt Ihnen nicht immer recht.** Ist eine Anfrage falsch, erklärt Claudio warum, mit
  Quelle, und schlägt Alternativen vor. Sie entscheiden.

## So funktioniert es

![So funktioniert Claudio](docs/how-it-works.svg)

1. **Erster Start.** Sie öffnen den Ordner in Claude Code und sagen „Hallo“. Ein Startskript
   teilt Claude mit, dass die Einrichtung ansteht: Claudio befragt Sie, installiert die
   Grundausstattung und studiert Ihren Beruf (Internet nötig).
2. **Anlernen.** Legen Sie 2-3 gelungene frühere Arbeiten in `Learn-From-Here` und sagen Sie
   es Claudio. Er erkennt, um welche Art von Arbeit es sich handelt, legt sie unter
   `good-examples/` ab und aktualisiert das Gedächtnis.
3. **Tägliche Arbeit.** Fragen Sie in Worten: „neuer Auftrag für Kunde X“, „bereite den
   Bericht wie letztes Mal vor“. Jeder Auftrag hat seine Karte (`jobs/<auftrag>/JOB.md`):
   wer, was, Stand, Entscheidungen und wo die Dateien liegen. Sie können auch in einem
   eigenen Ordner arbeiten: Claudio legt vorher eine Sicherungskopie an.
4. **Am Ende eines Auftrags** schlägt Claudio die 2-5 Dinge vor, die es wert sind, behalten
   zu werden, und speichert sie nur mit Ihrer Zustimmung.
5. **Alle 30 Tage** schlägt er vor, Gedächtnis und Skills aufzuräumen und eine
   Sicherungskopie zu machen.

## Ordnerstruktur

Die Ordnernamen sind englisch, damit das Paket überall funktioniert; Claudio erklärt sie
Ihnen und schreibt das Gedächtnis in Ihrer Sprache.

```
Claudio-Assistant/
├── CLAUDE.md                die Regeln des Assistenten (liest Claude bei jedem Start)
├── README.md                diese Seite (auch .it .fr .de)
├── GETTING-STARTED.en.txt   kurze Installationsanleitung (auch .it .fr .de)
├── CUSTOMIZING.md           für alle, die den Ordner für einen Beruf vorbereiten
├── LICENSE
├── docs/                    Handbuch: MANUAL.en.html, MANUAL.it.html, MANUAL.fr.html, MANUAL.de.html
├── memory/                  das Gedächtnis: Sie, das Büro, der Beruf, Kontakte, Entscheidungen, Lektionen
│   ├── INDEX.md
│   ├── office/              owner.md, office.md, tools.md
│   ├── contacts/            clients.md, suppliers.md, authorities.md
│   ├── decisions/           preferences.md, privacy.md
│   ├── lessons/             lessons.md
│   ├── profession.md, job-types.md, _maintenance.md
│   └── _history/            alte Versionen, beim Aufräumen aufbewahrt
├── jobs/                    ein Unterordner pro Auftrag, jeder mit seiner JOB.md
│   ├── _template/           Vorlage für JOB.md
│   ├── _backup/             Kopien vor der Arbeit in Ihren eigenen Ordnern
│   └── _archived/
├── good-examples/           Ihre besten Arbeiten, nach Art: der Qualitätsmaßstab
├── Learn-From-Here/         der Eingangskorb für Arbeiten, die Claudio studieren soll
├── knowledge/               die Quellen Ihres Berufs (Gesetze, Preislisten, Formulare)
├── _trash/                  nichts wird gelöscht: entfernte Dateien warten hier
└── .claude/
    ├── settings.json
    ├── hooks/               startup.ps1 (Windows), startup.sh (macOS/Linux)
    └── skills/              help, setup, new-job, learn-from-here, remember,
                             tidy-memory, archive, create-skill, forget, get-tools
```

Die 10 Skills lassen sich als Befehle aufrufen (`/help`, `/setup`, `/new-job`…) oder einfach
mit Worten anfragen.

## Voraussetzungen

- Ein **Claude-Pro-Abo oder höher** (Max, Team, Enterprise).
- **Windows oder macOS:** die [Claude-Desktop-App](https://claude.ai/download), Reiter
  **Code**.
- **Linux:** Es gibt keine offizielle Desktop-App; nutzen Sie die
  [Claude Code CLI](https://docs.claude.com/en/docs/claude-code) im Terminal oder die
  Claude-Code-Erweiterung für VS Code.
- **Internet** für die erste Einrichtung (Installation der Werkzeuge und Studium des Berufs)
  und für die normale Nutzung von Claude.

## Installation

1. **Laden Sie** den Ordner herunter: auf GitHub *Code → Download ZIP* klicken und entpacken,
   oder `git clone https://github.com/JoeBosi/Claudio-Assistant.git`.
2. **Legen Sie ihn an einen festen Ort**, z. B. `Dokumente/Claudio-Assistant`, und
   **verschieben Sie ihn danach nicht mehr**: Der Chatverlauf hängt an diesem Pfad (das
   Gedächtnis liegt im Ordner und geht nicht verloren). Wenn Sie ihn umbenennen möchten
   (z. B. `Anwalt-Claudio`), tun Sie das vor dem ersten Start.
3. **Öffnen Sie ihn in Claude Code**: in der Desktop-App, Reiter *Code*, den Ordner als
   Arbeitsordner wählen (unter Linux: mit `cd` in den Ordner wechseln und `claude` starten).
4. **Vertrauen Sie dem Ordner**, wenn danach gefragt wird: Das ist für die Berechtigungen und
   das Startskript nötig.
5. **Berechtigungsmodus:** Wählen Sie in der App **„Auto“**, falls vorhanden (Claude arbeitet
   selbstständig und fragt nur bei riskanten Aktionen nach); sonst **„Änderungen
   akzeptieren“**. (Linux, Claude Code im
   Terminal: Modus mit Umschalt+Tab wechseln.)
6. **Sagen Sie „Hallo“.** Claudio stellt sich vor und beginnt die Einrichtung. Am besten
   machen Sie die erste Sitzung zusammen mit der Person, die ihn nutzen wird.

Schritt-für-Schritt-Anleitungen für die installierende Person:
`GETTING-STARTED.<sprache>.txt`.

## Hinweise zum Datenschutz

Claudio ist darauf ausgelegt, Kundendaten lokal zu halten und nie weiterzugeben, aber das
Gespräch selbst läuft über den Dienst von Anthropic. Bevor Sie mit echten Kundendaten
arbeiten:

- Schalten Sie in den Claude-Einstellungen die Option aus, mit der Anthropic Ihre Chats zur Verbesserung
  seiner Modelle nutzen darf (Einstellungen → Datenschutz) (Nutzung der
  Chats fürs Training).
- Erwägen Sie für Kundendaten ein **kommerzielles Abo** (Team / Enterprise / API) mit einem
  **Auftragsverarbeitungsvertrag (AVV/DPA)**.
- Aktivieren Sie die **Festplattenverschlüsselung** (BitLocker, FileVault, LUKS): Das
  Gedächtnis liegt als Textdateien auf Ihrem Computer.
- Sprechen Sie mit Ihrem **Datenschutzbeauftragten oder -berater** (z. B. nach DSGVO in der
  EU) und prüfen Sie die Regeln Ihrer Berufskammer zur KI-Nutzung. Mehrere Gesetze lassen dem
  Berufstätigen die Verantwortung für KI-gestützte Arbeit (z. B. die europäische KI-Verordnung,
  AI Act).

## Aktualisieren, ohne das Gedächtnis zu verlieren

Ihr Gedächtnis und Ihre Arbeit liegen in `memory/`, `jobs/`, `good-examples/`, `knowledge/`
und in den Skills, die Claudio für Sie erstellt hat. **Überschreiben Sie den Ordner nicht**
mit einer neuen Version. Am einfachsten: Laden Sie die neue Version in einen separaten Ordner
und sagen Sie Claudio „im Ordner <Ordner> liegt ein Update, übernimm es, ohne mein Gedächtnis
zu verlieren“. Er aktualisiert Regeln, Handbücher und Standard-Skills und lässt Ihre Daten in
Ruhe.
Verwenden Sie kein `git pull` in einem bereits genutzten Ordner: Die Einrichtung füllt die
Gedächtnisdateien aus, ein Pull würde mit Ihren Daten kollidieren.

## Für einen Beruf anpassen

Claudio passt sich beim ersten Start selbst an. Wenn Sie ihn vorab für einen Beruf
vorbereiten möchten (Quellen in `knowledge/`, Berufsprofil, fertige Skills), siehe
[CUSTOMIZING.md](CUSTOMIZING.md) (auf Englisch).

## Grenzen und ehrliche Hinweise

- **Im echten Einsatz getestet:** Der Autor hat Claudio auf einem echten Bürocomputer mit der
  Claude-Desktop-App installiert (Oktober 2026), und alles hat funktioniert: Einrichtung,
  Installation der Werkzeuge, Lernen aus Beispielen, Gedächtnis.
- **Ebenfalls getestet:** `startup.sh` unter Linux; `startup.ps1` mit PowerShell 7. Rückmeldungen
  und Issues zu anderen Systemen und Versionen sind willkommen.
- Claude schreibt manchmal Pfade im falschen Format für das System (z. B. „Linux-Pfade“
  unter Windows). Eine Regel in `CLAUDE.md` verbietet das; achten Sie in den ersten Sitzungen
  darauf.
- Die Anthropic-Skills **docx / pdf / xlsx / pptx** sind **nicht enthalten**, weil ihre
  Lizenz die Weitergabe nicht erlaubt. Claudio installiert sie (oder kostenlose
  Alternativen) beim ersten Start automatisch.
- Der Modus „Auto“ lässt sich nicht über die Projektdateien einstellen: Er wird in der App
  gewählt.
- Claudio ist ein Assistent: Die Dokumente, die er vorbereitet, sind Entwürfe. Der
  Berufstätige prüft sie, unterschreibt sie und bleibt dafür verantwortlich.

## Sprachen

README: [English](README.md) · [Italiano](README.it.md) · [Français](README.fr.md) · [Deutsch](README.de.md)
Handbuch: [English](docs/MANUAL.en.html) · [Italiano](docs/MANUAL.it.html) · [Français](docs/MANUAL.fr.html) · [Deutsch](docs/MANUAL.de.html)
Claudio spricht mit Ihnen in Ihrer Sprache, welche es auch ist.

## Herkunft

Das Paket stammt von einem echten Assistenten, der im Oktober 2026 für ein Vermessungsbüro
gebaut und dann für alle Berufe verallgemeinert wurde.

## Lizenz

MIT — siehe [LICENSE](LICENSE).

## Autor

Giuseppe Bosi — GitHub [@JoeBosi](https://github.com/JoeBosi)
