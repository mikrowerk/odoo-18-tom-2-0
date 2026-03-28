# Junie Projekt-Richtlinien für Odoo 18 Addon-Entwicklung

## Projektübersicht
Dieses Projekt entwickelt Odoo 18 Addons im Verzeichnis `odoo-tom-jobcontrol/mikrowerk_project_admin/`.

## Code-Standards

### Python / PEP-8
- Befolge strikt PEP-8 Richtlinien
- Maximale Zeilenlänge: 120 Zeichen (Odoo-Standard)
- Imports sortieren: Standardbibliothek, Drittanbieter, Odoo-Imports, lokale Imports
- Verwende 4 Leerzeichen für Einrückung
- Docstrings für alle öffentlichen Methoden

### Odoo-spezifische Konventionen
- Model-Namen: `snake_case` (z.B. `sale.order`)
- Feld-Namen: `snake_case`
- Methoden-Namen: `snake_case`
- XML-IDs: `module_name.record_name`
- View-IDs: `module_name.model_name_view_type`

## Test-Anforderungen

### Pflicht-Tests
- **Neue Funktionen**: Immer Unit-Tests erstellen
- **Geänderte Funktionen**: Bestehende Tests aktualisieren oder neue hinzufügen
- **Bug-Fixes**: Reproduktionstest vor dem Fix schreiben

### Test-Struktur
- Tests im `tests/` Verzeichnis des Addons
- Testdateien: `test_<feature>.py`
- Testklassen erben von `odoo.tests.common.TransactionCase` oder `HttpCase`
- Test-Methoden beginnen mit `test_`

### Test-Beispiel
```python
from odoo.tests.common import TransactionCase

class TestFeatureName(TransactionCase):
    @classmethod
    def setUpClass(cls):
        super().setUpClass()
        # Setup-Code hier

    def test_feature_behavior(self):
        """Test description."""
        # Arrange
        # Act
        # Assert
```

## Addon-Struktur
```
addon_name/
├── __init__.py
├── __manifest__.py
├── models/
│   ├── __init__.py
│   └── model_name.py
├── views/
│   └── model_name_views.xml
├── security/
│   └── ir.model.access.csv
├── data/
├── demo/
├── static/
├── controllers/
├── tests/
│   ├── __init__.py
│   └── test_model_name.py
└── i18n/
```

## Manifest-Anforderungen
- `version`: Odoo-Version.Addon-Version (z.B. "18.0.1.0.0")
- `depends`: Alle Abhängigkeiten explizit auflisten
- `license`: "AGPL-3"
- `author`: Mikrowerk a Gammadata Brand

## Workflow
1. Verstehe die Anforderung
2. Schreibe/aktualisiere Tests
3. Implementiere die Funktion
4. Stelle sicher, dass alle Tests bestehen
5. Prüfe PEP-8 Konformität
