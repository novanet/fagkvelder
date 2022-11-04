# Fagkveld 03.11.2022

Endelig fagkveld i nye lokaler! Trivselsansvarlig hadde laget en sinnsykt god kyllinggryte, kombinert med masse godt å drikke på :)

![Alex, Dmitry og Nils Georg](https://github.com/novanet/fagkvelder/blob/master/docs/20221103/content/faglig.png)

## OpenTelemetry og Elastic APM - Alex

Alex fortalte om OpenTelemetry og hvordan de bruker det hos kunden hans. OpenTelemetry gjør det mulig å følge traces på tvers av tjenester i et system. F.eks. kan se hvordan et API-kall først treffer APIet, kaller på en annen komponent, kaller på et annet API, gjør noe mot databasen. Da ser man hvor lang tid trace'et tar på hver sted, hvilke funksjoner som kaller og kan hvilke data som ble send. Man ser også hvor feil har oppstått. Disse tracene sendes til Elastic APM og kan visualiseres. Her får man mange visualiseringer out-of-the-boks, men kan også lage egne. Alex viste også at man kan sende tracene til Azure Application Insights og få lignende visualiseringer der.

## Azure App Configuration - Dmitry

Dmitry hadde en gjennomgang av Azure App Configuration. Han viste hvordan man kan sette opp Azure App Configuration til å holde på alle settings i en applikasjon eller tjeneste. Man kan sette opp disse slik at de endre umiddelbart, slik at endringen skjer i applikasjon/tjeneste uten redeploy eller omstart. Azure App Configuration kan også kobles mot Azure Key Vault slik at secrets også blir tilgjengelig via Azure App Configuration. Azure App Configuration har også mulighet for feature toggles! Disse kan defineres i kode (f.eks. en attributt på en WebAPI Controller eller på en del av en Razor Page) og styres fra Azure portalen. Endring av en feature toggle (f.eks. true -> false) skjer umiddelbart i applikasjon/tjeneste. Vi diskuterte også alternative som LauchDarkly og Unleash.

## Nuke - Nils Georg

Nils Georg fortalte om et nytt rammeverk for å bygge kode, som heter Nuke. Nuke legges inn som den del av koden og gjør at du kan definere hvordan koden skal bygges/kompileres med C#. Dette gjør at man kan definere mer komplekse bygg og at man er sikker på at man bygger på akkurat samme måte over alt (enten det er lokalt eller ved deploy).

![Spillkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20221103/content/sosialt.png)

## Sosialt

Etter fagkvelden var vi i Novateket og spilte Nintendo Switch og brettspill :)
