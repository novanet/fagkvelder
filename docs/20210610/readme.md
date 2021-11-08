# Fagkveld 10.06.2021

Siste fagkveld for sommern! Med storfint besøk fra Finn.no.

## Microfrontends

![Microfrontends](https://github.com/novanet/fagkvelder/blob/master/docs/20210610/content/microfrontend.png)

Tryve Lie fra Finn.no fortalte om microfrontends. Vi har tidligere hørt mye om å dele opp tjenestene våre i mindre deler, microservices. Mange av de samme prinsippene gjelder for frontends. Microfrontends muligjør at hvert team jobber uavhengig med sin del av frontenden, og kan deploye denne uten at hele frontenden må deployes samtidig.

![Microfrontends](https://github.com/novanet/fagkvelder/blob/master/docs/20210610/content/microservices.png)

Videre fortalte Trygve om to rammeverk som er utviklet og i bruk hos Finn.no for å ta i bruk microfrontends.

### Podium

https://podium-lib.io/

Rammeverk for å utvikle en nettside basert på microsfrontends. Gjør det mulig å utvikle en "Podlet", som er en selvstending tjeneste som leverer HTML (inkludert Javascript ved behov). "Podlets" settes sammen ved hjelp av en annen del av rammeverket, "Layouts". "Layouts" setter sammen flere "Podlets" til en nettside. Begge er basert på Node.js og Express.

![Pageparts](https://github.com/novanet/fagkvelder/blob/master/docs/20210610/content/pageparts.png)

### Eik

https://eik.dev/

Sørger for at en nettside (gjerne en som bruker Prodium) ikke laster ned flere versjoner av samme pakke.
