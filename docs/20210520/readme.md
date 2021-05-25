# Fagkveld 20.05.2021

Enda en digital fagkveld.

![Bilde fra Powerpoint](https://github.com/novanet/fagkvelder/blob/master/docs/20210520/content/slides.png)

## Oppdatering om Novas tjenesteplattform

Lars Alexander fortalte om arbeidet med Nova sin felles tjenesteplattform. Dette vil være et felles sett med prinsipper og en referansearkitektur som alle i Nova skal kjenne til og kan benytte som utgangspunkt når vi foreslår løsninger for kundene.

Du kan lese litt om prinsippene tjenesteplattformen er basert på her:
https://novanet.no/arkitekturprinsipper

## Show me your repository: Proviso-integrasjon

Leif fortalte om et repository/solution som han har laget hos NHO, som sørger for å integrere mot den eksterne løsningen Proviso. Proviso håndterer arrangementer i regi av NHO. Løsningen må i tillegg integere mot flere andre systemer. Leif har brukt Hangfire for å sette opp repeterende jobber som flytter data, og i løsningen baserer seg blant annet på CQRS og Mediator. Løsningen gjør at man kan fase ut en gammel PHP-løsning, og har foreløpig gjort jobben i produksjon uten problemer.

## .NET Framework -> .NET Core

![Bilde av .NET Analyser](https://github.com/novanet/fagkvelder/blob/master/docs/20210520/content/dotnetanalyser.png)

Sævar gikk igjennom stegene man bør gjøre når man skal oppgradere eksisterende .NET Framework løsninger til .NET Core. Han gikk igjennom argumenter man kan bruke for overbevise kunde om å oppgradere, og noen argumenter som gjør at en oppgradering kan bli vanskeligere (f.eks. bruk av WCF). Så gikk han gjennom oppgradering steg for steg, f.eks. å oppgradere til siste .NET Framework versjon. Til slutt nevnte han [.NET Upgrade Assistant](https://dotnet.microsoft.com/platform/upgrade-assistant/) som nylig har blitt sluppet, og kan hjelpe til med oppgraderingen.

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20210520/content/dotnetupgrade.pdf)
