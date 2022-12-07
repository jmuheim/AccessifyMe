# Virtues, insights, and patterns

1. Virtue: **Offer enough contrast**
   - (Why) **Text needs a contrast of `4:1` to its background (or `3:1` for large text).**
        - Das Kontrastverhältnis bei Text und Bildern von Text zum Hintergrund beträgt mindstens 4.5:1 bei normaler Schriftgrösse und mindestens 3:1 bei grosser Schrift (definiert als mindestens 18pt oder 14pt + fett). Das gilt sowohl für normale Schrift zur Hintergrundfarbe (alle Texte und Hinweise) als auch für Texte in informativen grafischen Elementen, ist aber nicht zwingend für Logos oder rein dekorative Grafiken. (54, 1.4.3)
        - Interaktive Textelemente (z.B. Schalterbeschriftungen) erfüllen die Kontrastanforderung von 4.5:1 in allen Zuständen (fokussiert, bei Mouseover, etc.) gleichermassen. Für die Unterscheidbarkeit zwischen den Zuständen eines interaktiven Elements gelten keine strikten Kontrastanforderungen. (55, 1.4.3)
        - Das Kontrastverhältnis von Bedienelementen (z.B. Textfelder, Radiobuttons, Checkboxen, Schalter, Tabs, etc.) zu den umgebenden Farben beträgt mindestens 3:1. Das gilt für alle visuellen Hinweise, die für die Wahrnehmung und Bedienung erforderlich sind (z.B. Formularfeldbegrenzungen, Ausklappindikatoren bei Flyouts/Dropdowns, Häkchen in einer Checkbox, etc.), insbesondere auch für die Wahrnehmung des Zustands eines Elements. Der Hover-Zustand eines Elements muss nicht unterscheidbar sein vom Standard-Zustand. (59, 1.4.11)

   - (Why) **Graphical info needs a contrast of `3:1` to its background.**
        - Das Kontrastverhältnis bei informativen grafischen Elementen (z.B. Linien und Kurven in Diagrammen) zu den umgebenden Farben beträgt mindestens 3:1. Das gilt für alle visuellen Hinweise, die für die Wahrnehmung und Bedienung erforderlich sind (z.B. Schalter zum Anpassen der Kurven). Der Hover-Zustand eines Elements muss nicht unterscheidbar sein vom Standard-Zustand. (60, 1.4.11)

        - Wenn Links innerhalb von Fliesstext nur durch Farbe vom Fliesstext unterschieden werden, muss der Kontrast zwischen Link und umgebendem Fliesstext den minimalen Kontrastwert von 3:1 erreichen. Als Alternative kann eine weitere visuelle Auszeichnung von Links verwendet werden (z.B. Unterstreichung, Fettschrift, Rahmen, etc.). (52, 1.4.1)

2. **Serve multiple senses (2-senses principle)**

    1. (Why) **Visual information should be conveyed by color and shape**
        - (Z.B. Kuchen-Diagramme)
    2. (Why) **The status of an element shouldn't be conveyed by color alone**
      - Information wird nicht durch Farbe allein vermittelt. Das gilt auch für Hover- und Fokus-Zustände. Wenn Information farblich übermittelt wird (z.B. rot hervorgehobene Teile eines Texts, um deren Wichtigkeit zu markieren), ist ein weiterer visueller Reiz vorhanden, um diese Information zu vermitteln (z.B. Fettschrift oder Unterstreichung, unterschiedliche Symbole, zusätzlicher Text). (51, 1.4.1)
    3. (Why) **Indications should be understandable with different senses**
        - Inhalte weisen nicht ausschliesslich auf sensorische Eigenschaften (rein visuell erkennbar, rein akustisch verständlich) hin, z.B. «Den grünen Schalter links betätigen», «Korrigieren Sie die Eingaben in den rot umrandeten Feldern», «Mit Klick auf das Bild rechts …». (48, 1.3.3)
        - Zeichenverwendung: Schriftformatierungen mit Informationsgehalt (z.B. durchgestrichen) sind auch nicht-visuell zugänglich. (45, 1.3.1e)
    4. (Why) **Hiding elements specifically from some channel**
        1. Elemente sind korrekt versteckt und zwar so, dass sie auch durch assistierende Technologien nicht ausgegeben werden, wenn sie visuell nicht sichtbar sind. (76, 2.4.3) ⁉️ Was macht das hier?
    5. (Why) **Semantics should be used to mark up content**
        1. (Sneak peak für Virtue "Apply Semantics...")?! Oder ganz weglassen?

3. **Describe graphics by text alternatives**

    - (Why) **Informative graphics need an alternative text**
        - Informative Grafiken weisen einen Alternativtext auf, der äquivalente Informationen vermittelt. (1, 1.1.1)
        - Tests und Übungen, deren Inhalt zwingend aus Nicht-Text-Inhalt bestehen muss, weisen einen Alternativtext auf, der dessen Zweck beschreibt (aber nicht die Information, die benötigt wird, um den Test oder die Übung zu bestehen). (3, 1.1.1)
        - Sensorische Inhalte, die zwingend aus Nicht-Text-Inhalt bestehen, weil sie durch Worte nicht ausreichend ersetzt werden können (z.B. Musikaufführungen, Kunstwerke), weisen einen Alternativtext auf, der den Zweck des Nicht-Text-Inhalts beschreibt. (4, 1.1.1)
        - Verlinkte Grafiken weisen einen Alternativtext auf, der Linkziel oder -zweck beschreibt. (6, 1.1.1)
        - Alternativtexte von Grafiken beinhalten keine redundanten Informationen, z.B. eine bereits in einer Bildlegende oder einem Linktext vorhandene Information oder eine Information wie «Grafik …», «Bild …». (7, 1.1.1)
        - Das Seiten-Logo (mit Link zur Startseite) verfügt über eine sinnvolle Textalternative (Muster alt="Logo Firmenname, zur Startseite") (10, 1.1.1)
        - Grafische Schalter sind korrekt beschriftet. (8, 1.1.1)
    - (Why) **Complex informative graphics need a longer description**
        - Wenn Alternativtext nicht ausreicht (z.B. bei komplexen Grafiken wie Infografiken oder Diagrammen), wird eine lange Beschreibung bereitgestellt und im Alternativtext darauf hingewiesen. (12, 1.1.1)
    - (Why) **Decorative graphics should be ignored by screen readers**
        - Dekorative Grafiken weisen ein leeres alt-Attribut auf. (13, 1.1.1)
    - (Why) **Microsoft High Contrast Mode should be supported**
        - Informative Grafiken sind bei benutzerdefinierten Farbeinstellungen sichtbar. (9, 1.1.1)
    - **Others**
        - Als Webfont eingebundene Symbole sind so umgesetzt, dass sie nicht zu unverständlichen Ausgaben durch Screenreader führen. (5, 1.1.1)
        - Sonderzeichen vermitteln Informationen auf zugängliche Weise. (11, 1.1.1)
        - Grafische CAPTCHAs sind barrierefrei umgesetzt oder es gibt eine Alternative. (14, 1.1.1)

4. **Ensure keyboard-only operability**
    - (Why) **Interactive elements should be focusable**
      - Inhalte/Funktionalitäten (Seitenfunktionalitäten, Seitenelemente, Formularfelder, Kontrollelemente, Schalter, Links, Dialoge, Multimedia-Steuerungen, etc.) sind mit der Tastatur alleine (d.h. ohne Zeigegerät) bedienbar. Elemente sind in der logischen Tab-Reihenfolge erreichbar und können erwartungsgemäss bedient werden. (63, 2.1.1) ⁉️ Letzter Punkt wird ansich schon durch 2.4.3 abgedeckt?
      - Formular-Schalter sind korrekt umgesetzt (als `<button>`-Element oder `<input type="submit">`-Element). (4.1.2)
    - (Why) **Interactive elements should be operable via keyboard alone**
    - (Why) **Interactive elements need clearly visible focus states**
      - Der Tastaturfokus ist genügend sichtbar, z.B. durch einen gut sichtbaren Rahmen (für alle fokussierbaren Elemente wie Links, Schaltflächen, Radio-Buttons, Checkboxen, Ausklapplisten, verlinkte grafische Elemente, etc.). (81, 2.4.7)
    - (Why) **The sequence of interactive elements should be meaningful**
      - Die Fokus-Reihenfolge ist sinnvoll, d.h. intuitiv verständlich und nachvollziehbar. (2.4.3)
      - Der Tastatur-Fokus wird sinnvoll geführt, wenn jemand mit Elementen auf der Seite interagiert, die zu einer Veränderung innerhalb der Seite führen (ohne Page-Refresh), z.B. nach dem Klick auf einen Schalter, der einen Dialog anzeigt (Erreichen des Dialogs und Interagieren im Dialog, Verlassen desselben, Fokus zurück auf das dialog-auslösende Element, Weiternavigieren auf der Seite). (74, 2.4.3)
    - (Why) **Interactive elements should be visible**
      - Sprunglinks werden bei Tastaturbedienung sichtbar. (82, 2.4.7)
    - (Why) **States of interactive elements should be distinct**
    - (Why) **Too many tab stops should be avoidable**
      - Sprunglinks ermöglichen das einfache Überspringen von sich wiederholenden Informationsblöcken (z.B. Navigation, Headerbereich) mit der Tastatur. (71, 2.4.1)
      - Unternavigationspunkte können mit der Tastatur übersprungen werden. Unternavigationen werden entweder erst auf Auslösen geöffnet (z.B. mittels Enter- oder Pfeil-nach unten-Taste) oder Unternavigationen werden zwar angezeigt, mit der Tabulator-Taste wird aber zum nächsten Hauptnavigationspunkt gesprungen (Hineinnavigieren in die Unternavigation nur mit Pfeil-Tasten). (75, 2.4.3)
    - (Why) **The keyboard focus should not be overly restricted (trapped)**
      - Es treten keine Tastaturfallen auf. Alle Bedienelemente können mit der Tastatur erreicht und wieder verlassen werden. Die uneingeschränkte Navigation rückwärts mit Shift+Tab ist sichergestellt. (66, 2.1.2)
    - (Why) **Single letter keyboard shortcuts should be avoidable**
      - Einzeltasten-Kurzbefehle (bestehend aus einer einzelnen Buchstaben-, Interpunktions-, Zahlen- oder Symbolzeichentaste) sind entweder deaktivierbar oder veränderbar oder nur bei Fokus aktiv. (67, 2.1.4)
    - **Others**
      - Elemente, die einzeln ausgegeben werden sollen, sind als display: block ausgezeichnet, sonst können sie im Browse-Mode (normale Inhaltsnavigation mittels Pfeil-Tasten) nicht einzeln angesteuert werden. Dies gilt hauptsächlich für interaktive Elemente (Links, Buttons, etc.). (64, 2.1.1)
      - Elemente, die von Screenreadern zusammen ausgegeben werden sollen (etwa eine Überschrift, die sowohl eine Kategorie als auch ein Datum enthält), sind als display: inline bzw. display: inline-block ausgezeichnet und befinden sich zusammen in einem display: block-Container. (65, 2.1.1)

5. **Define a coherent heading hierarchy**

    - (Why) **Headings and subheadings must be related meaningfully**
        - Überschriften: Die Hierarchie der Überschriften-Ebenen ist inhaltlich-logisch korrekt und vermittelt die Struktur der Inhalte. (25, 1.3.1a)
    - (Why) **Heading levels should not be skipped**
        - Überschriften: Es werden keine Überschriften-Ebenen ausgelassen. (26, 1.3.1a)
    - (Why) **Page areas should be introduced by a heading**
        - Überschriften: Eigenständige Seitenbereiche weisen eine eigene Überschrift auf, da sie sonst der vorausgehenden Überschrift falsch untergeordnet werden. Für Inhalts- und Funktionsblöcke wie Kopf- und Fussbereich, Navigation, Breadcrumb, etc. können visuell unsichtbare Überschriften eingesetzt werden. (27, 1.3.1a)
        - Überschriften: Überschriften für Akkordeons sind als solche ausgezeichnet. (30, 1.3.1a)
        - Überschriften und Labels (z.B. in Eingabefeldern, bei Schaltern, etc.) sind ausreichend informativ und korrekt und bezeichnen den zugeordneten Web-Inhalt verständlich. Es gibt keine gleichlautenden Überschriften oder Labels auf einer Seite. (80, 2.4.6) (❗️Auch bei "Forms")
    - (Why) **Headings should have subsequent content**
        - Überschriften: Überschriften weisen nachfolgenden Inhalt (bzw. darunter liegende Überschriften) auf. (28, 1.3.1a)
    - **Others**
        - Überschriften: Überschriften sind im Code vor den ihnen zugehörigen Inhalten platziert. (29, 1.3.1a) → Concept "Meaningful sequence"
        - Überschriften: Überschriften sind semantisch korrekt mit dem Überschriften-Element (`<h1>` bis `<h6>`) ausgezeichnet. (31, 1.3.1a) → Concept "Semantics"

6. **Apply semantics to structure content** → Concept "Semantics"

    - (Why) **Landmarks should encompass page areas**
        - Landmark Roles (HTML5-Elemente wie `<header>`, `<main>`, etc. sowie ARIA-Rollen) werden korrekt vergeben. Sie werden mit Bedacht verwendet und konsistent eingesetzt (möglichst keine Mehrfach-Verwendung derselben Rolle, konsistentes Auszeichnen aller wichtigen Seitenbereiche). (22, 1.3.1)
    - (Why) **Lists should be marked up as `<ul>`, `<ol>`, or `<dl>`**
        - Listen: Aufzählungen sind semantisch korrekt als Listen (`<ul>`, `<ol>`, `<dl>`) formatiert. (32, 1.3.1b)
        - Listen: Listen mit nur einem Eintrag werden vermieden (ausser sie werden automatisch generiert). (33, 1.3.1c)
        - Listen: Glossare und ähnliche Informationslisten sind als Definitionslisten formatiert. (34, 1.3.1c)
    - (Why) **Quotes should be marked up as `<cite>` or `<blockquote>`**
        - Zeichenverwendung: Visuell erkennbare Zitate sind semantisch korrekt ausgezeichnet (z.B. als `<blockquote>` und `<cite>`), sodass der jeweilige Text auch beim Einsatz von assistierenden Technologien als Zitat erkannt wird. (46, 1.3.1e)
    - **Others**
        - Breadcrumbs oder Prozessanzeigen sind auch nicht-visuell als solche erkennbar. (23, 1.3.1)
        - Fussnoten sind barrierefrei umgesetzt: Auch mit einem Screenreader ist beim Fussnoten-Zeichen der Zugriff auf den Fussnotentext gegeben, ohne dass der ursprüngliche Kontext verloren geht. (24, 1.3.1)
        - Zeichenverwendung: Absätze sind semantisch korrekt ausgezeichnet, nicht nur visuell (z.B. mittels doppelten `<br>`). (42, 1.3.1e)
        - Zeichenverwendung: Inhalte befinden sich innerhalb semantisch bedeutsamer HTML-Elemente (z.B. `<h#>`, `<p>`, `<ul>`, `<ol>`, etc.); das Verwenden von `<div>`- oder `<span>`-Elementen (die keine semantische Relevanz aufweisen) ist nicht ausreichend. (43, 1.3.1e)
        - Zeichenverwendung: Leere bedeutungstragende Elemente werden vermieden. (44, 1.3.1e)

7. **Enhance screen reader compatibility**
    - (Why) **Every page needs a unique, self-speaking title**
      - Seiten haben einen eindeutigen, aussagekräftigen Titel, der Thema oder Zweck der Seite sowie den Betreiber enthält (Muster: "Thema/Zweck der Seite - Seitenbetreiberin") (72, 2.4.2)
    - (Why) **The language declaration should be correct**
      - Die Sprachdeklaration ist vorhanden und korrekt. (87, 3.1.1)
      - Sprachwechsel bei längeren Textpassagen werden angegeben: Anderssprachige Textabschnitte sind mit dem lang-Attribut ausgezeichnet. Bei kurzen anderssprachigen Textpassagen (einzelne Wörter) wird auf den Sprachwechsel verzichtet. (88, 3.1.2)
    - (Why) **Active elements should be declared as `[aria-current]`**
      - Aktive Elemente (z.B. der aktive Menüpunkt in einer Navigation) sind semantisch erkennbar ausgezeichnet, wenn sie visuell klar als aktiv erkennbar sind. (21, 1.3.1)
    - (Why) **Content should be aligned in a meaningful sequence**
      - Inhalte müssen im Code (DOM) eine korrekte Reihenfolge aufweisen (unabhängig von CSS) (47, 1.3.2)
    - (Why) **Link texts should be self-speaking and unique**
      - Link-Texte sind selbstsprechend, d.h. aus sich selbst heraus oder über den Kontext (gleiches `<p>`-Element, gleiches Listenelement, gleiche Tabellenzelle, Spalten- oder Zeilenüberschrift in Tabelle) verständlich. (77, 2.4.4)
      - Mehrfache, unterschiedliche Links (z.B. eine Überschrift, eine Grafik und ein zusätzlicher Textlink) auf dasselbe Ziel werden vermieden. (78, 2.4.4)
    - (Why) **Asynchronous notifications should be marked as `[aria-live]` regions**
      - Statusmeldungen sind für assistierende Technologien zugänglich und überstrapazieren den Audiokanal nicht. (111, 4.1.3)

8. **Provide tabular data as tables**

    - (Why) **Tabular data should be marked up as `<table>`**
        - *Keine Grids o.ä.! Tabellen sind Tabellen! Punkt. Mann...*
    - (Why) **Tables should have a `<caption>`**
        - Tabellen: Daten-Tabellen weisen Tabellenüberschriften (`<caption>`) auf. (38, 1.3.1d)
    - (Why) **Tables should have `<th>` elements for columns and rows**
        - Tabellen: Daten-Tabellen weisen Spalten- oder Zeilentitel (`<th>`) auf, idealerweise beides. (39, 1.3.1d)
    - (Why) **Tables should not contain any "higher" markup elements**
        - Tabellen: Daten, welche eindeutig tabellarischen Charakter aufweisen, sind semantisch korrekt als Tabelle formatiert und enthalten nur die semantisch zugelassenen Attribute, z.B. keine Paragraphen- (`<p>`) oder Überschriften-Elemente (`<h1>` bis `<h6>`). (40, 1.3.1d)
    - (Why) **Tables should not contain empty rows or columns**
        - Tabellen: Daten-Tabellen weisen keine leeren Spalten oder Zeilen auf. (41, 1.3.1d)
    - (Why) **Tables should be responsive**

9. **Build robust forms and validations**

    - (Why) **Form inputs should have a `<label>`**
        - Formulare: Formularfelder weisen korrekt verknüpfte Labels auf. (37, 1.3.1c)
        - Überschriften und Labels (z.B. in Eingabefeldern, bei Schaltern, etc.) sind ausreichend informativ und korrekt und bezeichnen den zugeordneten Web-Inhalt verständlich. Es gibt keine gleichlautenden Überschriften oder Labels auf einer Seite. (80, 2.4.6) (❗️Auch bei "Headings")
        - Formularfelder verfügen über visuell sichtbare Labels. Die alleinige Verwendung von placeholder-Attributen zur Beschriftung von Formularfeldern wird vermieden. (95, 3.3.2)
        - Formatangaben bei Formularfeldern sind zugänglich und mit den zugehörigen Eingabefeldern eindeutig verknüpft, d.h. zusätzlich angegebene Hinweise zu Eingabeformaten sind auch durch assistierende Technologien korrekt erfassbar. (96, 3.3.2)
    - (Why) **Groups of inputs should be grouped using `<fieldset>` and `<legend>`**
        - Formulare: In umfangreichen Formularen werden inhaltlich zusammengehörige Formularfelder mittels `<fieldset>`/`<legend>`-Kombination gruppiert. (35, 1.3.1c)
    - (Why) **Non-interactive elements between form controls should be associated with `[aria-describedby]`**
        - Formulare: Informationen, die sich zwischen den Eingabefeldern befinden (z.B. als `<p>` zwischen mehreren Eingabefeldern) sind verknüpft mit den relevanten Formularfeldern, sodass sie auch mit Screenreadern wahrgenommen werden können (z.B. mit aria-describedby). (36, 1.3.1c)
    - (Why) **Validation messages should be clearly associated and meaningful**
        - Fehlermeldungen in Formularen sind barrierefrei umgesetzt: Automatisch erkannte Eingabefehler geben in der Fehlermeldung einen klaren Hinweis (in Textform) auf das fehlerhafte Element und sind mit diesem eindeutig verknüpft. (93, 3.3.1)
        - Fehlermeldungen sind informativ und mit den zugehörigen Eingabefeldern eindeutig verknüpft: Es sind Korrekturempfehlungen vorhanden, wenn falsche Benutzereingaben erfolgen. (97, 3.3.3)
    - (Why) **Required inputs should be marked up with `[required]`**
        - Pflichtfelder sind zugänglich ausgezeichnet, sowohl auf visueller wie nicht-visueller Ebene, z.B. mit required-Attribut. (94, 3.3.2)

    - **Others**
        - Die zugängliche Beschriftung eines Bedienelements entspricht exakt der visuellen oder beinhaltet sie (ermöglicht v.a. Sprachsteuerung). (85, 2.5.3)
        - Der Kontext ändert sich nicht automatisch bei Fokus (z.B. Weiterleitung auf eine andere Seite). (89, 3.2.1)
        - Der Kontext ändert sich nicht automatisch bei Eingabe (z.B. Weiterleitung auf eine andere Seite). (90, 3.2.2)
        - Nutzereingaben müssen überprüfbar sein vor Prozess-Abschluss mit finanziellen/rechtlichen Folgen. Es ist sichergestellt, dass die Gelegenheit besteht, eingegebenen Daten zu überprüfen und gegebenenfalls zu korrigieren, bevor ein endgültiger Abschluss erfolgt. (98, 3.3.4)
        - Eingabefelder zu Nutzerdaten können automatisch ausgefüllt werden. (50, 1.3.5)

10. **Build a robust yet flexible experience**
    - Inhalte sind in beiden Bildschirmorientierungen (Hoch- und Querformat) korrekt dargestellt und nutzbar. Passt sich der Inhalt nicht automatisch an die Bildschirmorientierung an, steht ein Schalter zur Verfügung zum manuellen Drehen des Bildschirminhalts (für Websites vom Browser sichergestellt, für Mobile Apps durch Design und Entwicklung sicherzustellen). (49, 1.3.4)
    - Automatisch abspielender Audio-Inhalt von mehr als 3 Sekunden wird nach Möglichkeit vermieden. Ist er doch vorhanden, ist er steuerbar (Wiedergabe stoppen, Lautstärke unabhängig von der Systemlautstärke regeln). Die Steuerung befindet sich am Anfang der Seite. (53, 1.4.2)
    - Elemente sind auf mindestens 200% zoombar, entweder der Text allein oder die komplette Seite (für Websites in der Regel vom Browser sichergestellt, für Mobile Apps durch Design und Entwicklung sicherzustellen). (56, 1.4.4)
    - Texte werden nicht nur als Grafiken eingebunden, denn diese lassen keine Anpassungen zu (z.B. Grösse skalieren, Vorder- und Hintergrund-Farben verändern, etc.). Ausgenommen sind Texte, bei denen eine bestimmte Art der Präsentation für die vermittelte Information unentbehrlich ist (z.B. Logos oder Markennamen). (57, 1.4.5)
    - Inhalt lässt sich ohne Einschränkungen (z.B. Überlappungen) und ohne horizontales Scrollen in den Viewport-Mindestdimensionen von 320x256 CSS-Pixel darstellen. Das entspricht einer Vergrösserung auf 400%. (58, 1.4.10)
    - Abstände zwischen Zeilen, Wörtern und Buchstaben sowie nach Absätzen sind ohne resultierende Einschränkungen um bestimmte Werte vergrösserbar. Ausnahmen sind: Untertitel in Video-Inhalten, PDF-Dokumente. (61, 1.4.12)
    - Inhalte, die per Hover oder Fokus eingeblendet werden, sind nicht störend und es kann mit ihnen interagiert werden. Folgende drei Bedingungen sind erfüllt: Per Hover oder Fokus eingeblendete Inhalte sind ausblendbar, hoverbar und dauerhaft (persistent). (62, 1.4.13)
    - Timeout-Zeitintervalle sind anpassbar oder können deaktiviert werden. Es ist ein deutlicher Hinweis auf diese Möglichkeiten erforderlich. Für die Anpassungsmöglichkeiten gilt: Entweder ist das Timeout auf mindestens den zehnfachen Wert der Standardeinstellung möglich oder es erfolgt eine Warnung, bevor das Timeout abläuft, und es werden mindestens 20 Sekunden zur Verfügung gestellt, um mit einer einfachen Aktion (z.B. «Drücken Sie die Leertaste») die verfügbare Zeit zu verlängern. Diese Option muss mindestens zehn Mal bestehen. (68, 2.2.1)
    - Es existieren mindestens zwei der folgenden drei Methoden, um Zugang zu Inhalten zu bekommen: Navigation, Suchfunktion, Sitemap. (79, 2.4.5)
    - Zeigergesten erfordern keinen bestimmten Pfad oder Mehrfach-Touch oder es bestehen konventionelle Alternativen dazu. (83, 2.5.1)
    - Zeigereingaben sind abbrechbar oder können rückgängig gemacht werden. (84, 2.5.2)
    - Durch Gerätebewegung ausgeführte Funktionalität kann auch durch konventionelle Eingabemethoden angesteuert und deaktiviert werden. (86, 2.5.4)
    - Die Navigation ist konsistent, d.h. innerhalb einer Anwendung gleichbleibend angeordnet und aufgebaut. (91, 3.2.3)
    - Bestandteile mit gleicher Funktion sind konsistent umgesetzt, sowohl auf visueller wie auch auf semantischer Ebene. (92, 3.2.4)
    - Der HTML-Code weist keine für die Barrierefreiheit relevanten Fehler auf. (99, 4.1.1)

11. **Choose accessible components**
     - Akkordeons sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt, ihr Status wird vermittelt (z.B. «reduziert» bzw. «erweitert»).  (100, 4.1.2)
     - Autocompletes sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt, die Anzahl aktuell verfügbarer Vorschläge, der aktuelle Eintrag beim Navigieren der Optionen sowie die schlussendlich gewählte Option werden durch Screenreader vermittelt. (101, 4.1.2)
     - Datumswähler sind barrierefrei umgesetzt, sofern keine Alternative dazu besteht (z.B. manuelle Datumseingabe in Formularfeld). Sie werden durch Screenreader korrekt angesagt, der aktuelle Eintrag beim Navigieren der Optionen sowie die schlussendlich gewählte Option werden durch Screenreader vermittelt. (102, 4.1.2)
     - Dialoge (auch Modale, Overlays, Lightboxes, etc. genannt) sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt; das Element, das den Dialog öffnet, weist auf den Dialog hin. (103, 4.1.2)
     - Dropdowns (auch Mega-Dropdowns) sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt, ihr Status wird vermittelt (z.B. «erweitert» bzw. «reduziert»), der aktuelle Eintrag beim Navigieren der Optionen wird durch Screenreader vermittelt. (104, 4.1.2)
     - Karusselle (Slider) sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt. (105, 4.1.2)
     - Tabs (Registerkarten) sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt, ihr Status wird vermittelt (z.B. «aktiv» bzw. «nicht aktiv»). (106, 4.1.2)
     - Tooltips sind barrierefrei umgesetzt. Einfache, kurze Inhalte werden durch Screenreader sogleich angesagt. Beinhalten Tooltips komplexe Inhalte, so müssen diese manuell gelesen werden können (in diesem Fall handelt es sich eher um einen Dialog). (107, 4.1.2)
     - Weitere JavaScript-Widgets sind barrierefrei zugänglich, d.h. so programmiert, dass sie mittels assistierender Technologien verstanden und uneingeschränkt verwendet werden können. Sie werden z.B. durch Screenreader korrekt angesagt; Funktion, Rolle und Status werden korrekt und aktuell vermittelt. (108, 4.1.2)
     - Der Einsatz von ARIA ist sinnvoll und korrekt. Wann immer möglich werden Standard-HTML-Elemente verwendet; ARIA wird eingesetzt wenn kein entsprechendes HTML-Element existiert oder weil eine technische Notwendigkeit dafür besteht. (109, 4.1.2)

12. **Add audio transcripts and video subtitles**

     - Video- und Audio-Inhalte weisen einen Alternativtext auf, der den Titel und/oder eine kurze Umschreibung vermittelt. (2, 1.1.1)
     - Für aufgezeichnete reine Audio-Inhalte (z.B. Podcasts) existieren Textabschriften oder eine Audiodeskription. Ausnahme: Wenn der reine Audio-Inhalt eine Alternative für bereits bestehenden Text (und als solche deutlich gekennzeichnet) ist, dann ist keine zusätzliche Textabschrift erforderlich. (15, 1.2.1)
     - Für aufgezeichnete reine Video-Inhalte (z.B. Stummfilme) existieren Textabschriften oder gleichwertige Alternativen als Audio-Inhalt. Ausnahme: Wenn der reine Video-Inhalt eine Alternative für bereits bestehenden Text (und als solche deutlich gekennzeichnet) ist, dann ist keine zusätzliche Textabschrift oder gleichwertige Alternative als Audio-Inhalt erforderlich. (16, 1.2.1)
     - Für aufgezeichnete Video-Inhalte mit Audio (z.B. Spielfilme) existieren gleichwertige, synchrone Untertitel. (17, 1.2.2)
     - Für synchronisierte Video-Inhalte (Videos, in denen Audio- und Videospur zusammen die komplette Information ergeben) existieren Textabschriften oder Audiodeskriptionen. Für die Audiodeskription gilt: Wenn alle Informationen der Videospur bereits in der Audiospur enthalten sind, ist keine Audiodeskription erforderlich. Ausnahme: Wenn der synchronisierte Video-Inhalt eine Medienalternative für bereits bestehenden Text (und als solche deutlich gekennzeichnet) ist, dann ist keine zusätzliche Textalternative oder Audiodeskription erforderlich. (Dieser Checkpunkt kann vernachlässigt werden, falls Level AA angestrebt wird und damit 1.2.5 in Kraft tritt. Um Konformitätsstufe A zu erreichen, benötigen synchronisierte Video-Inhalte entweder eine Textabschrift oder eine Audiodeskription. Für Konformitätsstufe AA ist immer eine Audiodeskription erforderlich.) (18, 1.2.3)
     - Für Live Video-Inhalte mit Audio (z.B. Nachrichtensendung) existieren gleichwertige, synchrone Untertitel. (19, 1.2.4)
     - Für synchronisierte Video-Inhalte (Videos, in denen Audio- und Videospur zusammen die komplette Information ergeben) existieren Audiodeskriptionen für inhaltlich relevante, rein visuelle Inhalte. Für die Audiodeskription gilt: Wenn alle Informationen der Videospur bereits in der Audiospur enthalten sind, ist keine Audiodeskription erforderlich. (Dieser Checkpunkt kann vernachlässigt werden, falls Konformitätsstufe A angestrebt wird und damit 1.2.3 in Kraft ist. Um Konformitätsstufe A zu erreichen, benötigen synchronisierte Video-Inhalte entweder eine Textabschrift oder eine Audiodeskription. Für Konformitätsstufe AA ist immer eine Audiodeskription erforderlich.) (20, 1.2.5)
     - Dauerhaft animierte Inhalte (länger als fünf Sekunden) können mittels gut sichtbarer Bedienelemente pausiert, gestoppt oder ausgeblendet werden. Als dauerhaft animiert gelten Inhalte, die sich bewegen und/oder automatisch aktualisieren, die blinken oder scrollen. Sie beginnen automatisch und werden parallel zu anderen Inhalten dargestellt. (69, 2.2.2)
     - Es gibt keine Elemente, die öfter als dreimal in einer Sekunde blitzen, oder der Blitz ist unterhalb eines definierten Grenzwerts für Blitze. (70, 2.3.1)