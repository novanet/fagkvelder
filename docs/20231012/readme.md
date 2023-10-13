# Bicep i prosjekt, Microsoft Partner og AI-verktøy

Denne fagkvelden hadde mange innlegg med et bredt spekter av tema :)

## Microsoft Partner

Jan fortalte om endringene i Microsofts partnerprogram og kravene for å bli Microsoft Solutions Partner. Novanet har alltid vært Microsoft Gold Partner og ønsker å forsette å være Microsoft partner, også med det nye programmet. Det er spesifikt Solution Partner for Digital and App Innovation som vi ønsker å bli i første omgang.

For å bli dette kreves det nå at man samle 70 poeng innenfor 3 kategorier:

#### Performance

I denne kategorien kreves det at man blir tilknyttet ansvaret for flere Azure Subscriptions som benytter Azure-tjenester for mer enn 1000$. I praksis må man gå inn på et Azure Subscription (med riktige rettigheter) og legge inn sin PartnerId på Subscription.

#### Skilling

Her kreves det flere sertifiseringer for å samle poeng. Blant annet må flere ta:

- Microsoft Certified: Azure Administrator Associate
- Microsoft Certified: Azure Developer Associate
- Microsoft Certified: Azure Solutions Architect Expert

#### Customer Success

Denne kategorien ser på om økt bruk i de Azure subscriptions man har ansvar for.

Målet er å bli Microsoft Solutions Partner ila. neste år.

## Bicep i kundeprosjekt

Vi har tidligere hatt innlegg om Bicep på fagkveld. Denne gangen gikk Leif igjennom litt mer omfattende praktisk bruk av Bicep.

Han gikk igjennom hvorfor de hadde valgt Bicep fremfor andre verktøy hos kunden og litt om utfordringer de ha hatt med Bicep.

Så demonstrerte han hvordan Bicep var satt opp hos kunden. De hadde mange ferdige Bicep-moduler for enkelte Azure-tjenester som f.eks. App Service og Functions Apps. Så hadde de andre moduler som kombinerer flere av disse modulene for å sette opp f.eks. en ny tjeneste (App Service + App Insights + Keyvault osv).

Modulene deles via Azure Container Registry, slik at de blir tilgjenglig på tvers av team og prosjekter.

## AI-verktøy for utviklere

Hans Arne har gjort research på forskjellige AI-verktøy for utviklere, og blant annet sett på lisensiering, hvordan de lagrer data og hvordan de fungerer i praksis. Dette for å lage en anbefaling og noen regler for bruk av disse verktøyene for Novanets konsulenter.

Noen viktige punkter var:

- Bruk av AI-verktøy må avtales med kunden
- Sørg for å sette riktige innstillinger slik at AI-verktøyet ikke kan benytte din/kundens kode til produktforbedringer
- De fleste kundene våre stoler på Microsoft til å lagre kildekoden deres (Azure Devops eller Github) og kan derfor være mer mottagelige til å bruke Microsofts AI-verktøy (som Github Copilot) mot kildekoden deres

Videre gav Hans Arne oss en del tips og triks ved bruk av AI-verktøy for utviklere.
