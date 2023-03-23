# 🙏 Virtues, 💡 insights, and 🧩 patterns

Some explanation on the used wording:

- In general, I avoided words that are already used by WCAG, so "principle", "guideline", and "criterion" are out of the game.

- **Virtues:** I want to focus on the inner wish of web-creatives to deliver high quality work (craftsmanship), for whom accessibility is not only a moral imperative, but also a solid compass for creating well structured (meaningful) HTML code. So I use the word "virtue" to highlight this inner wish, to attract people who genuinely *want* to learn about accessibility and see value in it; rather than people who are sent (forced) to learn about "another difficult, maybe annoying" topic from an outside authority (i.e. their boss, or some legal requirement).
  - For the formulation of the specific virtues, I use short and concise imperative statements (starting with a verb, followed by the content of the virtue). It focuses on the web-creatives who are called to do something quite specific.
  - *Other words that I considered:* principle, commandment, code (like in a "codex"), law. I liked "virtue" most because it appeals to the personal/emotional part of this very humane topic of accessibility, yet it doesn't remind too much on religiosity (compared to i.e. commandment). Also, the nice word "virtuoso" comes from "virtue" → "become an accessibility virtuoso!"
- **Insights:** Instead of something "hard" and emotionless like "rule" or "requirement", I use the word "insight" to focus on the web-creatives' *inherent* understanding of the necessity (and utility) of these points.
  - For the formulation of the specific insights, I use "must", because I want to encourage people to *want* to incorporate them into their daily work, like a moral imperative; rather than highlighting an external authority that enforces them (where rather "have to" would be used). See https://www.speakconfidentenglish.com/have-to-need-to-must/.
  - *Other words that I considered:* rule, guideline, requirement, task...
- **Patterns:** As described in my "Epiphany" idea, I feel there's always one "best by far" solution to a requirement/problem.
  - For the formulation of the specific patterns... TODO
  - Vielleicht "Best Practice" vs. "Anti Pattern"?
  - *Other words that I considered:* best practice, recipe, puzzle piece...

Coach vs. **Mentor**: https://www.uopeople.edu/blog/coach-vs-mentor-whats-the-difference/

**Website** (Webauftritt) vs. **Page** (einzelne Seite)

*🤔 Namen von Formular-Elementen und Komponenten? Anglizismen wie "User" oder "togglen"?*

1. 🙏 **Offer sufficient color contrast**
   - 📚 https://webdesign.tutsplus.com/articles/accessibility-basics-designing-for-visual-impairment--cms-27634
   - 📚 https://webdesign.tutsplus.com/articles/how-to-use-the-contrast-checker-in-chrome-devtools--cms-31504
   - 📚 https://chrome.google.com/webstore/detail/spectrum/ofclemegkcmilinpcimpjkfhjfgmhieb?hl=en
   - 📚 https://addons.mozilla.org/en-US/firefox/addon/dark-background-light-text/
   - 📚 https://michelf.ca/projects/sim-daltonism/
   - 📚 https://developer.mozilla.org/en-US/docs/Web/Accessibility/Understanding_WCAG/Perceivable/Color_contrast
   - 💡 (Why) **Text needs a contrast of `4.5:1` to its background (or `3:1` for large text).** → 🤔 *Aufteilen in "normal" text and "large" text?*
        - 🧩 Texts have a contrast of `4.5:1`
   
             - Das Kontrastverhältnis bei Text und Bildern von Text zum Hintergrund beträgt mindstens 4.5:1 bei normaler Schriftgrösse und mindestens 3:1 bei grosser Schrift (definiert als mindestens 18pt oder 14pt + fett). Das gilt sowohl für normale Schrift zur Hintergrundfarbe (alle Texte und Hinweise) als auch für Texte in informativen grafischen Elementen, ist aber nicht zwingend für Logos oder rein dekorative Grafiken. (54, 1.4.3)
   
             - Interaktive Textelemente (z.B. Schalterbeschriftungen) erfüllen die Kontrastanforderung von 4.5:1 in allen Zuständen (fokussiert, bei Mouseover, etc.) gleichermassen. Für die Unterscheidbarkeit zwischen den Zuständen eines interaktiven Elements gelten keine strikten Kontrastanforderungen. (55, 1.4.3)
   
        - 🧩 Large texts have a contrast of `3:1`
   - 💡 (Why) **Graphical info needs a contrast of `3:1` to its background.**
   
        - 🧩 Parts of diagrams have a contrast of `3:1`
   
             - Das Kontrastverhältnis bei informativen grafischen Elementen (z.B. Linien und Kurven in Diagrammen) zu den umgebenden Farben beträgt mindestens 3:1. Das gilt für alle visuellen Hinweise, die für die Wahrnehmung und Bedienung erforderlich sind (z.B. Schalter zum Anpassen der Kurven). Der Hover-Zustand eines Elements muss nicht unterscheidbar sein vom Standard-Zustand. (60, 1.4.11)
             -  🤔 *If not enough colors → check out "💡 Information conveyed by color should be complemented with shape"* → maybe we should remove the pattern "Essential parts..." completely, as it is much less bullet-proof than "Information conveyed..."?!
   
        - 🧩 Interactive elements and their statuses have a contrast of `3:1` *→  🤔 is there a better word for "status"? I don't mean "focus" or "hover" with that, but its "intrinsic" status (i.e. what value is selected). Maybe remove the part with the status completely?*
             - 📚 https://web.archive.org/web/20220825120522/https://www.annalytic.com/link-accessibility-colors-not-enough.html
             
             - Das Kontrastverhältnis von Bedienelementen (z.B. Textfelder, Radiobuttons, Checkboxen, Schalter, Tabs, etc.) zu den umgebenden Farben beträgt mindestens 3:1. Das gilt für alle visuellen Hinweise, die für die Wahrnehmung und Bedienung erforderlich sind (z.B. Formularfeldbegrenzungen, Ausklappindikatoren bei Flyouts/Dropdowns, Häkchen in einer Checkbox, etc.), insbesondere auch für die Wahrnehmung des Zustands eines Elements. Der Hover-Zustand eines Elements muss nicht unterscheidbar sein vom Standard-Zustand. (59, 1.4.11)
             
             - Wenn Links innerhalb von Fliesstext nur durch Farbe vom Fliesstext unterschieden werden, muss der Kontrast zwischen Link und umgebendem Fliesstext den minimalen Kontrastwert von 3:1 erreichen. Als Alternative kann eine weitere visuelle Auszeichnung von Links verwendet werden (z.B. Unterstreichung, Fettschrift, Rahmen, etc.). (52, 1.4.1)
                  -  🤔 *Unsicher, ob ich das hier überhaupt so nennen soll? Ist weniger "bullet-proof" als es mit zusätzlichem visuellem Attribut auszustatten.*
        
   - 💡 (Why) **Custom color and contrast modes should be supported** → 🤔 *Like Windows HCM and dark mode*
   
        - Informative Grafiken sind bei benutzerdefinierten Farbeinstellungen sichtbar. (9, 1.1.1)
2. 🙏 **Complement meaningful color with visual cues**

    - 📚 https://webdesign.tutsplus.com/articles/accessibility-basics-designing-for-visual-impairment--cms-27634
    - 📚 https://developer.mozilla.org/en-US/docs/Web/Accessibility/Understanding_WCAG/Perceivable/Use_of_color
    - 💡 (Why) **Meaningful object-color should be complemented with label, icon, or pattern**
        - 🧩 Colored lines in a line chart are marked with individual labels → 🤔 *i.e. "Zürich", "New York", etc.*
          - Information wird nicht durch Farbe allein vermittelt. Das gilt auch für Hover- und Fokus-Zustände. Wenn Information farblich übermittelt wird (z.B. rot hervorgehobene Teile eines Texts, um deren Wichtigkeit zu markieren), ist ein weiterer visueller Reiz vorhanden, um diese Information zu vermitteln (z.B. Fettschrift oder Unterstreichung, unterschiedliche Symbole, zusätzlicher Text). (51, 1.4.1)
          - *Unless only a few colors are needed → check out "💡 Graphical info needs a contrast of `3:1` to its background"*
          - *Great icons: https://www.smashingmagazine.com/2016/10/icons-as-part-of-a-great-user-experience/*
        - 🧩 Colored lines in a line chart are marked with individual icons → 🤔 *i.e. repeating "x", "o", etc.*
        - 🧩 Colored lines in a line chart are marked with individual patterns → 🤔 *i.e. dotted, thin, thick, etc.*
    - 💡 (Why) **Meaningful background-color should be complemented with label, icon, or pattern** 
        - https://www.color-blindness.com/coblis-color-blindness-simulator/
        - 🧩 Colored areas in diagrams are marked with individual labels → 🤔 *i.e. "Zürich", "New York", etc.*
        - 🧩 Colored areas in diagrams are marked with individual icons → 🤔 *i.e. a single "x" or "o"*
        - 🧩 Colored areas in diagrams are marked with individual patterns → 🤔 *i.e. horizontal lines, repeating hearts, etc.* → 🤔 *can also be simply repeating a label or icon*
    - 💡 (Why) **Colored status indicators need individual shapes**
        - 🧩 Colored status indicators have individual shapes
          - *Like a green tick that conveys "in stock" vs. a red cross that conveys "out of stock", or an alert with a red or green background color and a smiling or frowning "smiley"*
          - *What about red validation errors? Is the red color an important information? I would say: yes, it makes the message quickly interpretable!*
3. 🙏 **Describe graphics through alternative text**

    - Sollen wir hier auch beschreiben, wie man ein Bild richtig umsetzt? Denn `<svg>`-Elemente benötigen ein `role="image"`!
        - 📚 https://webdesign.tutsplus.com/tutorials/accessible-svg-methods-for-adding-alternative-content--cms-32205
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/Accessibility/HTML#text_alternatives
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Images_in_HTML
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Adding_vector_graphics_to_the_Web
    - 💡 (Why) **Informative graphics need an alternative text**
        - 🧩 A "Coupon 10%" image
            - Informative Grafiken weisen einen Alternativtext auf, der äquivalente Informationen vermittelt. (1, 1.1.1)
        - 🧩 A birthday cake image
        - 🧩 A class photo
        - 🧩 A portrait photo
        - 🧩 (many more)
        - 🧩 An image to test color perception deficiency
            - Tests und Übungen, deren Inhalt zwingend aus Nicht-Text-Inhalt bestehen muss, weisen einen Alternativtext auf, der dessen Zweck beschreibt (aber nicht die Information, die benötigt wird, um den Test oder die Übung zu bestehen). (3, 1.1.1)
        - 🧩 A piece of arts
            - Sensorische Inhalte, die zwingend aus Nicht-Text-Inhalt bestehen, weil sie durch Worte nicht ausreichend ersetzt werden können (z.B. Musikaufführungen, Kunstwerke), weisen einen Alternativtext auf, der den Zweck des Nicht-Text-Inhalts beschreibt. (4, 1.1.1)
        - 🧩 A linked image → 🤔 *there might also be different use cases here... sometimes the content of the image is important, sometimes not...*
            - Verlinkte Grafiken weisen einen Alternativtext auf, der Linkziel oder -zweck beschreibt. (6, 1.1.1)
            - Das Seiten-Logo (mit Link zur Startseite) verfügt über eine sinnvolle Textalternative (Muster alt="Logo Firmenname, zur Startseite") (10, 1.1.1)
        - 🧩 An image button (or icon) with no textual label
            - Grafische Schalter sind korrekt beschriftet. (8, 1.1.1)
            - *Videos zu Dragon Naturally Speaking: https://www.youtube.com/@CoolfieldsUK/videos*
    - **Others**
        - Alternativtexte von Grafiken beinhalten keine redundanten Informationen, z.B. eine bereits in einer Bildlegende oder einem Linktext vorhandene Information oder eine Information wie «Grafik …», «Bild …». (7, 1.1.1) → 🤔 *Can simply be part of the general introduction*
    - 💡 (Why) **Complex informative graphics need a longer description** → 🤔 *Wichtig darauf hinzuweisen, dass es oft abhängig ist vom Autor, wieviel Erklärung eine komplexe Grafik haben soll! Quintessenz vs. bis ins letzte Detail?! Am besten Download-Link anbieten zu Original-Daten. → Concept "Alternative methods"*
        - 🧩 A (simple) cake chart
            - Wenn Alternativtext nicht ausreicht (z.B. bei komplexen Grafiken wie Infografiken oder Diagrammen), wird eine lange Beschreibung bereitgestellt und im Alternativtext darauf hingewiesen. (12, 1.1.1)
        - 🧩 A (simple) line chart
    - 💡 (Why) **Decorative graphics should be ignored by screen readers** → 🤔 *Prinzipielle Frage: Was ist dekorativ? Ist z.B. ein Stimmungsbild rein dekorativ?*
        - 🧩 An atmospheric picture
            - Dekorative Grafiken weisen ein leeres alt-Attribut auf. (13, 1.1.1)
        - 🧩 An icon with a textual label
    - **Others**
        - Als Webfont eingebundene Symbole sind so umgesetzt, dass sie nicht zu unverständlichen Ausgaben durch Screenreader führen. (5, 1.1.1)
        - Sonderzeichen vermitteln Informationen auf zugängliche Weise. (11, 1.1.1)
        - Grafische CAPTCHAs sind barrierefrei umgesetzt oder es gibt eine Alternative. (14, 1.1.1)
4. 🙏 **Provide audio transcripts and video subtitles**

     - 📚 https://www.w3.org/WAI/perspective-videos: diverse Videos mit Untertiteln, Audiodeskription, und "Text Transcript with Description of Visuals" (z.B. https://www.w3.org/WAI/perspective-videos/keyboard/#transcript), plus natürlich spezifisch https://www.w3.org/WAI/perspective-videos/captions/
     - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Video_and_audio_content
     - 💡 (Why) **Pure audio content should have a text transcript**
       - Video- und Audio-Inhalte weisen einen Alternativtext auf, der den Titel und/oder eine kurze Umschreibung vermittelt. (2, 1.1.1)
       - Für aufgezeichnete reine Audio-Inhalte (z.B. Podcasts) existieren Textabschriften oder eine Audiodeskription. Ausnahme: Wenn der reine Audio-Inhalt eine Alternative für bereits bestehenden Text (und als solche deutlich gekennzeichnet) ist, dann ist keine zusätzliche Textabschrift erforderlich. (15, 1.2.1)
     - 💡 (Why) **Pure video content should have a text transcript**
       - Für aufgezeichnete reine Video-Inhalte (z.B. Stummfilme) existieren Textabschriften oder gleichwertige Alternativen als Audio-Inhalt. Ausnahme: Wenn der reine Video-Inhalt eine Alternative für bereits bestehenden Text (und als solche deutlich gekennzeichnet) ist, dann ist keine zusätzliche Textabschrift oder gleichwertige Alternative als Audio-Inhalt erforderlich. (16, 1.2.1)
     - 💡 (Why) **Video with audio should have closed captioning**
       - Für aufgezeichnete Video-Inhalte mit Audio (z.B. Spielfilme) existieren gleichwertige, synchrone Untertitel. (17, 1.2.2)
       - Für synchronisierte Video-Inhalte (Videos, in denen Audio- und Videospur zusammen die komplette Information ergeben) existieren Textabschriften oder Audiodeskriptionen. Für die Audiodeskription gilt: Wenn alle Informationen der Videospur bereits in der Audiospur enthalten sind, ist keine Audiodeskription erforderlich. Ausnahme: Wenn der synchronisierte Video-Inhalt eine Medienalternative für bereits bestehenden Text (und als solche deutlich gekennzeichnet) ist, dann ist keine zusätzliche Textalternative oder Audiodeskription erforderlich. (Dieser Checkpunkt kann vernachlässigt werden, falls Level AA angestrebt wird und damit 1.2.5 in Kraft tritt. Um Konformitätsstufe A zu erreichen, benötigen synchronisierte Video-Inhalte entweder eine Textabschrift oder eine Audiodeskription. Für Konformitätsstufe AA ist immer eine Audiodeskription erforderlich.) (18, 1.2.3)
         - 🤔 *Gute Wortwahl: "text in multimedia not covered by narration"*
         - *See https://www.3playmedia.com/learn/popular-topics/closed-captioning/* | http://mindfulresearch.co.uk/2011/08/29/autistic-spectrum-captions-and-audio-description/
     - **Others**
       - Für Live Video-Inhalte mit Audio (z.B. Nachrichtensendung) existieren gleichwertige, synchrone Untertitel. (19, 1.2.4)
       - Für synchronisierte Video-Inhalte (Videos, in denen Audio- und Videospur zusammen die komplette Information ergeben) existieren Audiodeskriptionen für inhaltlich relevante, rein visuelle Inhalte. Für die Audiodeskription gilt: Wenn alle Informationen der Videospur bereits in der Audiospur enthalten sind, ist keine Audiodeskription erforderlich. (Dieser Checkpunkt kann vernachlässigt werden, falls Konformitätsstufe A angestrebt wird und damit 1.2.3 in Kraft ist. Um Konformitätsstufe A zu erreichen, benötigen synchronisierte Video-Inhalte entweder eine Textabschrift oder eine Audiodeskription. Für Konformitätsstufe AA ist immer eine Audiodeskription erforderlich.) (20, 1.2.5)
       - Es gibt keine Elemente, die öfter als dreimal in einer Sekunde blitzen, oder der Blitz ist unterhalb eines definierten Grenzwerts für Blitze. (70, 2.3.1)
5. 🙏 **Ensure keyboard-only operability**

    - 📚 https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/Accessibility#using_native_keyboard_accessibility
    - 📚 https://developer.mozilla.org/en-US/docs/Web/Accessibility/Understanding_WCAG/Keyboard
    - 📚 https://developer.mozilla.org/en-US/docs/Web/Accessibility/Understanding_WCAG/Operable
    - 📚 https://axesslab.com/hand-tremors/
    - 💡 (Why) **Interactive elements must be focusable**
      - 📚 https://webaim.org/techniques/keyboard/#navigation: hat eindeutigen Hinweis auf <mark>`<a>` (without an `href` attribute) or `<a href="">` (no `href` attribute value) should not be used for links.</mark>
      - 📚 https://a11y-dev.guide/knowledge/keyboard-only/how-to-implement/#focusability
      - 📚 https://html.spec.whatwg.org/multipage/interaction.html#focusable
      - 📚 https://html.spec.whatwg.org/multipage/dom.html#interactive-content
      - 🧩 A link implemented as `<a href>` (Anti: `<div/span tabindex="0">`, `<a>` ohne `href`)
        - Inhalte/Funktionalitäten (Seitenfunktionalitäten, Seitenelemente, Formularfelder, Kontrollelemente, Schalter, Links, Dialoge, Multimedia-Steuerungen, etc.) sind mit der Tastatur alleine (d.h. ohne Zeigegerät) bedienbar. Elemente sind in der logischen Tab-Reihenfolge erreichbar und können erwartungsgemäss bedient werden. (63, 2.1.1) ⁉️ Letzter Punkt wird ansich schon durch 2.4.3 abgedeckt?
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Creating_hyperlinks
      - 🧩 A button implemented as `<button>` or `<input type="submit">` (Anti: `<div/span> tabindex="0"` → mal ganz abgesehen davon, dass dadurch das autom. Abschicken eines Formulars nicht möglich ist)
        - Formular-Schalter sind korrekt umgesetzt (als `<button>`-Element oder `<input type="submit">`-Element). (4.1.2)
        - Zeigergesten erfordern keinen bestimmten Pfad oder Mehrfach-Touch oder es bestehen konventionelle Alternativen dazu. (83, 2.5.1)
        - Zeigereingaben sind abbrechbar oder können rückgängig gemacht werden. (84, 2.5.2)
    - 💡 (Why) **Interactive elements must be operable via keyboard alone** → 🤔 *Wird schnell sehr komplex, das Thema, darum Verweis auf Virtue "Accessible Components"*
      - 🧩 Interactivity implemented with keyboard-compatible events
        - Attribute stets verlinken mit MDN! https://developer.mozilla.org/en-US/docs/Web/API/Element/click_event
        - 📚 https://webaim.org/techniques/keyboard/#navigation: hat eindeutigen Hinweis auf <mark>JavaScript event handlers work with a keyboard and a mouse.</mark>
        - 📚 https://a11y-dev.guide/knowledge/keyboard-only/how-to-implement/#keyboard-operability
        - 📚 https://webdesign.tutsplus.com/articles/keyboard-accessibility-tips-using-html-and-css--cms-31966 → Hinweis, dass `Enter` auf `<button>` einen `click` auslöst, auf `<span role="button" tabindex="0">` hingegen nur ein `keydown`!
        - Durch Gerätebewegung ausgeführte Funktionalität kann auch durch konventionelle Eingabemethoden angesteuert und deaktiviert werden. (86, 2.5.4) → 🤔 *Grundsatz: alles, was nicht Keyboard-kompatibel ist (z.B. auch Drag&Drop), benötigt eine entsprechende alternative Funktionalität!* → ggf. braucht es dazu einen eigenen Insight?
          - Anti: https://shop.nuance.com/store/nuanceus/en_US/Content/pbPage.home?pgmid=4990661100&PID=100227173&CID=7010W000002GDURQA4&utm_source=commissionjunction&utm_medium=affiliate&utm_campaign=DHK-AO-2020-DragonPC_Ecom_Affiliate_CommisionJunction&cj_affiliate=5405963&adid=10793172&cjevent=7d2d72197a0511ed805b01290a18ba73 (kleines Fenster links oben)
          - 🚀 WCAG 2.2, 2.5.7: Dragging Movements (Level AA)
      - 🧩 Interactivity available through tab stops → 🤔 *simples Dropdown-Menü (strikt gesehen wäre das aber ein Pattern für "Interactive elements should be focusable")*
        - 📚 https://webaim.org/techniques/keyboard/#navigation: hat eindeutigen Hinweis auf <mark>The interaction uses standardized keystrokes.</mark>
      - 🧩 Interactivity available through arrow keys → 🤔 *ebenfalls simples Dropdown-Menü*
    - 💡 (Why) **Focused interactive elements must clearly stand out** → 🤔 *different focus states for keyboard and mouse? (Luis Argüello hatte da eine kleine Library)* → vielleicht später verschieben in Tugend "Contrast"? Würde diese hier etwas verkleinern (ist die mit Abstand umfangreichste Tugend).
      - 🧩 Focus states with solid aesthetic attributes (`outline`, `border`, `text-decoration`, `font-weight`, etc.) → 🤔 *Hinweis auch auf HCM und Dark Mode!* 🤔 Ggf. leichte Animationen benutzen, um Sichtbarkeit zu erhöhen (z.B. ein Häkchen in einer Checkbox "poppt auf", statt einfach nur zu erscheinen in einer Millisekunde)?
        - 📚 https://webaim.org/techniques/keyboard/#focus: kurze generelle Einführung, inkl.
          - <mark>Avoid `outline: 0` or `outline: none` or other styles that remove or limit visibility of keyboard focus indicators.</mark>
        - 📚 https://css-tricks.com/almanac/selectors/f/focus-visible/ vs. :focus vs. :focus-within!
        - 📚 https://github.com/ten1seven/what-input (vs. `:focus-visible`)
        - 📚 https://github.com/NV/flying-focus/ → seit 2014 nicht mehr geupdated, aber klappt auf den ersten Blick ganz ordentlich
        - 📚 https://developer.mozilla.org/en-US/docs/Web/CSS/:focus
        - Der Tastaturfokus ist genügend sichtbar, z.B. durch einen gut sichtbaren Rahmen (für alle fokussierbaren Elemente wie Links, Schaltflächen, Radio-Buttons, Checkboxen, Ausklapplisten, verlinkte grafische Elemente, etc.). (81, 2.4.7)
        - 🚀 WCAG 2.2, 2.4.11: Focus Appearance
      - 🧩 Skip links appear on focus → 🤔 *Verweis auf  Concept "Hiding elements properly"*
        - 📚 http://webaim.org/techniques/skipnav/
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/Accessibility/HTML#skip_links
        - Sprunglinks werden bei Tastaturbedienung sichtbar. (82, 2.4.7)
        - 🚀 WCAG 2.2, 2.4.12: Focus Not Obscured (Minimum)
    - *We don't need an insight like "States of interactive elements should be distinct", because we already have such a rule in "Contrasts"!*
    - 💡 (Why) **The sequence of interactive elements must be meaningful**
      - 🧩 Interactive elements are aligned in a meaningful sequence → 🤔 *Verweis auf Concept "Meaningful sequence"*
        - 📚 https://webaim.org/techniques/keyboard/#navigation: kurze generelle Einführung, inkl.
          - <mark>Structure your underlying source code so that the reading/navigation order is correct.</mark>
          - <mark>Then, if necessary, use CSS to control the visual presentation of the elements on your page.</mark>
          - <mark>Do not use `tabindex` values of 1 or greater to change the default keyboard navigation order.</mark>
            - Auch interessant: https://adrianroselli.com/2014/11/dont-use-tabindex-greater-than-0.html und https://www.tpgi.com/using-the-tabindex-attribute/
            - Attribute stets verlinken mit MDN! https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/tabindex
        - 📚 https://www.w3.org/WAI/WCAG21/Understanding/focus-order.html
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Normal_Flow
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Grids
        - Die Fokus-Reihenfolge ist sinnvoll, d.h. intuitiv verständlich und nachvollziehbar. (2.4.3) → 🤔 *vgl. Virtue "Optimise for screen reader" (alternative to live regions)*
    - 💡 (Why) **Focus must be managed in a meaningful way**
      - 📚 https://a11y-dev.guide/knowledge/keyboard-only/how-to-implement/#focus-management
      - 🧩 Focus is managed in a meaningful way → 🤔 *Verweis auf Dialog Component* → Focus Management ist auch wichtig für Leute, die Zoomen (und z.B. Fehlermeldungen bei Formular-Eingabe sonst übersehen)! → Verweis auf Forms & Validations (Fokus ins erste fehlerhafte Feld bzw. auf erste Fehlermeldung in Liste "3 Fehler gefunden")
        - Der Tastatur-Fokus wird sinnvoll geführt, wenn jemand mit Elementen auf der Seite interagiert, die zu einer Veränderung innerhalb der Seite führen (ohne Page-Refresh), z.B. nach dem Klick auf einen Schalter, der einen Dialog anzeigt (Erreichen des Dialogs und Interagieren im Dialog, Verlassen desselben, Fokus zurück auf das dialog-auslösende Element, Weiternavigieren auf der Seite). (74, 2.4.3)
    - 💡 (Why) **Excessive tab stops must be avoidable**
      - 🧩 A skip link allows to jump directly to the content
        - 📚 https://webaim.org/techniques/keyboard/#navigation: hat eindeutigen Hinweis auf <mark>Provide a ["skip to main content"](https://webaim.org/techniques/skipnav/) link on the page.</mark>
        - Sprunglinks ermöglichen das einfache Überspringen von sich wiederholenden Informationsblöcken (z.B. Navigation, Headerbereich) mit der Tastatur. (71, 2.4.1)
      - 🧩 Submenu entries that can be skipped
        - Unternavigationspunkte können mit der Tastatur übersprungen werden. Unternavigationen werden entweder erst auf Auslösen geöffnet (z.B. mittels Enter- oder Pfeil-nach unten-Taste) oder Unternavigationen werden zwar angezeigt, mit der Tabulator-Taste wird aber zum nächsten Hauptnavigationspunkt gesprungen (Hineinnavigieren in die Unternavigation nur mit Pfeil-Tasten). (75, 2.4.3)
    - 💡 (Why) **Movement of the focus must not be overly restricted (trapped)**
      - 🧩 A dialog that restricts focus to itself but doesn't prevent moving the focus outside the document → 🤔 *A bit clunky*
        - Es treten keine Tastaturfallen auf. Alle Bedienelemente können mit der Tastatur erreicht und wieder verlassen werden. Die uneingeschränkte Navigation rückwärts mit Shift+Tab ist sichergestellt. (66, 2.1.2)
    - 💡 (Why) **Single letter keyboard shortcuts must be avoidable**
      - 🧩 Single letter keyboard shortcut that can be disabled
        - Einzeltasten-Kurzbefehle (bestehend aus einer einzelnen Buchstaben-, Interpunktions-, Zahlen- oder Symbolzeichentaste) sind entweder deaktivierbar oder veränderbar oder nur bei Fokus aktiv. (67, 2.1.4)
    - **Others**
    
      - Elemente, die einzeln ausgegeben werden sollen, sind als display: block ausgezeichnet, sonst können sie im Browse-Mode (normale Inhaltsnavigation mittels Pfeil-Tasten) nicht einzeln angesteuert werden. Dies gilt hauptsächlich für interaktive Elemente (Links, Buttons, etc.). (64, 2.1.1)
      - Elemente, die von Screenreadern zusammen ausgegeben werden sollen (etwa eine Überschrift, die sowohl eine Kategorie als auch ein Datum enthält), sind als display: inline bzw. display: inline-block ausgezeichnet und befinden sich zusammen in einem display: block-Container. (65, 2.1.1)
      - Umkehrschluss: Non-interactive Elements must not be focusable!
6. 🙏 **Apply semantics to structure content (HTML 101)** → Concept "Semantics" → Natürlich stützen sich einige vorangehende Tugenden auch auf Semantik, deshalb klar gegenseitig referenzieren!

    - Gibt's super viel auf MDN, z.B.:
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/Accessibility#semantic_structure
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/HTML_basics#so_what_is_html
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Getting_started
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/Accessibility/HTML
        - Etc...
    - 💡 (Why) **Paragraphs should be marked up as `<p>`**
        - 🧩 Paragraphs (`<p>`)
            - Zeichenverwendung: Absätze sind semantisch korrekt ausgezeichnet, nicht nur visuell (z.B. mittels doppelten `<br>`). (42, 1.3.1e)
            - Zeichenverwendung: Leere bedeutungstragende Elemente werden vermieden. (44, 1.3.1e) → Concept "Semantics"
    - 💡 (Why) **Lists should be marked up as `<ul>`, `<ol>`, or `<dl>`**
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#description_lists
        - 🧩 Unordered lists (`<ul>`)
            - Listen: Aufzählungen sind semantisch korrekt als Listen (`<ul>`, `<ol>`, `<dl>`) formatiert. (32, 1.3.1b)
        - 🧩 Ordered lists (`<ol>`)
            - Listen: Listen mit nur einem Eintrag werden vermieden (ausser sie werden automatisch generiert). (33, 1.3.1c)
        - 🧩 Glossaries (`<dl>`)
            - Listen: Glossare und ähnliche Informationslisten sind als Definitionslisten formatiert. (34, 1.3.1c)
    - 💡 (Why) **Quotes should be marked up as `<cite>` or `<blockquote>`**
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#quotations
        - 🧩 Inline quote (`<cite>`)
            - Zeichenverwendung: Visuell erkennbare Zitate sind semantisch korrekt ausgezeichnet (z.B. als `<blockquote>` und `<cite>`), sodass der jeweilige Text auch beim Einsatz von assistierenden Technologien als Zitat erkannt wird. (46, 1.3.1e)
        - 🧩 Block quote (`<blockquote>`)
    - 💡 (Why) **Abbreviations should be marked up as `<abbr>`**
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#abbreviations
    - 💡 (Why) **Code should be marked up as `<code>`, etc.**
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#representing_computer_code
    - 💡 (Why) **Time and date should be marked up as `<time>`**
        - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting#marking_up_times_and_dates
    - 💡 (Why) **Breadcrumbs should be marked up correctly** → 🤔 *Vielleicht besser in Virtue "Accessible components" verschieben?*
        - 🧩 Breadcrumbs marked up as list → 🤔 *Can be labelled using `aria-label` or a visually hidden heading*
            - Breadcrumbs oder Prozessanzeigen sind auch nicht-visuell als solche erkennbar. (23, 1.3.1)
    - 💡 (Why) **Footnotes should be marked up correctly**
        - 🧩 Footnotes marked up using links (and backlinks)
            - Fussnoten sind barrierefrei umgesetzt: Auch mit einem Screenreader ist beim Fussnoten-Zeichen der Zugriff auf den Fussnotentext gegeben, ohne dass der ursprüngliche Kontext verloren geht. (24, 1.3.1)
    - **Others**
        - Zeichenverwendung: Inhalte befinden sich innerhalb semantisch bedeutsamer HTML-Elemente (z.B. `<h#>`, `<p>`, `<ul>`, `<ol>`, etc.); das Verwenden von `<div>`- oder `<span>`-Elementen (die keine semantische Relevanz aufweisen) ist nicht ausreichend. (43, 1.3.1e)
        - Zeichenverwendung: Schriftformatierungen mit Informationsgehalt (z.B. durchgestrichen) sind auch nicht-visuell zugänglich. (45, 1.3.1e)
7. 🙏 **Define a coherent page structure and headings ** → Concept "Semantics"

    - 📚 https://webaim.org/techniques/semanticstructure/#regions
    - 📚 https://webaim.org/techniques/semanticstructure/#headings
    - 📚 https://webdesign.tutsplus.com/courses/semantic-html-how-to-structure-web-pages
    - 📚 https://webdesign.tutsplus.com/articles/the-importance-of-heading-levels-for-assistive-technology--cms-31753
      - 📚 https://webaim.org/projects/screenreadersurvey7/#problematic
    - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Document_and_website_structure
    - 💡 (Why) **Landmarks should encompass page areas**
      - 🧩 A typical website's higher level landmarks
        - Landmark Roles (HTML5-Elemente wie `<header>`, `<main>`, etc. sowie ARIA-Rollen) werden korrekt vergeben. Sie werden mit Bedacht verwendet und konsistent eingesetzt (möglichst keine Mehrfach-Verwendung derselben Rolle, konsistentes Auszeichnen aller wichtigen Seitenbereiche). (22, 1.3.1)
      - 🧩 Lower level landmarks
    - 💡 (Why) **The page's `<main>` landmark should be structured meaningfully by headings**
      - 🧩 Main content is structured by headings (like a book)
        - Überschriften: Eigenständige Seitenbereiche weisen eine eigene Überschrift auf, da sie sonst der vorausgehenden Überschrift falsch untergeordnet werden. Für Inhalts- und Funktionsblöcke wie Kopf- und Fussbereich, Navigation, Breadcrumb, etc. können visuell unsichtbare Überschriften eingesetzt werden. (27, 1.3.1a)
        - Überschriften: Die Hierarchie der Überschriften-Ebenen ist inhaltlich-logisch korrekt und vermittelt die Struktur der Inhalte. (25, 1.3.1a)
        - Überschriften und Labels (z.B. in Eingabefeldern, bei Schaltern, etc.) sind ausreichend informativ und korrekt und bezeichnen den zugeordneten Web-Inhalt verständlich. Es gibt keine gleichlautenden Überschriften oder Labels auf einer Seite. (80, 2.4.6) (❗️Auch bei "Forms")
    - 💡 (Why) **Landmarks with no visible heading should offer visually hidden headings** → Concept "Hiding elements properly"
      - 📚 https://webaim.org/techniques/css/invisiblecontent/
      - 🧩 Landmarks inside `<main>` with no visible heading are introduced by invisible headings
        - Überschriften: Es werden keine Überschriften-Ebenen ausgelassen. (26, 1.3.1a)
      - 🧩 Landmarks outside `<main>` with no visible heading are introduced by invisible headings
    - 💡 (Why) **Headings should preside their content** → Concept "Meaningful sequence"
      - 🧩 Heading with subsequent content
        - Inhalte müssen im Code (DOM) eine korrekte Reihenfolge aufweisen (unabhängig von CSS) (47, 1.3.2)
    - **Others**
      - Überschriften: Überschriften sind im Code vor den ihnen zugehörigen Inhalten platziert. (29, 1.3.1a) → Concept "Meaningful sequence"
      - Überschriften: Überschriften sind semantisch korrekt mit dem Überschriften-Element (`<h1>` bis `<h6>`) ausgezeichnet. (31, 1.3.1a) → Concept "Semantics"
      - Überschriften: Überschriften für Akkordeons sind als solche ausgezeichnet. (30, 1.3.1a)
      - Überschriften: Überschriften weisen nachfolgenden Inhalt (bzw. darunter liegende Überschriften) auf. (28, 1.3.1a)
8. 🙏 **Mark up tabular data as tables**

    - 📚 https://developer.mozilla.org/en-US/docs/Learn/HTML/Tables
    - 💡 (Why) **Tabular data should be marked up as `<table>`** → 🤔 *Keine Grids o.ä.! Tabellen sind Tabellen! Punkt. Mann...*
      - 🧩 A simple table
        - Tabellen: Daten, welche eindeutig tabellarischen Charakter aufweisen, sind semantisch korrekt als Tabelle formatiert und enthalten nur die semantisch zugelassenen Attribute, z.B. keine Paragraphen- (`<p>`) oder Überschriften-Elemente (`<h1>` bis `<h6>`). (40, 1.3.1d) → 🤔 *Welche Elemente sind denn da eigentlich zugelassen?!*
        - Tabellen: Daten-Tabellen weisen keine leeren Spalten oder Zeilen auf. (41, 1.3.1d)
        - → 🤔 *Sind Überschriften o.ä. in Tabellen erlaubt?! Darauf hinweisen, dass das zumindest fragwürdig ist, am besten aber klare Referenzen angeben!*
    - 💡 (Why) **Tables should have `<th>` elements for columns and rows**
      - 🧩 Tables with column and/or row headers
        - Tabellen: Daten-Tabellen weisen Spalten- oder Zeilentitel (`<th>`) auf, idealerweise beides. (39, 1.3.1d)
    - 💡 (Why) **Tables should be careful with `[rowspan]` and `[colspan]`**
      - 🧩 Tables with colspan and rowspan
    - 💡 (Why) **Tables should have a `<caption>`**
      - 🧩 Tables with captions
        - Tabellen: Daten-Tabellen weisen Tabellenüberschriften (`<caption>`) auf. (38, 1.3.1d)
    - 💡 (Why) **Tables should be responsive** → 🤔 *Problem des horizontalen Scrollens möglichst umgehen (für Keyboard-only User generell schwierig, wenn nichts fokussierbar)*
      - 🧩 Responsive tables → 🤔 *Gibt's verschiedene Möglichkeiten, u.a. jene im ADG, aber ggf. auch Luis' Variante!*
9. 🙏 **Build robust forms and validations**

    - 📚 https://developer.mozilla.org/en-US/docs/Learn/Forms → ganz viel Inhalt!
    - 📚 https://developer.mozilla.org/en-US/docs/Web/Accessibility/Understanding_WCAG/Text_labels_and_names
    - 💡 (Why) **Form inputs should have a `<label>`**
      - 🧩 Form inputs with labels (incl. Floating-Label Pattern)
        - Formulare: Formularfelder weisen korrekt verknüpfte Labels auf. (37, 1.3.1c)
        - Überschriften und Labels (z.B. in Eingabefeldern, bei Schaltern, etc.) sind ausreichend informativ und korrekt und bezeichnen den zugeordneten Web-Inhalt verständlich. Es gibt keine gleichlautenden Überschriften oder Labels auf einer Seite. (80, 2.4.6) (❗️Auch bei "Headings")
        - Formularfelder verfügen über visuell sichtbare Labels. Die alleinige Verwendung von placeholder-Attributen zur Beschriftung von Formularfeldern wird vermieden. (95, 3.3.2)
    - 💡 (Why) **Form inputs should be implemented using standard controls**
      - 🧩 Standard form inputs (in different "clothes") → 🤔 *z.B. Checkbox mit custom Styling (Win HCM nicht vergessen!)*
        - 📚 https://webdesign.tutsplus.com/tutorials/how-to-make-custom-accessible-checkboxes-and-radio-buttons--cms-32074 → hat auch interessanten Win HCM Trick mit `outline: 3px solid transparent`
    - 💡 (Why) **Groups of inputs should be grouped using `<fieldset>` and `<legend>`** → 🤔 *Complex forms should be split into separate pages!*
      - 🧩 Groups of form inputs
        - Formulare: In umfangreichen Formularen werden inhaltlich zusammengehörige Formularfelder mittels `<fieldset>`/`<legend>`-Kombination gruppiert. (35, 1.3.1c)
      - 🧩 Group of radio buttons
      - 🧩 Group of checkboxes
    - 💡 (Why) **Non-interactive elements between form controls should be associated with `[aria-describedby]`**
      - 🧩 Additional info associated to a form control
        - Formulare: Informationen, die sich zwischen den Eingabefeldern befinden (z.B. als `<p>` zwischen mehreren Eingabefeldern) sind verknüpft mit den relevanten Formularfeldern, sodass sie auch mit Screenreadern wahrgenommen werden können (z.B. mit aria-describedby). (36, 1.3.1c)
        - Formatangaben bei Formularfeldern sind zugänglich und mit den zugehörigen Eingabefeldern eindeutig verknüpft, d.h. zusätzlich angegebene Hinweise zu Eingabeformaten sind auch durch assistierende Technologien korrekt erfassbar. (96, 3.3.2)
    - 💡 (Why) **Required inputs should be marked up with `[required]`**
      - 🧩 Required form input
        - Pflichtfelder sind zugänglich ausgezeichnet, sowohl auf visueller wie nicht-visueller Ebene, z.B. mit required-Attribut. (94, 3.3.2)
      - 🧩 Group of required inputs → 🤔 *i.e. radio buttons → how is this done best??*
    - 💡 (Why) **Browser-Validations should be used considerately** → 🤔 *Hier geht es um "dynamische" Validations, im Gegensatz zu statischen (sich nicht verändernden) Validations wie etwa `required`. Relevant ist dabei insbesondere die Frage: zu welchem Event-Zeitpunkt werden die Zustände verändert, z.B. wann wird `invalid` gesetzt, beim Verlassen eines Feldes, oder schon bei der Eingabe?!*
      - 🧩 HTML5 Browser validations
    - 💡 (Why) **Validation messages should be meaningful and associated to the input**
      - 🧩 Validation associated to the input
        - Fehlermeldungen in Formularen sind barrierefrei umgesetzt: Automatisch erkannte Eingabefehler geben in der Fehlermeldung einen klaren Hinweis (in Textform) auf das fehlerhafte Element und sind mit diesem eindeutig verknüpft. (93, 3.3.1)
        - Fehlermeldungen sind informativ und mit den zugehörigen Eingabefeldern eindeutig verknüpft: Es sind Korrekturempfehlungen vorhanden, wenn falsche Benutzereingaben erfolgen. (97, 3.3.3)
    
    - **Others**
      - Die zugängliche Beschriftung eines Bedienelements entspricht exakt der visuellen oder beinhaltet sie (ermöglicht v.a. Sprachsteuerung). (85, 2.5.3)
      - Der Kontext ändert sich nicht automatisch bei Fokus (z.B. Weiterleitung auf eine andere Seite). (89, 3.2.1)
      - Der Kontext ändert sich nicht automatisch bei Eingabe (z.B. Weiterleitung auf eine andere Seite). (90, 3.2.2)
      - Nutzereingaben müssen überprüfbar sein vor Prozess-Abschluss mit finanziellen/rechtlichen Folgen. Es ist sichergestellt, dass die Gelegenheit besteht, eingegebenen Daten zu überprüfen und gegebenenfalls zu korrigieren, bevor ein endgültiger Abschluss erfolgt. (98, 3.3.4)
      - Eingabefelder zu Nutzerdaten können automatisch ausgefüllt werden. (50, 1.3.5)
      - *🤔 Was ist mit 4.1.3 Status Messages?*
      - 🚀 WCAG 2.2, 3.3.9: Redundant Entry → keine doppelte Eingabe von Information notwendig (z.B. Checkout)
10. 🙏 **Optimise screen reader compatibility**

    - 💡 (Why) **Every page needs a unique, self-speaking title**
      - 🧩 Home page
        - Seiten haben einen eindeutigen, aussagekräftigen Titel, der Thema oder Zweck der Seite sowie den Betreiber enthält (Muster: "Thema/Zweck der Seite - Seitenbetreiberin") (72, 2.4.2)
      - 🧩 Other page
      - 🧩 Search results page
      - 🧩 Validation error page
    - 💡 (Why) **Language declarations should be correct**
      - 📚 https://webdesign.tutsplus.com/tutorials/use-the-lang-attribute-for-better-accessibility--cms-31961
      - 🧩 Page with proper language declaration
        - Die Sprachdeklaration ist vorhanden und korrekt. (87, 3.1.1)
      - 🧩 Text passage in other language with proper declaration
      - Sprachwechsel bei längeren Textpassagen werden angegeben: Anderssprachige Textabschnitte sind mit dem lang-Attribut ausgezeichnet. Bei kurzen anderssprachigen Textpassagen (einzelne Wörter) wird auf den Sprachwechsel verzichtet. (88, 3.1.2)
    - 💡 (Why) **Active elements should be declared as `[aria-current]`**
      - 🧩 Item in navigation declared as current → 🤔 *Was kann aria-current sonst noch alles?? Weitere Beispiele! Z.B. Breadcrumbs!*
        - Aktive Elemente (z.B. der aktive Menüpunkt in einer Navigation) sind semantisch erkennbar ausgezeichnet, wenn sie visuell klar als aktiv erkennbar sind. (21, 1.3.1)
    - 💡 (Why) **Expandable elements should be declared as `[aria-expanded]`**
      - 🧩 Navigation items with subitems declared as expandable
      - 🧩 "Dialog öffnen" Button → 🤔 *kann sinnvoll sein, aber nicht unbedingt notwendig, da der Button ansich schon Hinweis darauf gibt, dass kein Page-Refresh passieren wird, sondern sich etwas "in-Page" verändert.*
    - 💡 (Why) **Link texts should be self-speaking and unique**
      - 🧩 "Read more" links
        - Link-Texte sind selbstsprechend, d.h. aus sich selbst heraus oder über den Kontext (gleiches `<p>`-Element, gleiches Listenelement, gleiche Tabellenzelle, Spalten- oder Zeilenüberschrift in Tabelle) verständlich. (77, 2.4.4)
      - 🧩 A single link encompassing different elements → 🤔 *vgl. Cards?!*
        - Mehrfache, unterschiedliche Links (z.B. eine Überschrift, eine Grafik und ein zusätzlicher Textlink) auf dasselbe Ziel werden vermieden. (78, 2.4.4)
    - 💡 (Why) **Notifications should be accessible**
      - 🧩 Notification after page reload using prefix in the `<title>`
      - 🧩 Notification after page reload by setting focus → *vgl. Forms & Validation / Keyboard-only*
      - 🧩 Asynchronous notification as `live` region → 🤔 *Careful with auto-rotating sliders or newstickers!* → 🤔 *Or move the focus to a notification? (vgl. Virtue "Keyboard only")*
        - Statusmeldungen sind für assistierende Technologien zugänglich und überstrapazieren den Audiokanal nicht. (111, 4.1.3)
        - https://www.youtube.com/watch?v=5lzAj1ahRSI | https://web.dev/hiding-and-updating-content/#aria-live
11. 🙏 **Choose accessible web components**
     - 💡 (Why) **Accordions should behave accessibly**
       - Akkordeons sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt, ihr Status wird vermittelt (z.B. «reduziert» bzw. «erweitert»).  (100, 4.1.2)
     - 💡 (Why) **Autocompletes should behave accessibly**
       - Autocompletes sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt, die Anzahl aktuell verfügbarer Vorschläge, der aktuelle Eintrag beim Navigieren der Optionen sowie die schlussendlich gewählte Option werden durch Screenreader vermittelt. (101, 4.1.2)
     - 💡 (Why) **Date pickers should behave accessibly**
       - Datumswähler sind barrierefrei umgesetzt, sofern keine Alternative dazu besteht (z.B. manuelle Datumseingabe in Formularfeld). Sie werden durch Screenreader korrekt angesagt, der aktuelle Eintrag beim Navigieren der Optionen sowie die schlussendlich gewählte Option werden durch Screenreader vermittelt. (102, 4.1.2)
     - 💡 (Why) **Dialogs should behave accessibly**
       - Dialoge (auch Modale, Overlays, Lightboxes, etc. genannt) sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt; das Element, das den Dialog öffnet, weist auf den Dialog hin. (103, 4.1.2)
     - 💡 (Why) **Dropdowns should behave accessibly**
       - Dropdowns (auch Mega-Dropdowns) sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt, ihr Status wird vermittelt (z.B. «erweitert» bzw. «reduziert»), der aktuelle Eintrag beim Navigieren der Optionen wird durch Screenreader vermittelt. (104, 4.1.2)
         - https://aeldata.com/keyboard-navigation-accessibility-tips/ → ansich gutes Beispiel eines double purpose dropdowns ([ADG](https://www.accessibility-developer-guide.com/examples/widgets/dropdown/_examples/double-purpose-dropdown/)) → allerdings ist bei Hover nicht ganz klar, dass sich da drunter auch noch ein Link befindet!
     - 💡 (Why) **Carousels should behave accessibly**
       - Karusselle (Slider) sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt. (105, 4.1.2)
       - 📚 https://www.smashingmagazine.com/2017/07/designing-perfect-slider/
     - 💡 (Why) **Tabs should behave accessibly**
       - Tabs (Registerkarten) sind barrierefrei umgesetzt. Sie werden durch Screenreader korrekt angesagt, ihr Status wird vermittelt (z.B. «aktiv» bzw. «nicht aktiv»). (106, 4.1.2)
     - 💡 (Why) **Tooltips should behave accessibly**
       - Tooltips sind barrierefrei umgesetzt. Einfache, kurze Inhalte werden durch Screenreader sogleich angesagt. Beinhalten Tooltips komplexe Inhalte, so müssen diese manuell gelesen werden können (in diesem Fall handelt es sich eher um einen Dialog). (107, 4.1.2)
     - **Others**
       - Should "non-interactive" elements like cards and breadcrumbs also be here (non-interactive in the way that they can be activated, but not "changed" in some way, at least not without page reload)?
       - Weitere JavaScript-Widgets sind barrierefrei zugänglich, d.h. so programmiert, dass sie mittels assistierender Technologien verstanden und uneingeschränkt verwendet werden können. Sie werden z.B. durch Screenreader korrekt angesagt; Funktion, Rolle und Status werden korrekt und aktuell vermittelt. (108, 4.1.2)
       - Der Einsatz von ARIA ist sinnvoll und korrekt. Wann immer möglich werden Standard-HTML-Elemente verwendet; ARIA wird eingesetzt wenn kein entsprechendes HTML-Element existiert oder weil eine technische Notwendigkeit dafür besteht. (109, 4.1.2)
         - 📚 Ausführlicher ARIA-Kurs: https://webdesign.tutsplus.com/courses/website-accessibility-with-aria-roles
         - 📚 https://developer.mozilla.org/en-US/docs/Learn/Accessibility/WAI-ARIA_basics
       - Captchas?
12. 🙏 **Build a robust yet flexible experience**

      - 📚 https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Responsive_Design
      - 📚 https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Media_queries
      - 📚 https://developer.mozilla.org/en-US/docs/Learn/Accessibility/Mobile
      - 💡 (Why) **Indications should be understandable with different senses**
        - Inhalte weisen nicht ausschliesslich auf sensorische Eigenschaften (rein visuell erkennbar, rein akustisch verständlich) hin, z.B. «Den grünen Schalter links betätigen», «Korrigieren Sie die Eingaben in den rot umrandeten Feldern», «Mit Klick auf das Bild rechts …». (48, 1.3.3) → Verweis auf Virtue "Forms (required)"
      - Inhalte sind in beiden Bildschirmorientierungen (Hoch- und Querformat) korrekt dargestellt und nutzbar. Passt sich der Inhalt nicht automatisch an die Bildschirmorientierung an, steht ein Schalter zur Verfügung zum manuellen Drehen des Bildschirminhalts (für Websites vom Browser sichergestellt, für Mobile Apps durch Design und Entwicklung sicherzustellen). (49, 1.3.4) → 🤔 *Einfach nur richtig responsiv machen!*
      - Automatisch abspielender Audio-Inhalt von mehr als 3 Sekunden wird nach Möglichkeit vermieden. Ist er doch vorhanden, ist er steuerbar (Wiedergabe stoppen, Lautstärke unabhängig von der Systemlautstärke regeln). Die Steuerung befindet sich am Anfang der Seite. (53, 1.4.2)
      - Elemente sind auf mindestens 200% zoombar, entweder der Text allein oder die komplette Seite (für Websites in der Regel vom Browser sichergestellt, für Mobile Apps durch Design und Entwicklung sicherzustellen). (56, 1.4.4)
        - 🤔 *What about px vs. rem question?!*
      - Texte werden nicht nur als Grafiken eingebunden, denn diese lassen keine Anpassungen zu (z.B. Grösse skalieren, Vorder- und Hintergrund-Farben verändern, etc.). Ausgenommen sind Texte, bei denen eine bestimmte Art der Präsentation für die vermittelte Information unentbehrlich ist (z.B. Logos oder Markennamen). (57, 1.4.5)
      - Inhalt lässt sich ohne Einschränkungen (z.B. Überlappungen) und ohne horizontales Scrollen in den Viewport-Mindestdimensionen von 320x256 CSS-Pixel darstellen. Das entspricht einer Vergrösserung auf 400%. (58, 1.4.10)
      - Abstände zwischen Zeilen, Wörtern und Buchstaben sowie nach Absätzen sind ohne resultierende Einschränkungen um bestimmte Werte vergrösserbar. Ausnahmen sind: Untertitel in Video-Inhalten, PDF-Dokumente. (61, 1.4.12)
      - Inhalte, die per Hover oder Fokus eingeblendet werden, sind nicht störend und es kann mit ihnen interagiert werden. Folgende drei Bedingungen sind erfüllt: Per Hover oder Fokus eingeblendete Inhalte sind ausblendbar, hoverbar und dauerhaft (persistent). (62, 1.4.13)
      - Timeout-Zeitintervalle sind anpassbar oder können deaktiviert werden. Es ist ein deutlicher Hinweis auf diese Möglichkeiten erforderlich. Für die Anpassungsmöglichkeiten gilt: Entweder ist das Timeout auf mindestens den zehnfachen Wert der Standardeinstellung möglich oder es erfolgt eine Warnung, bevor das Timeout abläuft, und es werden mindestens 20 Sekunden zur Verfügung gestellt, um mit einer einfachen Aktion (z.B. «Drücken Sie die Leertaste») die verfügbare Zeit zu verlängern. Diese Option muss mindestens zehn Mal bestehen. (68, 2.2.1)
        - http://www.washington.edu/accessibility/checklist/time-limits/ | https://accessibility.18f.gov/timeouts/
      - Dauerhaft animierte Inhalte (länger als fünf Sekunden) können mittels gut sichtbarer Bedienelemente pausiert, gestoppt oder ausgeblendet werden. Als dauerhaft animiert gelten Inhalte, die sich bewegen und/oder automatisch aktualisieren, die blinken oder scrollen. Sie beginnen automatisch und werden parallel zu anderen Inhalten dargestellt. (69, 2.2.2)
      - Es existieren mindestens zwei der folgenden drei Methoden, um Zugang zu Inhalten zu bekommen: Navigation, Suchfunktion, Sitemap. (79, 2.4.5)
      - Die Navigation ist konsistent, d.h. innerhalb einer Anwendung gleichbleibend angeordnet und aufgebaut. (91, 3.2.3)
      - Bestandteile mit gleicher Funktion sind konsistent umgesetzt, sowohl auf visueller wie auch auf semantischer Ebene. (92, 3.2.4)
      - Der HTML-Code weist keine für die Barrierefreiheit relevanten Fehler auf. (99, 4.1.1)
      - 🚀 WCAG 2.2, 3.3.7: Accessible Authentication → Z.B. wenn Copy&Paste eines Passworts disabled ist (manuelle Eingabe erzwungen) *🤔 → als "flexible" kann/sollte durchaus auch verstanden werden, dass keine Standard-Funktionalitäten unterbunden werden* 

**Offene Checklisten-Punkte:**

- Elemente sind korrekt versteckt und zwar so, dass sie auch durch assistierende Technologien nicht ausgegeben werden, wenn sie visuell nicht sichtbar sind. (76, 2.4.3) ⁉️ Was macht das hier? Würde ich für WCAG 2.2 Checkliste unbedingt umformulieren/entfernen!

**"Fehlende" WCAG-Kriterien:**

Alles WCAG 2.2-Kriterien. Diese könnten aber eigentlich "gäbig" unter einer Virtue "Common Sense" oder so gruppiert werden:

- 🚀 WCAG 2.2, 2.5.8: Target Size (Minimum) → Mindestgrösse von klickbaren Elementen, plus Abstand zwischen ihnen
- 🚀 WCAG 2.2, 3.2.6 Consistent Help → Z.B. Hilfe-Links in Footer müssen immer am selben Ort sein
- 🚀 WCAG 2.2, 3.2.7: Any important controls should remain visible/available while that control is relevant

**Master classes:**

1. Simple/easy language (maybe use "comprehensible" as umbrella-term?)
   1. https://gds.blog.gov.uk/2016/02/23/writing-content-for-everyone/
   2. http://meetcontent.com/blog/respect-your-audience-with-readable-content/
2. Cognitive, Learning, and Neurological Disabilities
   1. https://www.boia.org/blog/how-do-we-perform-accessibility-testing-for-the-impact-of-cognitive-learning-and-neurological-disabilities
   1. "inverted pyramid" approach
   1. https://uxmovement.com/content/6-surprising-bad-practices-that-hurt-dyslexic-users/
3. Typography
   1. https://design-system.service.gov.uk/styles/typography/
   2. https://marvelapp.com/blog/body-text-small/
   3. https://ia.net/topics/100e2r/
4. PDF
5. Building accessible components (with and without ARIA)
6. Automated testing
7. Responsive Tabellen → bzw. `display` übersteuert Semantik! Kann aber mittels `role="tablerow"` o.ä. wieder rück-übersteuert werden 😅
   1. Hinweis: `display: none` "entfernt" Element für Nutzende aus der Sichtbarkeit, aber Formular-Elemente werden weiterhin verschickt! Ist etwas un-intuitiv...