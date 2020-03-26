# Fagkveld 12.10.2018

[Alle presentasjoner](https://github.com/novanet/fagkvelder/tree/master/docs/20181012/content)

## NDC 2019

Vi må begynne å planlegge løsning til NDC-stand 2019. Legg inn forslag til løsning her (vi kan vente litt med å stemme, slik at alle forslag er kommet inn først):

[Link til Tricider](http://www.tricider.com/brainstorming/2owtTw0FDnR)

Det er en fordel at den som kommer med idéen er involvert i implementering av løsningen.

Vi trenger også 2 stk. som skal være med å stå på stand. Si ifra til Lars Alexander hvis du har lyst! Det forventes at de som står på stand har vært involvert i implementering av løsningen, slik at man kan svare på spørsmål om denne.

## Event Storming med Terje, Kristian og Ivan

Brukes til å modellere et system. Viktig å ha med utviklere og domeneeksperter. Modellerer med sticky notes. For å øke kompetanse om domenet. Viktigste er domeneekspertene, de bestemmer hva som skal stå på lappene.

Hva er de viktigste hendelsene?
Hvordan trigger disse?
Er det noen områder som er mer komplekse?
Hva slags rapporter/views skal komme ut av systemet?

Eksempel ([se presentasjon](https://github.com/novanet/fagkvelder/tree/master/docs/20181012/content/IntroEventstorming.pdf)): Booking av rom på hotell

Farger:

- Oransje = Event ("Room booked")
- Blå = Command ("Book room")
- Grønne = Data som skal presenteres ("Room availability")
- Lilla = Policies (ved betaling må rommet reserveres i bookng system)
- Gule = eksterne systemer, timere e.l.
- Andre farger = kan brukes til f.eks. spørsmål

Starter med hendelser som skjer. Disse plasseres i en timeline, fra den første hendelsen som inntreffer ("bryggeprossess startet") til den siste ("øl konsumert").

Hvorfor hendelser?

- Lett å forstå for domeneekspertene
- Fokus på resultatene i en prosess

Tips:

- Ikke fokuser på teknisk implementasjon, kun foretningshendelser
- Start med overordnede hendelser, detaljer senere.
- Commands og Events henger sammen, en-til-mange
- Policies = domeneregeler

### Gruppearbeid:

Case: Cybotron Systems og Chrononaut Brewing

[Link til case](https://github.com/novanet/fagkvelder/tree/master/docs/20181012/content/Chrononaut.pdf)

Problem: Sprengt kapasitet for bryggemesteren, ønsker økt grad av automatisering

Vi delte oss i to grupper som skulle modellere bryggeprossesen.

### Resultat

### Gruppe 1

![Bilde av gruppe 1](https://github.com/novanet/fagkvelder/blob/master/docs/20181012/content/IMG_1565.jpeg)

### Gruppe 2

![Bilde av gruppe 2](https://github.com/novanet/fagkvelder/blob/master/docs/20181012/content/IMG_1571.jpeg)

### Konklusjon

Alle fikk en forståelse for hvordan brygging foregår, også de som aldri har gjort det før. Det kan overføres til en konsulent som kommer inn til en bedrift hvor man ikke kjenner domene. For overføring av domenekunnskap kan Event Storming være til stor hjelp.

### Tappa != Karra

Event Storming fører til at alle snakker samme språk. I den ene gruppen satt vi opp et event som het "Tappa". Vi som ikke hadde brygget før, gikk ut fra at dette var å tappe ølen til flasker. Det var ikke riktig. Det domeneekspertene mente var å tappe ølet over på kar. Så vi måtte ha to hendelser; karra og tappa. Etter dette var avklart, brukte og forstod alle disse to begrepene.

Til slutt fortalte Ivan litt om hvordan resultatet fra Event Storming kan overføres til kode. Ved å ta i bruk DDD, kan man nærmest gjøre en en-til-en overføring av Commands, Event, Policies og Views.

Det kommer mer om Event Storming på DDD-kurset i november!

## Sosialt

Fagkvelden ble avsluttet med brettspill! Takk til Thomas som hadde med masse spill :)

![Bilde av brettspill](https://github.com/novanet/fagkvelder/blob/master/docs/20181012/content/IMG_1572.jpeg)
