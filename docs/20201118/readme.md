# Identity Providers

I mange av våre prosjekter brukes Identity Server som Identity Provider. En av de viktigste grunnene til dette har vært at Identity Server er gratis og Open Source. Det blir det en endring på nå da utviklerne av Identity Server oppretter et nytt selskap, Duende, og vil kreve lisens for bruk av fremtidige utgaver av Identity Server. I den forbindelse satt vi opp en fagkveld for å gjennomgå alternativer for autentisere brukere hos en kunde.

For hver av disse så vi på :

- Hvem som står bak
- Støttede protokoller
- Andre integrasjoner
- Gjennomgang av brukergrensesnitt
- Hvordan konfigurerer man en klient
- Hvordan konfigurerer man et API
- Prising
- Fordeler / ulemper / erfaringer

![Fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/content/Presentasjon.png)

## Identity Server

Identity Server leveres i dag av Dominic Baier og Brook Allen som Open Source. Men blir en betalt løsning levert av Duende.

Støtter protokollene OAuth og OpenID Connect.

Identity Server er bare noen Nuget-pakker som du legger inn i en .NET-løsning. Resten gjør du selv. F.eks. må du lage brukergrensesnitt og bruker-database for håndtering av brukere og klienter selv. Til gjengjeld så får du full kontroll og mulighet til tilpassninger, men også ansvar for at løsningen blir satt opp riktig og sikkert.

I og med at man har tilgang til kildekoden, kan man gjøre de integrasjonene man ønsker selv.

Identity Server er gratis nå, men bli betalt fra neste versjon. De tar i hovedsak betalt basert på antall klienter, og man ender fort opp på Enterprise avtalen deres til $12000 i året (mer enn 15 klienter).

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/Content/IdentityServer.pdf)

## Auth0

Auth0 er et selskap startet i 2013 med kontorer rundt om i verden. De har kunder som Siemens, O'Reilly og Riks TV, og har totalt over 9000 betalende kunder.

Støtter alle de vanligste protokellene, som OAuth, OpenID Connect og SAML.

Auth0 intergrerer mot alle "Social IDs" samt f.eks. LDAP, ADFS, Google G Suite, Azure AD osv. I tillegg har de støtte for f.eks. norsk BankID.

Auth0 har et svært godt brukergrensesnitt, og har svært god dokumentasjon på alt som gjelder Auth0, men også på Identity generellt.

Auth0 tilbyr en gratis avtale som gir 7000 aktive brukere gratis. Dette dekker veldig mange scenario. Utover det har de dynamisk prising som kan testes på nettsidene deres. Kommer man over $1500 i måneden så må man ta kontakt med selger, og det blir raskt dyrt. Spesielt machine-to-machine autentisering oppleves som dyrt (hos RiksTV).

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/Content/Auth0.pdf)

## Okta

Okta er et børsnotert selskap fra San Francisco, som ble startet i 2009. De har 8950 betalende kunder på verdensbasis med mange store kunder som Fedex, HP og T-Mobile. Okta kom best ut i Gartner sin vurdering av Identity Providers ("Magic Quadrant")

Okta støtter alle de vanlige protokollene som OAuth, OpenID Connect og SAML.

En av Oktas sterkeste kort er alle integrasjonene (6500 stk.) de støtter mot tredjeparts applikasjoner, som gjør at man kan få Single Signon mot disse.

Okta har et avansert, men oversiktlig brukergrensesnitt. Samt god dokumentasjon for både API'et deres og hvordan man tar i bruk Okta i diverse klienter.

Okta oppleves som relativt dyrt, med minium 2$ for hver aktive bruker.

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/Content/Okta.pdf)

## ASP.NET Identity + OpenIddict

Det er ikke alle prosjekter som krever en avansert Identity Provider. I noen prosjekter trenger man bare enkel beskyttelse av nettsider og API'er. Ved å benytte ASP.NET Identity og OpenIddict kan man oppnå dette.

ASP.NET Identity er en del av ASP.NET Core fra Microsoft. OpenIddict leveres av Kevin Chalet (samt noen contributors til Github-repoet hans).

OpenIddict støtter OpenID Connect (OAuth), og støtter flere "Social IDs" (Facebook, Google osv.).

ASP.NET Identity gir deg et enkelt brukergrensesnitt for å administrere brukere.

ASP.NET Identity og OpenIddict er gratis!

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/Content/ASPIdentityOpeniddict.pdf)

## Azure AD B2C

Azure AD B2C leveres av Microsoft som en del av Azure.

Alle de vanligste protokollene er støttet, og Azure B2C har ferdige integrasjoner for pålogging med de fleste "Social IDs" (dvs. Facebook, Google, Apple ID osv.).

Azure AD B2C bruker samme brukergrensesnitt for håndtering av brukere og klienter som Azure AD. Dette oppleves som godt, og er kjent for mange fra før for håndtering av interne brukere og klienter.

50 000 aktive brukere gratis! Dette gjør det til et svært godt alternativ. Utover de 50 000 koster det $0.00325 per aktive bruker, som også er en god pris.

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/Content/AzureADB2C.pdf)

# Codenames

Vi avsluttet fagkvelden med nok et onlinespill. Denne gangen testet vi Codenames. 

![Fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/content/Sosialt.png)
