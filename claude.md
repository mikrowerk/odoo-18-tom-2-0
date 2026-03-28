# Projekt: TomAgency odoo modules
- Odoo Version: 18
- Python 3.11
- Custom Modules: mikrowerk_email_processing, mikrowerk_tom_din5008_forms, mikrowerk_email_processing
- Coding Style: PEP8, englische Kommentare (Code-Kommentare auf Englisch), line length 120 Zeichen

# Odoo
- Die odoo 18 Quelldateien befinden sich hier: /Users/gfr/Documents/odoo_repository/odoo-18

# Projekt dateien
- Projektdateien befinden sich hier: /Users/gfr/Documents/odoo_repository/odoo-tom-2-0
- Es werden third party module von oca, in Unterverzeichnisse 'oca-*' eingebunden, die nicht zu ändern sind
- Entwickelt werden module in den Unterverzeichnissen mikrowerk_email_processing, mikrowerk_tom_din5008_forms, mikrowerk_email_processing, hier sollen die Code Anpassungen erfolgen

# Berechtigungen / Permissions
- Alle lesenden Operationen (Read, Grep, Glob) sind in folgenden Verzeichnissen explizit erlaubt und sollen ohne Rückfrage ausgeführt werden:
  - /Users/gfr/Documents/odoo_repository/odoo-tom-2-0
  - /Users/gfr/Documents/odoo_repository/odoo-18

# Modulstruktur
- Jedes Modul folgt der Standardstruktur: `models/`, `views/`, `security/`, `data/`, `i18n/`, `static/`
- `__manifest__.py`: Versionsnummer im Format `17.0.X.Y.Z`, Lizenz `AGPL-3`
- `security/ir.model.access.csv`: nur Einträge für selbst definierte Modelle (`_name`), nicht für `_inherit`-Erweiterungen
- Neue Modelle erhalten immer einen Eintrag in `ir.model.access.csv`
- Abhängigkeiten in `depends` minimal halten — nur tatsächlich benötigte Module

# Python / Modelle
- Alle Modell-Klassen erben von `models.Model`, `models.TransientModel` oder `models.AbstractModel`
- `_inherit` für Erweiterungen bestehender Odoo-Modelle, `_name` nur für neue Modelle
- Computed fields immer mit `@api.depends` und `store=False` (außer explizit gespeichert werden soll)
- `ensure_one()` am Anfang jeder Methode, die auf einem einzelnen Datensatz operiert
- Keine direkten SQL-Queries — ORM verwenden
- `sudo()` sparsam und bewusst einsetzen, nur wo nötig (z.B. Attachment-Zugriff)
- Fehlerbehandlung mit `raise UserError(_('...'))` für benutzerlesbare Fehler

# XML Views
- Views erben mit `inherit_id` von bestehenden Odoo-Views, nie komplett neu definieren wenn möglich
- `invisible`-Ausdrücke (Odoo 17 domain syntax): `invisible="not field_name"` statt `attrs`
- Alle Felder, die in `invisible`/`required`/`readonly` Ausdrücken referenziert werden, müssen im View deklariert sein (ggf. als `invisible="1"`)
- Bootstrap-Klassen für Layout (z.B. `d-flex`, `gap-2`, `align-items-center`)
- Buttons in Views: `type="object"` für Server-Methoden, `type="action"` für Window-Actions

# Sprache / Internationalisierung (I18N)
- Primärsprache: US-Englisch
- Alle sichtbaren Texte (`string=`, View-Labels, Buttons, Info-Texte) auf Englisch
- In Python-Code: benutzerseitige Strings mit `_('...')` wrappen (import: `from odoo import _`)
- Übersetzungsdateien unter `i18n/de.po` für Deutsch pflegen
- Keine hardcodierten fremdsprachigen Texte in Views oder Modellen

# Git / Versioning
- Branch-Namenskonvention: `feature/TOM-XXX-kurzbeschreibung`
- Commit-Messages: `TOM-XXX: kurze Beschreibung der Änderung`
- Releases über Branch `releases/17-candidate`

# Sicherheit
- Zugriffsrechte immer über `ir.model.access.csv` und/oder Record Rules definieren
- Sensible Aktionen (Löschen, Massenoperationen) auf Gruppen einschränken
- Attachment-Felder (`Binary` mit `attachment=True`) auf `public`-Status prüfen bevor URLs ausgegeben werden

# odoo Datenbank
- die verwendete Datenbank ist in dieser Datei definiert: /Users/gfr/Documents/odoo_repository/odoo-tom-2-0/odoo.conf
