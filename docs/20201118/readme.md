# Identity Providers

I mange av våre prosjekter brukes Identity Server som Identity Provider. En av de viktigste grunnene til dette har vært at Identity Server er gratis og Open Source. Det blir det en endring på nå, da utviklerne av Identity Server oppretter et nytt selskap, Duende, og vil kreve lisens for bruk av fremtidige utgaver av Identity Server. I den forbindelse satt vi opp en fagkveld for å gjennomgå alternativer for autentisere brukere hos en kunde.

For hver av disse så vi på :

- Hvem som står bak
- Støttede protokoller
- Andre integrasjoner
- Gjennomgang av brukergrensesnitt
- Hvordan konfigurerer man en klient
- Hvordan konfigurerer man et API
- Prising
- Fordeler / ulemper / erfaringer

## Identity Server

## Auth0

## Okta

Okta er et børsnotert selskap fra San Francisco, som ble startet i 2009. De har 8950 betalende kunder på verdensbasis med mange store kunder som Fedex, HP og T-Mobile. Okta kom best ut i Gartner sin vurdering av Identity Providers ("Magic Quadrant")

Okta støtter alle de vanlige protokollene som OAuth og SAML.

En av Oktas sterkeste kort er alle integrasjonene de støtter mot tredjeparts applikasjoner, som gjør at man kan få Single Signon mot disse.

Okta har et avansert, men oversiktlig brukergrensesnitt. Samt god dokumentasjon for både API'et deres og hvordan man tar i bruk Okta i diverse klienter.

Okta oppleves som relativt dyrt, med minium 2$ for hver aktive bruker.

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/content/Okta.pdf)

## ASP.NET Identity + Openiddict

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/content/ASPIdentityOpeniddict.pdf)

## Azure AD B2C

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20201118/content/AzureADB2C.pdf)
