# NUnit, Open Source og ytelse hos Yr

[Lenke til innhold](https://github.com/novanet/fagkvelder/tree/master/20200218/content)

## NUnit og Open Source
![Terje Sandstrøm](https://github.com/novanet/fagkvelder/blob/master/20200218/content/IMG_2531.JPG)

Terje Sandstrøm fra Solidify er Microsoft Visual Studio and Development Technologies MVP og del av core-teamet til NUnit.

Terje fortalte om hvordan de jobber med NUnit i et Open Source miljø. NUnit og NUnit3TestAdapter (som Terje har jobbet mest med) er lastet ned over 100 000 000 ganger. Alikevel så har de bare rundt 1000 mennesker som har sendt inn issues, og bare rundt 100 som har bidratt til kildekoden. Dette er ganske vanlig for open source prosjekter.

Terje fortalte litt om forskjellen på NUnit og XUnit. Hvor XUnit skal være bleeding edge, og ha all den nye funksjonaliteten. Mens NUnit bevisst ligger et stykke etter. Men skal være rammeverket som støtter alle bruktstilfeller og i større grad har bakoverkompabilitet på eldre versjoner og på eldre versjoner av f.eks. .NET.

Så viste Terje oss hvordan vi kan bidra til NUnit eller andre open source prosjekter. Vi så på Github at det et av NUnit3TestAdapter sine bygg feilet, pga en test som feilet. For å rette dette startet vi med å forke NUnit3TestAdapter til Lars Alexander sin Github. Så clonet man denne og fant testen i kildekoden. Løsningen denne gangen ble å legge på [Ignore()] attributt :) Så ble koden commit'et og pushet, og vi laget en Pull Request mot NUnit3TestAdapter-repoet (master), som må godkjennes før endringen vår blir en del av NUnit3TestAdapter. Grunnen til å forke i stedet for å lage en branch, var å holde master branchen så clean som mulig.

Terje snakket også om sammenhengen mellom Github og Azure Devops, og så for seg at Github kanskje fikk større fokus fremover.

## Når millisekundene teller (hos Yr)

![Dmitry](https://github.com/novanet/fagkvelder/blob/master/20200218/content/IMG_2551.JPG)

[Lenke til presentasjon](https://github.com/novanet/fagkvelder/tree/master/20200218/content/DmitryYr.pdf)

Dmitry fortalte om hvordan de jobber med ytelse hos Yr. Dette er en presentasjon han skal holde på meetup den 5. mars. Yr har rundt 3 000 000 requests hver dag, og må gjøre det de kan for å få god nok ytelse ut av API'ene sine.

Dmitry fikk derfor mulighet til å jobbe med 3 hypoteser:

- .Net Core er kjappere enn .Net, og .Net Core 3.* er kjappere enn 2.*
- System.Json er kjappere enn Newtonsoft
- Linux er kjappere enn Windows

Dmitry bekreftet at .Net 3 er mye raskere enn tidligere versjoner, og la frem flere målinger rundt dette.

Målingene rundt System.Json og Newtonsoft kunne ikke bekrefte at System.Json i .Net Core 3 er raskere enn Newtonsoft.

Tallene beviste at Linux presterer bedre enn Windows for å hente de samme dataene.

Videre så Dmitry på målinger mot diverse database-løsninger, og ytelsesutfordringer man kan få i kode med EntityFramework, Linq og Dapper.

Tilslutt så han på løsningsarkitektur for forbedret ytelse.