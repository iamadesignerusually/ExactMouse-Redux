# ExactMouse Redux

**Eine kostenlose Alternative zum SteelSeries ExactMouse Tool für macOS, inspiriert vom Original. Schaltet die Mausbeschleunigung am Mac ab, für präzise, lineare 1:1-Mausbewegung.**

Viele Gamer haben mit dem **SteelSeries ExactMouse Tool** die Mausbeschleunigung am Mac abgeschaltet. Das Tool stammt von 2010 und **funktioniert unter macOS 27 nicht mehr richtig**: Es läuft nur über Rosetta, seine Einstellung kommt nicht mehr zuverlässig bei der Maus an, und „Start on Log On" geht seit macOS 13 nicht mehr.

Das war die Inspiration für **ExactMouse Redux**: ein eigenständiger Neubau für aktuelles macOS (*Redux* heißt „zurückgebracht"). Du bekommst dieselben drei Modi und dieselbe Bedienung über die Menüleiste, dazu Live-Diagnose für die Maus. Es läuft nativ auf **Apple Silicon und Intel**, von macOS 14.4 bis **macOS 27**, und mit jeder Maus.

<p align="center">
  <a href="https://github.com/iamadesignerusually/ExactMouse-Redux/releases/latest/download/ExactMouseRedux.dmg"><img alt="Download für macOS" height="44" src="https://img.shields.io/badge/Download%20f%C3%BCr%20macOS-DMG-0A84FF?style=for-the-badge&logo=apple&logoColor=white"></a>
  &nbsp;
  <a href="#installation"><img alt="Per Terminal installieren" height="44" src="https://img.shields.io/badge/Per%20Terminal%20installieren-curl-30363d?style=for-the-badge&logo=gnubash&logoColor=white"></a>
</p>
<p align="center">
  <a href="https://github.com/iamadesignerusually/ExactMouse-Redux/releases/latest"><img alt="Latest version" src="https://img.shields.io/github/v/release/iamadesignerusually/ExactMouse-Redux?label=aktuelle%20Version&color=0A84FF"></a>
  <a href="https://github.com/iamadesignerusually/ExactMouse-Redux/releases"><img alt="Downloads" src="https://img.shields.io/github/downloads/iamadesignerusually/ExactMouse-Redux/total?label=downloads"></a>
  <img alt="macOS 14.4+" src="https://img.shields.io/badge/macOS-14.4%2B-black">
  <img alt="Universal" src="https://img.shields.io/badge/Apple%20Silicon%20%2B%20Intel-universal-black">
  <br><sub>Kostenlos · Apple Silicon &amp; Intel · macOS 14.4 – 27 · <a href="https://github.com/iamadesignerusually/ExactMouse-Redux/releases">alle Versionen</a> · <a href="CHANGELOG.md">Changelog</a></sub>
</p>

[English](README.md) · [Rechtliche Hinweise](LEGAL.md) · [Lizenz](LICENSE)

> [!IMPORTANT]
> **Inoffizielles Projekt, kein Produkt von SteelSeries.** Es ist nicht mit SteelSeries ApS verbunden und wird von SteelSeries weder unterstützt noch gesponsert oder autorisiert.
> Inspiriert wurde es vom SteelSeries ExactMouse Tool, die Idee zum Original stammt von SteelSeries. SteelSeries und ExactMouse sind Marken bzw. eingetragene Marken der SteelSeries ApS. Sie werden hier nur verwendet, um diese Inspiration zu nennen und die Kompatibilität zu beschreiben.
> Die App enthält keinen Code, keine Programmdateien und keine Grafiken von SteelSeries.

## Funktionen

| Menü | Symbol | Was passiert |
|---|---|---|
| **ExactMouse: Always On** | 🟢 | Beschleunigung aus, alle 5 s sowie direkt nach dem Anschließen einer Maus und nach dem Aufwachen erneut gesetzt. Setzt sich gegen Spiele, Apps und die Systemeinstellungen durch. |
| **ExactMouse: On** | 🟡 | Beschleunigung aus. Ändern die Systemeinstellungen oder eine App die Mauseinstellungen, wird das akzeptiert und gemerkt, und die App schaltet auf *Off*. |
| **ExactMouse: Off** | 🔴 | Normale macOS-Beschleunigung mit dem vorherigen Wert. |

- **Haupt-Eingabegerät ganz oben im Menü** mit echter Akku-Anzeige und geschätzter Restlaufzeit (bei Kabel ein USB-Symbol), Hersteller, Typ, Verbindung, Abfragerate und Beschleunigungs-Status auf einen Blick.
- **Hochwertiges Menü**: Ein Klick auf ein Gerät gleitet direkt im Menü zu seiner Seite (mit Zurück-Knopf). Das Hauptgerät ist eine Karte (Verbindung, Bluetooth-Signal, Zustand, Akku), die drei Modi als Kacheln und jedes weitere Gerät in einer Zeile. Alle Zeilen haben dieselbe Breite und einen ruhigen Hover. Hauptgerät, Modus und Geräte auf einen Blick, alles Weitere im **Einstellungsfenster** (⌘,): sechs Tabs (Allgemein, Maus, Geräte, Apps, Statistik, Pro), jeweils mit kleinem Seitenmenü (z. B. Maus → Bewegung · Trackpads · Scrollen), dazu eine **durchsuchbare Hilfe**.
- **Tasten & Makros (Pro):** jede Zusatztaste belegen (Vor/Zurück, Mission Control, Spaces, Kürzel, Apps, Medientasten) und die **12 Seitentasten von MMO-Mäusen wie der Razer Naga** (Beta), auf Wunsch pro App. Makros lassen sich aufnehmen oder Schritt für Schritt bauen und dann einmal, solange gedrückt oder an/aus abspielen.
- **Statistik:** Mausweg (Tag, Monat, Jahr, gesamt), Klicks pro Taste, meistgenutzte Makros und eine Heatmap nach Wochentag × Stunde, wann du bewegst, klickst und scrollst. Alles bleibt lokal, Tastatureingaben werden nicht erfasst.
- **Gaming:** automatischer Spielmodus, Akku-Warnungen, ein Empfindlichkeits-Rechner (cm/360°, eDPI, Umrechnung zwischen Spielen) und das Setzen der DPI bei Logitech-Mäusen.
- **Automatisierung:** `exactmouse-redux://`-URLs für Kurzbefehle, Fokus, Raycast und Stream Deck.
- **Pro-Funktionen** (im Early Access kostenlos): **stufenlose Linear-Feineinstellung** (0,10–4,00× in 0,01er-Schritten, per Feinregler, Zahlenfeld und Pfeilen), Einstellungen pro Gerät, **Profile pro App** (z. B. nur im Spiel 1:1), Scroll-Beschleunigung aus, Scrollrichtung nur für die Maus umkehren, dazu die Diagnose, der automatische Spielmodus und Akku-Warnungen. Der **Pro-Tab** zeigt alles auf einen Blick.
- **Tempo ohne Beschleunigung:** ein Regler von 0,3× bis 2,6×, immer linear und nie eine Kurve. In der Mitte steht roh 1:1.
- **Signierte Updates:** eine tägliche Prüfung über GitHub-Releases und Installation mit einem Klick. Jedes Update ist mit dem privaten Schlüssel des Entwicklers signiert (Ed25519), und die App installiert nur Updates mit passender Signatur. Prüfsumme und Code-Signatur werden ebenfalls geprüft.
- **Kurze Einrichtung beim ersten Start:** „Wofür nutzt du deine Maus?" (Gaming, Design & Foto, Büro) setzt einen passenden Startpunkt. Berechtigungen werden erklärt und erst erfragt, wenn eine Funktion sie braucht.
- **Mehrere Mäuse, Controller und Fernbedienungen:** Jede Maus wird umgestellt, und du kannst wählen, welches Hauptgerät oben im Menü steht. Gamecontroller, Presenter/Fernbedienungen und Grafiktabletts werden erkannt und bleiben unverändert, außer du beziehst sie ein. Virtuelle Geräte (z. B. Karabiner) werden mit umgestellt.
- **Bluetooth-Signal im Menü** (ausgezeichnet / gut / mittel / schwach) für jede Bluetooth-Maus, mit dem genauen dBm-Wert im Detail-Fenster.
- **Problem melden:** ein Diagnosebericht ohne Namen und Seriennummern, mit einer Vorschau dessen, was genau kopiert wird, dazu eine Prüfung der macOS-Systemschnittstellen, die die App braucht.
- Ein Menü, in dem jeder Modus erklärt ist, mit Live-Anzeige, ob gerade Beschleunigung aktiv ist.
- **Auch für Trackpads:** Das eingebaute Trackpad und das Magic Trackpad bewegen sich in allen Modi ebenfalls 1:1. Das ist standardmäßig an und lässt sich unter **Einstellungen → Maus → Auch für Trackpads** abschalten. Das Detail-Fenster zeigt dazu Zeigertempo, Tippen zum Klicken, Force Click und Akku.
- **Akku in der Menüleiste:** eine kleine stehende Batterie links neben dem Maus-Icon bei kabellosen Mäusen, rot ab 15 %. Den genauen Wert zeigt der Hinweis beim Drüberfahren.
- Angeschlossene Mäuse mit Hersteller, Verbindungsart (USB-Kabel, Funk über USB-Empfänger, Bluetooth), Akku und Abfragerate.
- **Maus-Details & Messung**: Abfragerate (live gemessen), Qualität der Übertragung bzw. Funkverbindung, Bluetooth-Signal als Balken und Wort (*Ausgezeichnet / Gut / Mittel / Schwach*, dBm in Klammern) eine **DPI-Messung** mit Lineal und Leertaste. Bei **Logitech-Mäusen** wird die eingestellte DPI direkt aus der Maus gelesen.
- **Vier Menüleisten-Stile** nach dem Vorbild hochwertiger Mac-Tools: *Farbig* (Standard), *Monochrom*, *Zeiger* und ein kompaktes *1:1*-Badge.
- Startet auf Wunsch bei der Anmeldung. Deutsch und Englisch, je nach Systemsprache.

## Installation

**Am einfachsten:** Öffne das **Terminal** und füge diese Zeile ein:

```bash
curl -fsSL https://raw.githubusercontent.com/iamadesignerusually/ExactMouse-Redux/main/install.sh | bash
```

Das Skript lädt die neueste Version, prüft die Prüfsumme, installiert nach `/Applications` und startet die App. Es erscheint keine Gatekeeper-Warnung. Deinstallieren geht mit `… | bash -s -- --uninstall`.

**Oder per DMG:**

1. **[ExactMouseRedux.dmg](https://github.com/iamadesignerusually/ExactMouse-Redux/releases/latest/download/ExactMouseRedux.dmg)** laden. Der Link liefert immer die neueste Version, ältere stehen unter [Releases](https://github.com/iamadesignerusually/ExactMouse-Redux/releases).
2. Öffnen und die App in **Programme** ziehen.
3. Die App starten. Weil sie kostenlos und nicht von Apple notarisiert ist, meldet macOS „konnte nicht überprüft werden". Auf **Fertig** klicken.
4. **Systemeinstellungen → Datenschutz & Sicherheit** öffnen, nach unten scrollen, bei *ExactMouse Redux* auf **Dennoch öffnen** klicken und mit dem Passwort bestätigen. Das ist nur einmal nötig.

Voraussetzung ist macOS 14.4 oder neuer. Für die Messungen im Detail-Fenster braucht die App die Berechtigung *Eingabeüberwachung*. Die Daten werden nur lokal ausgewertet.

## Häufige Fragen

**Ist das das offizielle SteelSeries ExactMouse Tool?** Nein. Es ist eine unabhängige, inoffizielle Neuumsetzung mit denselben Funktionen. SteelSeries hat damit nichts zu tun.

**Das SteelSeries ExactMouse Tool geht unter macOS 27 nicht mehr. Was tun?** ExactMouse Redux installieren. Es übernimmt Modus und Einstellungen des Originals automatisch. Danach das Original beenden und aus den Anmeldeobjekten entfernen.

**Funktioniert es nur mit SteelSeries-Mäusen?** Nein, mit jeder Maus und auch mit dem MacBook-Trackpad bzw. Magic Trackpad (abschaltbar über „Auch für Trackpads").

**Warum fühlt sich das Trackpad langsamer an?** Ohne Beschleunigung fällt der Tempo-Schub bei schnellen Wischbewegungen weg. Der Tempo-Regler in den Systemeinstellungen wirkt dann nicht. Wer das nicht mag, schaltet „Auch für Trackpads" unter Einstellungen → Maus aus.

**Kann es die DPI auslesen?** Die in der Maus gespeicherte DPI-Stufe kann macOS nicht lesen. Redux kann sie aber **messen**.

**Ist es kostenlos? Werden Daten gesammelt?** Die App ist kostenlos, Pro-Funktionen sind im Early Access gratis. Sie ist proprietäre Software (nicht Open Source, siehe [Lizenz](LICENSE)). Es gibt kein Tracking, keine Datensammlung. Die einzige Verbindung geht zu GitHub für Updates.

Die Versionierung folgt [Semantic Versioning](https://semver.org) mit Tags `vX.Y.Z`, Änderungen stehen im [CHANGELOG.md](CHANGELOG.md).

Warum das Original nicht mehr funktioniert, steht in der [englischen README](README.md#why-the-original-broke).

## Autor & Lizenz

Entwickelt von **Maximilian Dahl** ([@iamadesignerusually](https://github.com/iamadesignerusually)). © 2026 Maximilian Dahl, alle Rechte vorbehalten. ExactMouse Redux ist proprietäre Software, siehe [Lizenzvertrag](LICENSE). Versionen bis 3.7.5 wurden unter der MIT-Lizenz veröffentlicht. Marken, Datenschutz und Haftung: [LEGAL.md](LEGAL.md). Fehler und Ideen gern als [Issue](https://github.com/iamadesignerusually/ExactMouse-Redux/issues).
