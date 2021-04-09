# Fagkveld 04.03.2021

Ny fagkveld etter vel overstått påskeferie. Marianne startet showet med en gjennomgang av status for første kvartal. Så fortsatte vi med faglig innhold:

## Brainstorming rundt blogginnlegg og presentasjoner for 2021

Denne gang hadde alle fått en hjemmelekse i å besvare 3 spørsmål som gikk på ting de har lært det siste året. På fagkvelden fylte alle ut sine svar i Miro, og fikk en oppgave for å komme opp med ideer til blogginnlegg og presentasjoner som de evt. kan skrive/holde i 2021.

![Miro brainstorming](https://github.com/novanet/fagkvelder/blob/master/docs/20210408/content/IMG_0777.jpg)

## Show me your repository: Thon Databank API - Tor Kristen

Tor Kristen snakket om en løsning han har laget for å vedlikeholde og eksponere "metadata" om Thon Shopping sine butikker. Løsningen består av en Vue-frontend og et GraphQL API, hvor Thon kan vedlikeholde dataene i frontenden og andre kan hente ut dataene via API'et. Løsningen ble i første omgang utviklet for at Thons sin Episerver-løsning, som utvikles av vårt søsterselkap Epinova, kunne hente ut disse dataene. Tor Kristen fortalte om fordeler og ulemper med GraphQL og hvordan han benyttet dette sammen med Entityframework.

## UI-testing med Cypress og Testcafé - Lars Alexander

Lars Alexander fortalte kort om automatisert UI-testing og hvorfor man bør komme igang med dette. Så gikk han gjennom litt rundt prising. Cypress sin "test runner" er gratis og open source, men hvis man skal benytte deres Dashboard i skyen for lagring og visning av testresultater må man fort over på en betalt løsning. Testcafé er open source og gratis, men har ikke tilsvarende lagring av testresultater som Cypress. Etter dette var det demo av hvordan man kommer igang med UI-testing med Cypress.io og Testcafé. Lars Alexander hadde laget en liten Vue-nettside med noen skjemaer for utfylling, samt et API-kall for å hente noe data. Testene viste hvordan testverktøyene kan automatisk fylle ut skjemaene, og kjøre sjekker på resultatet (expectations/asserts). Lars Alexander viste også hvordan man kan gjøre mocke/intercept av API-kall, slik at man ikke gjør reelle kall mot serveren, men heller returnerer faste, egendefinerte data for testen når et API kalles. Dette er nyttig hvis man kun ønsker å teste UI og ikke kall mot API og videre mot database (som da blir en integrasjonstest).

Du finner kildekoden som han brukte her:
https://github.com/larsajakobsen/cypress-n-testcafe-demo
