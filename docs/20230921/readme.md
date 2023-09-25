# OpenSCAD og Event Sourcing

## OpenSCAD - Thomas

Thomas i Novanet er glad i brettspill og har maaaaange brettspill 🎲 Dvs. at det blir mange brikker, terninger, kort osv. å holde styr på. For å holde styr på disse ønsket Thomas seg egne, tilpassede bokser og bestemte seg for å 3D-printe slike selv.

Pga. begrensede 3D-modelleringskunnskaper fant Thomas ut at han kunne bruke OpenSCAD for å kode 3D-modellene. Noe han er sinnsykt mye bedre på 😁

![Bilde fra fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20230921/content/IMG_8178.jpg)

🤖 sier:

OpenSCAD er en gratis, åpen kildekode programvare som brukes til parametrisk 3D-modellering og design. Det skiller seg fra mange andre 3D-modelleringsverktøy ved å bruke en tekstbasert tilnærming i stedet for en grafisk grensesnitt. Dette betyr at i stedet for å dra og slippe eller bruke verktøylinjer for å opprette 3D-modeller, skriver brukeren kode i et skriptspråk som ligner på programmeringsspråket. Dette gjør det mulig å lage modeller på en mer presis og kontrollerbar måte.

Noen av hovedtrekkene til OpenSCAD inkluderer:

- Parametrisk design: Brukere kan definere parametere for modellene sine, for eksempel dimensjoner og geometriske egenskaper. Dette gjør det enkelt å gjøre endringer i modellen ved å justere parameterverdiene.

- Boolean-operasjoner: OpenSCAD støtter en rekke boolean-operasjoner som union, substraksjon og skjæring. Dette gjør det mulig å kombinere og endre geometriske former på avanserte måter.

- Import av 2D-vektorgrafikk: Du kan også importere 2D-vektorgrafikkfiler, for eksempel SVG-filer, og ekstrudere dem for å lage 3D-modeller.

- Støtte for skriving av egne funksjoner: OpenSCAD lar brukerne definere egne funksjoner og moduler for å organisere og gjenbruke kode.

- Forhåndsvisning: Programmet gir en sanntids forhåndsvisning av modellen mens du redigerer koden, slik at du kan se hvordan endringene påvirker resultatet.

OpenSCAD er spesielt populær blant DIY-entusiaster, 3D-utskriftsentusiaster og ingeniører som trenger nøyaktig kontroll over designprosessen. Det er tilgjengelig for Windows, macOS og Linux-plattformer, og det er også mange brukergenererte biblioteker og ressurser tilgjengelig for å hjelpe folk med å komme i gang og dele design med fellesskapet.

## Event Sourcing - Alex

![Bilde fra fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20230921/content/IMG_1293.jpg)

Alex har vært på workshop om Event Sourcing. På fagkvelden gikk han gjennom de viktigste tingene han lærte på workshopen:

- For systemer med sterkt behov for sporbarhet er Event Sourcing et godt valg
- Event Sourcing kan bidra til bedre ytelse ved bruk av read models
- Event Sourcing kan komplisere løsningen/koden
- Man bør gjøre en vurdering av fordeler og ulemper før man tar i bruk Event Sourcing
- Selve workshoppen med Hannes Lowette brukte for mye tid på oppsette og å skrive boilerplate kode

🤖 sier:

Event Sourcing er en programvarearkitektur- og designmønster som brukes for å lagre og gjenopprette tilstanden til et system ved å registrere endringer i tilstanden som hendelser (events). I stedet for å lagre den nåværende tilstanden til et system på et gitt tidspunkt, lagrer Event Sourcing alle hendelser som har oppstått siden systemet ble opprettet, og tilstanden til systemet beregnes deretter ved å "spille tilbake" disse hendelsene i riktig rekkefølge.

Her er noen grunnleggende konsepter og fordeler med Event Sourcing:

Event: En hendelse representerer en handling eller en endring i systemet på et bestemt tidspunkt. Hendelser er uforanderlige og lagres i hendelsesloggen i kronologisk rekkefølge.

Hendelsesloggen: Dette er en persistent lagring av alle hendelsene som har oppstått i systemet. Hendelsesloggen fungerer som en kilde til sannheten og kan brukes til å rekonstruere tilstanden til systemet til enhver tidspunkt.

Tilstandsgjenoppretting: For å gjenopprette tilstanden til systemet, spiller du tilbake hendelsene fra hendelsesloggen i rekkefølge. Dette gir full historikk over hvordan systemets tilstand har utviklet seg over tid.

Sporbarhet og revisjon: Event Sourcing gir full sporbarhet av systemets tilstandsendringer, noe som gjør det enkelt å spore feilsøking, feilretting og revisjon av systemet.

Skalering: Event Sourcing muliggjør enkel skalering, da hendelsesloggen kan deles og replikeres, og systemets tilstand kan rekonstrueres uavhengig på flere noder.

Business Intelligence: Hendelsesloggen kan brukes til å generere innsikt og analyser om systemets atferd og hvordan det har utviklet seg over tid.

Event Sourcing brukes ofte i sammenheng med CQRS (Command Query Responsibility Segregation), hvor kommandoer og spørringer til systemet håndteres separat. Kommandoer utløser hendelser som registreres i hendelsesloggen, og spørringer bruker hendelsesloggen til å hente aktuell tilstandsinformasjon.

Dette mønsteret er spesielt nyttig i situasjoner der det er viktig å ha full historikk og sporbarhet av systemets tilstandsendringer, for eksempel i finansielle systemer, logg- og overvåkningssystemer, og distribuerte applikasjoner der høy tilgjengelighet og skalerbarhet er viktige krav.

## Spill og moro

Etter det faglige ble det diverse spill og noe godt i glasset

![Bilde fra fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20230921/content/IMG_3687.jpg)

![Bilde fra fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20230921/content/IMG_20230921_195153.jpg)
