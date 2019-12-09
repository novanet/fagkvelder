
![ByNovanet](https://github.com/novanet/fagkvelder/blob/master/20190402/content/header.png)

# Fagkveld 02.04.2019

Tema for kvelden var "By Novanet: Del hva du jobber med", hvor flere presenterte enten prosjektet eller tekonogien de jobber med til daglig.

[Lenke til innhold](https://github.com/novanet/fagkvelder/tree/master/20190402/content)

## Azure Cli & me - Johan

[Lenke til presentasjon](https://github.com/novanet/fagkvelder/tree/master/20190402/content/AzureCLIanme.pdf)

![Johan](https://github.com/novanet/fagkvelder/blob/master/20190402/content/johan.jpg)

Johan fortalte om Azure CLI (az), og hvordan de bruker det i Thon-prosjektet. Han mener man kan gjøre alt med az, og det du ikke kan gjøre kan man lage extentions for (i Python). F.eks. har ikke Azure CLI støtte for Application Insights, men man kan hente Application Insights som en generell Azure resource, og så gjøre spørringer mot denne. Johan gav en demo på hvordan dette kunne gjøres.

[Se scriptet her](https://github.com/novanet/fagkvelder/tree/master/20190402/content/azure-cli-demo.sh)

Johan viste også hvordan de bruker az til å hente "secrets" (fra Key Vault) for å kjøre løsninger på lokalt utviklingmiljø. Med egne tilpassnigner for Mac, Windows (Git Bash) og Linux. Han viste et uforståelig skript de måtte bruke for å fjerne dobbeltfnutter (") rundt verdier som kommer ut av Keyvault, og at de hadde tilsvarende for linjeskift.

Videre fortalte han at de bruker az for å blant annet kjøre ARM-templates ved å kjøre az som en prossess i Fake script (F#) i release pipeline.

## Securitas - Richard

[Lenke til presentasjon](https://github.com/novanet/fagkvelder/tree/master/20190402/content/securitas.pdf)

![Richard](https://github.com/novanet/fagkvelder/blob/master/20190402/content/richard.jpg)

Richard fortalte om prosjektet som Novanet har hos Securitas, og om sine oppgaver:

- Vaktkalender
	- Oversikt over vektere som kommer på vakt for sykehuskunder
- Sync av brukere til Didac (helse/miljø/sikkerhets avvik)
	- Opprettelse av brukere i Didac, et system for registering av vekternes kurs og sertifiseringer
- Sync av brukere til Copro (helse/miljø/sikkerhets avvik)
	- Opprettelse av brukere i Copro, et system for håndtering av HMS avvik (f.eks. hvis en vekter har blitt angrepet.).
- Sync av XRM-data
	- Innlesning av data fra XRM, systemet som brukes når vekterne trener på skanning av bagasje på flyplass, til HR-systemet.

Richard viste en tegning av arkitekturen hos Securitas:
- 8 kjernesystemer
- Integrasjoner med mikrotjenester
- Kommunikasjon mellom tjenestene via Azure Service Bus
- Håndterer hele ansattflyten, fra rekruttering til avsluttet arbeidsforhold

##### Peak and lock

Richard fortale om noe man må være oppmerksom på når man jobber med Azure Service Bus.

Når man mottar en melding, er det en broker som låser meldingen i en forutbestemt tid. Meldingen merkes som ferdig når prosesseringen er utført, og slettes fra kø. Man har et lock token som har 1 minutts time out (standard). Dette kan skape problemer hvis man f.eks. debugger, og trenger å bruker mer enn 1 minutt.

## NRK - Ingve

[Lenke til presentasjon](https://github.com/novanet/fagkvelder/tree/master/20190402/content/nrk/pres.md)

![Ingve](https://github.com/novanet/fagkvelder/blob/master/20190402/content/ingve.jpg)

Ingve har bare vært hos NRK noen måneder som del av Radio-teamet. Han har allerde jobbet med Google Home, Sonos og Azure Search.

Han bekrev først den overordnede arkitekturen:

API - API - API - API - API - API - API - API - API

Steibrudd | Steinbrudd | Steinbrudd | Steinbrudd

GRANITT

I bunn er en stor database kalt GRANITT, fra denne sendes data ut i flere mindre som kalles Steinbrudd. Så har de mange API'er som bruker data fra steinbruddene.

##### Google Home

Løsning laget i TypeScript, hostet i K8s og deployet med Jenkins. All lyttehistorikk lagret i Table Storage. Brukerne kan snakke med NRK. Bruker Dialog Flow med Intents, Phrases og Actions. 

Gotchas: 
- Mange brukere på julaften
- Føles litt prematurt, snever platform (kan f.eks. ikke starte spilling i et annet rom)

Det kommer Google Home devicer med skjerm.

##### Sonos

Benytter Sonos API for å kommunisere med Sonos. Man får en WSDL av Sonos som man må implementere. Hostet i Azure, bygges med Team City. Man registerer seg på musicpartners.sonos.com. Man må bruke PC for å utvikle mot Sonos. Nettverksissues kan også hindre deg å jobbe med Sonos. På NRK er Ingve koblet på en 4G router, utenfor NRK sitt nettverk.

Gotchas:
- Tidkrevende
	- 1-6 uker for godkjenning
	- 12 uker i beta
- Gammeldags
	- WSDL
	- Tester i Python
- Vanskelig med state handling
	- ingen client, må sende med unike id'er og lagre state på server

Jobber med å tilgjengeliggjøre mer innhold.

##### Azure Search

NRK ønsker å gå bort fra sine ElasticSearch instanser. Det er for dyrt å drifte på VM'er. I tillegg er det mye som ikke er indeksert, og mange som ikke bruker/kjenner til indeksene. De som har laget de er også ute av prosjektet. Ønsker derfor å starte på scratch med Azure Search.

NRK har indeksert er sekssifret antall radioserier og podkaster. Indekseringen kjører som Azure Functions. De holder på å bygge et API basert på [Giraffe](https://github.com/giraffe-fsharp/Giraffe) for å jobbe mot Azure Search.

Gotchas:
- Kan ikke rename en index, må slette og lage ny
- Id'er kan ikke inneholde punktum

##### Å jobbe hos NRK

Å jobbe hos NRK er kult fordi:

- Alt skal i skyen
- Kan gjøre det man har lyst til
- De er pro: As a Service
- Frihet til å velge
- Må finne ut av ting selv
- Lærer mange nye ting, får tid til å teste ut

## Polaris.API - Jan Tore

![Jan Tore](https://github.com/novanet/fagkvelder/blob/master/20190402/content/jantore.jpg)

Jan Tore snakket om Polaris.API hos If. Polaris.API er en del av Waypoint-prosjektet, som er Nord-Europas største .NET Prosjekt. Det er over 200 personer som jobber med Waypoint, 115 konsulenter(i norge). Prosjektet ble startet i 2006, og har masse legacy code.

Polaris er løsningen for å jobbe med prising i If. Det brukes som et programmeringsverktøy for prissetting. Dette gjøres via et Admin UI, hvor man kan bygge opp regler for prissetting. Polaris er eksponert som WCF-tjenester, og det er flere andre teams/clusters (f.eks. Online Sales, PE for å editere poliser osv.) i IF som har begynt å bruke dette. Hver av disse måtte gjøre en komplisert integrasjon, og duplisere funksjonalitet som ikke er innebygget i Polaris. Polaris.API (REST) forsøker å løse disse problemene.

En vesentlig endringer er at Polaris.API bare returnerer id'en til polisen som blir generert. I motsettning til Polaris WCF løsningen, som returnerte hele polisen (opptil 80MB).

Selve Polaris løsningen er ikke distribuert, og kjører bare i minne. Det genererer changesets for hver endring som gjøres i Polaris.Admin. Neste prosjekt i Polaris-teamet blir å lage en distribuert cache for Polaris.
Hele Waypoint skal opp i skyen i 2020. Det er såpass stort at If allerede er en av de største Azure kundene i Nord-Europa.

## Open Tracing med Jaeger - Nils Georg

![Nils Georg](https://github.com/novanet/fagkvelder/blob/master/20190402/content/nilsgeorg.jpg)

[Open Tracing](https://github.com/novanet/fagkvelder/blob/master/20190402/README.md) er en beskrivelse av hvordan man skal gjøre tracing i et distribuert system. 

[Jaeger](https://github.com/jaegertracing/jaeger) er et system for distribuert tracing basert på Open Tracing (Open Tracing kompatible datamodell), som er laget av Uber. Jaeger tar i mot data og visualiserer denne. 

Man legger til [Open Tracing .NET Core](https://github.com/opentracing-contrib/csharp-netcore) i .NET Core prosjektene sine, og får masse tracing automatisk (plug-n-play). Det legges på en slags CorralationId i header på requests, slik at man kan trace kallene på tvers av tjenester. Open Tracing .NET Core følger med på eventer systemet (DiagnosticSource), og kan gjøre det samme mot f.eks. EntityFramework (da får man blant annet query'ene som kjøres med i trace).

Nils Georg demonstrerte en [løsning](https://github.com/nilsgs/jaeger-demo) med en nettside og to API'er. Han gjorde klikket på noe på nettsiden, og viste trace loggen i Jaeger. Der kunne man følge hvordan nettsiden gjorde kall på API'ene, og videre helt ned til databasen (hvor vi så hvilken query som ble utført). Nils Georg hadde lagt til en Thread.Sleep(5000) i en av metodene. Denne var lett å finne i Jaeger, da tracet var "lengre" (tok lengre tid) enn alle de andre.

Ett trace består av flere spans. Et spans kan ha flere tags.

Open Tracing er ikke .NET spesifikt. Finnes mange klienter, f.eks. Python, Go. Da får man også tracing mellom tjenester i forskjellige språk.  

Man må sette opp en Jaeger-instans selv. Foreløpig ingen skytjeneste for dette.

For .NET Full Framework må man sette opp en del mer selv (enn i .NET Core).

## Testing av http u-tjenester - Olav

[Lenke til presentasjon](https://github.com/novanet/fagkvelder/tree/master/20190402/content/Pact.pdf)

![Olav](https://github.com/novanet/fagkvelder/blob/master/20190402/content/olav.jpg)

Olav fortalte om hvordan de tester HTTP-baserte tjenester i Thon-prosjektet. Open Tracing skal merges med Open Census (som er tilsvarende fra Google). 

Deler opp i:
- Consumer (bruker en tjeneste)
- Provider (tilbyr en tjeneste)

Når man lager en provider som brukes av en consumer, så fungerer det fint. Men så kommer det nye krav og en utvider provider, og tar i bruk den nye funksjonaliteten i fra consumeren. Da har en fått en binding mellom consumer og provider. En kan ikke deploye consumeren før en har deployet den nye versjonen av provideren. Dette problemes multipliseres med antall tjenester og antall miljøer.

Dette kan løses ved med Pacts. Med Pact kan hver tjeneste testes individuellt uten å tenke på deployment.

Consument'en lager en Pact-fil som beskriver hva den har tenkt å gjøre. Så må provideren sørge for at den implementerer det som Pact-kontrakten krever. Pact-kontrakter bygges opp av Interactions som har en Request og en Response.

Consument'en bygger inn Pact-rammeverket i unit-testene sine (vanlige xunit tester), og mocker ut en HttpClient. Man spesifiserer forventninger til Request og Response på HttpClient'en. Så genereres Pact-filen ut fra hva unit-testene forventer.

Pact-filen leveres til provideren. Der genereres testes for hver Interaction i Pact-filen, som verifiserer at Provideren oppfyller de forventningene som Pact-filen har definert.

Pact-filene lastes opp og kan hentes fra en Pact Broker. Denne kan også gi et kart over hvilke tjenester som snakker med hvilke.