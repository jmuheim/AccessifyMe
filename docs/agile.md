# Agile

- Shift-Left is about involving testers early in the software development lifecycle → idea is to reduce risks https://www.youtube.com/watch?v=ODJpH04MlHE

- Outcome-orientiertes Arbeiten! → Output minimieren, Outcome maximieren! https://www.youtube.com/watch?v=rf-K8hI9A3Q
  - Z.B. Statt eines einfachen `<select>` wird eine super-fancy Komponente eingesetzt, welche aber mit Tastatur und/oder Screenreader unbedienbar ist
- Automatisieren von Tests → Barrierefreiheit fördert die Testbarkeit von Code (Blackbox-Testing) enorm, da sie Standardkonformität fördert





Typischer Ablauf bei "Requirement" Barrierefreiheit:

- Jemand merkt im Laufe des Projekts (oder am Ende) noch beiläufig an, dass Barrierefreiheit ja auch noch ein Requirement sei! → "Let's just quickly fix it in the finished product!"
- Accessibility Review fördert oft eine Myriade von Problemen zutage → deren Behebung greift tief in die Grundstrukturen des Projekts hinein (z.B. gewählte Components-Library ist nicht Keyboard-only oder Screenreader kompatibel)
- Im besten Fall führt dies zu einem schlechten Kompromiss, welcher niemanden glücklich macht
  - Designer müssen Farben anpassen
  - Entwickler müssen Quick-Fixes machen, manchmal ganze Funktionalitäten vereinfachen oder ausbauen
  - Kunde hat enorme Zusatzkosten (meist benötigt es mehrere Retest/Fixing-Zyklen)
  - Endnutzende finden sich trotzdem oft nicht zurecht ("technisch barrierefrei", aber schlechte UX)



Start testing before there's code to drive out all kinds of defects early in the process!

- (Requirement-Reviews)
- Design Reviews
  - Validate color contrasts
  - Find overly complex processes or interactive elements
  - Wichtig, dass bereits beim Design auch Accessibility-erfahrene Entwickler involviert sind → "Kann ich das akurat implementieren?"
    - Falls wenig/keine Erfahrung in Accessibility vorhanden, dann unbedingt externen Berater hinzuziehen! → determine potential gaps in skills of developers (i.e.: do they know how to implement forms according to the HTML standard? Are they aware that headings are not just there for aesthetic reasons?)
    - Entsprechendes Wissen schrittweise aufbauen! Resultate regelmässig überprüfen!