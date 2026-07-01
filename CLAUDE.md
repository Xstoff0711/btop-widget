# btop Widget – Projektkontext für Claude Code

## Was ist das?
Ein KDE Plasma 6 Widget (`com.xstoff.btopwidget`), das den Ressourcenmonitor `btop` per `QMLTermWidget` direkt auf dem Desktop einbettet.

## Projektstruktur
```
btop_widget/
├── metadata.json          # Plasma-Widget-Metadaten (ID, Version, Lizenz)
├── install.sh             # Lokale Installation via kpackagetool6
├── contents/
│   └── ui/
│       └── main.qml      # Haupt-QML: QMLTermWidget + QMLTermSession
└── CLAUDE.md              # Diese Datei
```

## Technische Details
- **Widget-ID:** `com.xstoff.btopwidget`
- **Plasma-API:** Minimum 6.0
- **Lizenz:** GPL-2.0-or-later
- **Autor:** xstoff (c.stilling83@googlemail.com)
- **Shell-Programm:** `/usr/bin/btop`
- **Abhängigkeit:** `qmlterm-widget` (QMLTermWidget 2.0)
- Farbschema: DarkPastels, Schriftart: Monospace 12pt, Standardgröße: 800×500px
- btop wird bei Programmende automatisch neu gestartet (`onFinished`)

## Geplante Erweiterungen
- Konfigurierbare Einstellungen (Schriftgröße, Farbschema, Widget-Größe, alternatives Programm)
- README.md mit Screenshot und Installationsanleitung
- LICENSE-Datei (GPL-2.0)
- PKGBUILD für das AUR
- Veröffentlichung auf GitHub
- Einreichung im AUR

## Installation (aktuell)
```bash
bash install.sh
```
Installiert nach `~/.local/share/plasma/plasmoids/com.xstoff.btopwidget/`
