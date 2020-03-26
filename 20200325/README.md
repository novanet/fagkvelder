# Online fagkveld om pågående kundeprosjekter

For første gang har vi holdt fagkvelden vår online. Grunnet Covid-19 viruset. Vi startet ambisiøst med å kjøre Teams Live Meeting, men dette ble fort avsluttet da ikke alle kom inn i møtet. Vi fant vi ut at å være "Producer" (den som styrer hvilken skjerm/lyd som vises) og "Presenter" (den som presenterer) samtidig ikke fungerer så bra. I tillegg til at det ikke er like enkelt med spørsmål og annen interaksjon underveis i presentasjonen (da den vises med 20 sekunders forsinkelse). Da gikk vi over på et vanlig Teams-møte. Men der ble det problemer med Sergey sin presentasjon, så vi gikk vidre til en Slack Call. Men det fungerte ikke da det var begrensning på 15 stk... Tilslutt endte vi opp på Zoom, som fungerte utmerket (selv om det er noen betenkligheter rundt [sikkerheten til Zoom](https://securityboulevard.com/2020/03/using-zoom-here-are-the-privacy-issues-you-need-to-be-aware-of/))

![Meetup](https://github.com/novanet/fagkvelder/blob/master/20200325/content/fagkveld25032020.png)

## Lars Alexander om kundeprosjekter

Lars Alexander fortalte om to kundeprosjekter som er helt i oppstarten.

### Omskriving av monolitt

Det ene prosjektet dreier seg om en omfattende omskriving av en  applikasjon basert på Windows Forms (og noe VB6). Applikasjonen er utviklet over mange år, og har avhengigheter på kryss og tvers av komponentene. Den kan beskrives som en "single process monolith", som vi lærte om på workshop'en vår med Sam Newman i fjor.

Vi har foreslått å skrive om denne modul for modul, og tilgjengeliggjøre modulene for brukerne tidlig i utviklingsprosessen. Den eksisterende applikasjonen vil kjøre paralellt, slik at brukerne kan velge å bruke ny eller gammel løsning. På denne måten får brukerne verdi tidlig. F.eks. ved at de får funksjonalitet tilgjengelig på nett fremfor via VPN og desktop som måtte brukes tidligere. I tillegg får vi reell brukertesting og feedback tidlig i prosessen, samt validert at foreslått løsningsarkitektur fungerer.

Løsningsarkitekturen vil basere seg på mikrotjenester og Azure ServiceBus for kommunikasjon mellom tjenestene. Tjenestene utvikles med .NET Core og frontend utvikles med React. Alt driftes i Azure og infrastrukturen der settes opp med Terraform.

### Fra CMS til mikrotjenester

De andre prosjektet som Lars Alexander snakket om er hos et av de store forbundene. Deres tjenester har stortsett vært basert på et CMS og utvidelser og integrasjoner mot dette. Dette ønsker de å gå bort fra og utvikle et sett med API'er som dekker den samme funksjonaliteten.

Kunden har spesifisert flere løsninger som de ønsker over på den nye løsningsarkitekturen, og vi ble enige om å starte med en av de enklere tjenestene de ønsker å tilby via API. Dette for å validere den foreslåtte løsningsarkitekturen, og for å bygge kompetanse og erfaring med denne for de interne ressursene hos kunden.

Som for det første prosjektet så tar vi utgangspunkt i en mikrotjenestearkitektur med Azure ServiceBus for kommunikasjon. Men for denne kunden vil vi i større grad ta i bruk Azure Functions, med ServiceBusTriggers for å ta i mot meldinger fra meldingsbussen, og HttpTriggers for å returnere data. Alt driftes i Azure og infrastrukturen der settes opp med Terraform.

For denne kunden er det mye nytt på .NET Core, Azure, Devops osv. Så her bistår vi med både opplæring og rådgivning på dette.

## Sergey om kundeprosjekt

Sergey fortalte om kundeprosjektet han jobber med.

### 

Sergeys prosjekt ligner de andre prosjektene som er beskrevet, hvor man skal gå fra en monolitt til mikrotjenester. Monolitten hos denne kunden er i større grad distribuert, men hele løsningen må fremdeles deployes samtidig. I tillegg er det mye foretningslogikk i stored procedures og mye annet gøy.

Et av målene med dette prosjektet er å korte ned tiden man brukes på en av de største prosessene hos kunden. Denne prosessen går over 3 dager og krever som regel at en utvikler må innvolveres for å fikse feil eller stans. Kunden ønsker en i stor grad automatisert løsning med noen få kontrollpunkter for å gjøre manuelle sjekker.

Sergey fortalte om utfordringer med eksisterende kodebase og løsninger, og viste oss en del av den nye løsningsarkitekturen. I tillegg viste han noen tips og triks i C# 8.

