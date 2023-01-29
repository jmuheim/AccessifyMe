# Tools, Skill, and Concepts

## Tools

- Manual
  - Desktop browser
  - Keyboard
  - NerdeFocus (Chrome extension)
  - What has focus? (bookmarklet)
  - Focus order (bookmarklet)
  - Mobile screen reader
  - Desktop screen reader
  - Colour contrast analyser
  - ZoomText → wie relevant ist das noch, jetzt wo es Responsive Webdesign (RWD) gibt?!
  - Windows High Contrast Mode (HCM)
    - `@media`: https://polypane.app/blog/forced-colors-explained-a-practical-guide/
- Semi-automated
  - WAVE toolbar
- Automated
  - Services?
    - Tenon.io
    - Lighthouse
  - Continuous Integration?
    - ESLint

## Skills

Macht es wirklich Sinn, diese "auszulagern"? Oder "verwässert" es damit die Klarheit der Tugend-Struktur?

Vielleicht macht es Sinn, einfach nur den Screenreader-Teil in einer eigenen separaten Section unterzubringen? Bzw. der Skill-Bereich erklärt nur Dinge, die nirgendwo "sowieso" (und natürlich) erklärt werden (z.B. dass es unterschiedliche Interaktions-Modi gibt, aber etwa das Browsen von Headings oder Tabellen wird gleich "vor Ort" erklärt).

- **Checking contrast**
- **Keyboard-only**
  - https://www.dictionary.com/e/is-this-goodbye-to-the-typewriter-learn-the-love-story-that-helped-create-the-typewriter/
- **Screen reader**
  - https://knowbility.org/blog/2021/a-brief-history-of-screen-readers
  - **Mobile**
    - **VoiceOver/iOS**
    - **Talkback**
  - **Desktop**
    - **NVDA**
      - Browse Mode
      - Etc.
- **Speech input**
  - Dragon Naturally Speaking (https://bbc-news.github.io/accessibility-news-and-you/accessibility-and-testing-with-dragon)

## Concepts

- **From the start!!!**
- **Semantics**
  - Keine leeren Container, z.B. `<p>&nbsp;</p>`!
  - Wer profitiert sonst noch? Extensions wie Link-Lists (Vi-ähnlich), Überschriften-Anspringer für Keyboard-only
- **Solid aesthetics** (z.B. `text-decoration: underline`) vs. **transient aesthetics** (`background-color`)
  - Wichtig: um Win HCM etc. nicht zu "breaken", müssen default "solid aesthetics" (z.B. `outline` bei Fokus, `underline` bei Links, aber auch wenn etwa Checkboxen visuell ersetzt werden durch SVG o.ä.) stets durch ein weiteres "solides" Merkmal ersetzt werden, ODER die Änderungen werden durch ein `@media` Query von solchen Modi (wie eben z.B. Win HCM) ausgeschlossen (falls das überhaupt verlässlich möglich ist)
- **ARIA**
- **1 solution for all** sowie **All information for all** (nicht das Gefühl haben, ein ausführlicher alt-Text sei nur für Screenreader sinnvoll)
- **Meaningful sequence** (of interactive elements and content/headings)
  - Ist content/headings nur für Screenreader relevant, oder auch für andere? (Z.B. Selektieren von Text kann counter-intuitiv sein, wenn DOM und visuelle Anordnung nicht ähnlich sind)
- **Hiding elements properly** (to everybody, from vision, from screen readers)
- **Alternative methods** → z.B. HTML-Variante bei unzugänglichem PDF (aber eher vermeiden!)
  - Eng verwandt mit **2-senses principle**, vielleicht sogar (zumindest manchmal) "dasselbe"?!
    - Some people need to perceive content through multiple senses, such as someone with dyslexia who may need to hear and see the text to understand it better (https://www.w3.org/WAI/people-use-web/tools-techniques/)
  - Auch spannendes Wort: "visual-first content" (siehe https://www.boia.org/blog/when-creating-ux-user-personas-dont-forget-about-people-with-disabilities)
- **Zoom**
  - **Text-only** (increase font sizes)
  - **Full page**
- **Custom color and contrast modes** wie **High Contrast Mode** und **Dark Mode**
- **Inline, block, and inline-block**