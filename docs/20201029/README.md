# Graph QL og repo fra NRK

Vi fortsetter å møtes til digital fagkveld. På programmet: GraphQL og Show me your repository: NRK

## GraphQL

Leif startet dagens fagkveld med å gi oss en introduksjon til GraphQL for .NET applikasjoner.

På agendaen:
- Hva er GraphQL?
- Terminologi
- Egnede bruksområder
- GraphQL VS. REST
- Fordeler og ulemper
- Demo

GraphQL er et spørrespråk utviklet av Facebook for å tilgjengeliggjøring data. Det ble utviklet for å gjøre det enklere for klienter å konsumere data og for å kunne vokse over tid. Den vanligste måten dette gjøres på er gjennom REST-apier. REST har sine fordeler, men kan bli uhåndterlig og uoversiktlig over tid. I tillegg må det utvikles et nytt endepunkt hver gang en ønsker å eksponere ny data og en klient må kanskje kalle flere endepunkt for å sy sammen dataene den trenger.

I GraphQL derimot får man en selvdokumenterende og standardisert måte å tilgjengeliggjøring data på. Dette gjør at apiet kan vokse dynamisk over tid uten å bli uoversiktlig eller uhåndterlig. Siden dette er et spørrespråk kan konsumentene/klientene selv velge ut de eksakte dataene de ønsker, noe som gjør koden mindre kompleks og sparer serverne for unødig last.

Leif avsluttet med kjøre en demo på dette, med utgangspunkt i en enkel bloggapplikasjon.

![Fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20201029/content/image.png)

[Se presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20201029/content/GraphQL_Fagkveld.pdf)

## Show Me Your Repository: NRK

På gårsdagens fagkveld fortalte Ingve mer om et spennende repository hos NRK, et API for radio programsider. Et kult prosjekt som i hovedsak handler om å levere data for landingssidene for NRK Radio sine podkaster og radioserier. Ingve snakket litt om å kunne skille mellom forskjellige versjoner av radioserier, og viste oss hvordan dette så ut både før og etter dette APIet. Han snakket videre litt om arkitektur og hvordan dette er bygd opp. 

Dette repositoryet er et ASP.NET MVC prosjekt hvor det brukes .NET Tools for å lagre ulik informasjon. Det brukes også Azure Devops, med multi-stage pipelines. Bygg og Deploy er også via Azure Devops. 

## Among us!

Kvelden ble avsluttet med det populære onlinespillet Among us - samarbeidsspillet hvor man må jobbe sammen for å utføre oppgaver slik at man kan komme seg i sikkerhet.  Sammen med 4-10 andre spillere er man nemlig plassert på en romstasjon. Èn eller flere av spillerne har et mål om å sabotere for denne romstasjonen. Fellesskapet må derfor finne ut hvem som er sabotør og hvem som faktisk spiller på lag! Et morsomt spill som legger opp til samarbeid, og også noen hete diskusjoner.

![Fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20201029/content/amongus.png)

Fikk du lyst til å teste?

Steam for PC: https://store.steampowered.com/app/945360/Among_Us/

App store: https://apps.apple.com/us/app/among-us/id1351168404

Google play: https://play.google.com/store/apps/details?id=com.innersloth.spacemafia&hl=en&gl=US
