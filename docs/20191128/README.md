# NRK Valgresultater og Dolittle

[Lenke til innhold](https://github.com/novanet/fagkvelder/tree/master/docs/20191128/content)

### NRK Valgresultater

![Fredrik og Hallstein](https://github.com/novanet/fagkvelder/blob/master/docs/20191128/content/solvang.png)

Hallstein fortalte om hvordan oppdraget hans for NRK om å levere valgresultater har gått.

For NRK er Valgresultatene er det viktigste "produktet" de leverte i 2019. Prosjektet innvolverer flest folk fra NRK samtidig. Det gir de høyeste besøkstallene på NRK nettsidene ila året. Høyst uoffisielle undersøkelser viser at API'et hadde den 3. høyeste peak i Norge i 2019. Bak Yr (sommerdag) og ID-Porten (selvangivelsen).

API'et måtte levere resultatene presist fra kl. 21 den 9. september, og være absolutt korrekt og sikkert.

Yteleseskrav: Snittrespons 100ms/request og maks 1s.

Et API (Import) for å hente data fra ValgDir og legge dette i databasen. Et annen API (Result) for å levere dataene til nett, TV, app.

Dataene er fordelt på geografiske områder. I SQL-databasen ble JSON fra ValgDir lagret i sin helhet og kunne hentes ut på en geografisk identifikator/key.

Hostet i Kubernetes på Azure med redundans på internt cluster. Akamai for caching.

K6 via LoadImpact ble brukt for load testing, og er et verktøy som Hallstein anbefaler.

##### Valgnatten

API-et fungerte utmerket. Fra kl. 21:00 – 00:30:

- Ca. 2 millioner requests som ikke stoppet i Akamai
- Snitt responstid på 13,6 ms
- Ingen feil i loggene
- DB-cpu alltid under 1%

##### Lessons learned (fungerte bra)

- Azure Application Insights for monitorering
- Polling (ikke Pusher) fra nettsiden for å refreshe resultater
- Databaseskjema for lesing
- 3D -> Dedikert Devops Dude
- K6 ytelsestestverktøy

### Dolittle

[Presentasjon](https://github.com/novanet/fagkvelder/tree/master/docs/20191128/content/Dolittle.pdf)

![Dolittle](https://github.com/novanet/fagkvelder/blob/master/docs/20191128/content/dolittle.png)

Einar Ingebritsen kom på besøk for å fortelle om Dolittle og deres produkt.

Wilhelmsen Rederi er første kunde og er inne på eiersiden (50%).

I Shipping-bransjen er det behov for effektivisering/digitalisering. Blant annet pga. endrede krav til fuel som koster bransjen 60 milliarder kroner. Wilhelmsen ønsket derfor å legge til rette for nye foretningsmodeller, og satser på Dolittles rammeverk for å gjøre dette.

Et eksempel er at de har laget en app og løsning for å automatisk bytte ut tauene som holder skipene til land. Rope-as-a-service. Dette var tidligere en manuell prosess, og det medførte høy risko hvis de ble slitt. Dette kan brukes internt og tilbys til andre i bransjen.

Rammeverket er open source. Dolittles foretningsmodell baseres på å hoste Dolittle-løsninger. De skal i utgangspunktet ikke tilby konsulenttjenester på produktet, og ønsker partnere (som f.eks. Novanet) til å gjøre dette.

Rammeverket baserer seg på hendelser/events for å lagre mikrotjenester. Hver mikrotjeneste får et Event Store (source of truth) og en database (perfect cache).

Rammeverket tar seg av sikkerhet, og tillater ikke å styre med sikkerhet selv. Det løses med en HTTP Proxy som genererer et token for hver request. Tokenet valideres i en Resource Proxy som ligger foran lagring før data hentes ut.

Rammeverket støtter by default multi-tenancy.

Rammeverket har ikke en sentralisert broker (les meldingbuss), men benytter istedet GRPC for kommunikasjon mellom tjenestene. Avsender holder på meldingene til mottaker har hentet de.

Dolittles SDK er "decoupled" fra Runtime. Slik at man kan implementere SDK for flere programmeringspråk. .NET er støttet fullt. Flere på vei (node, Java, Python ++).

Einar gikk igjennom en del kildekode fra <https://github.com/dolittle-samples/Bank.>

Kildekode, eksempler og dokumentasjon finnes på <https://dolittle.io>

Diskusjon og spørsmål i ettekant:

- Stor commitment på Dolittle rammeverket (å selge inn)
- Legger stor tillit til Dolittle (sikkerhet osv.)
- Passer kun til store kunder? Kanskje heller til modne kunder (som vet at de vil kjøre hendelsesdrevet, CQRS, event sourcing osv.)
- Blir avhengig av Dolittles oppdateringsfrekvens på sentrale biblioteker
- Fordel med rammeverk for mikrotjenester i prosjekter hvor utviklerne har forkjellig erfaring
- Fordel med rammeverk for å sørge for at implementasjon av events, handlere, kommunikasjon mellom tjenester, event sourcing osv. bli likt overalt

![Unleash Dolittle](https://github.com/novanet/fagkvelder/blob/master/docs/20191128/content/unleash-dolittle.png)
