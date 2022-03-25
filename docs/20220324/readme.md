# Fagkveld 24.03.2022

Nok en fagkveld fysisk på kontoret. Fler og fler møter opp fysisk, mens de som vil fortsatt kan være med på videostrøm.

![Fagkveld på kontoret](https://github.com/novanet/fagkvelder/blob/master/docs/20220324/content/kontoret.jpg)

## AWS og Terraform

[Leif](https://novanet.no/menneskene/leif-larsen) fortalte om et prosjekt hos en kunde hvor de bruker AWS. I Novanet er det fleste prosjektene på Azure, men vi har noen på AWS, så da var det fint at Leif kunne dele litt erfaringer. Til å sette opp AWS ressurser i prosjektet blir [Terraform](https://www.terraform.io/) brukt, og det var i hovedsak dette Leif gikk igjennom.

Han viste oss tjenester som tilsvarer de tjenestene vi er kjent med fra Azure, og fortalte om forskjeller fra Azure. Følelsen er vel at man får mer konfigurert og satt opp automatisk i Azure enn AWS. F.eks. for en App Service får man HTTPS, en public URL og FTP-tilgang uten å måtte gjøre noe. Disse tingene krever egen konfigurasjon i Terraform for AWS. Dette gir større fleksibiltet, men krever litt mer arbeid, og ha sannsynligvis med "zero trust" å gjøre. Dvs. at AWS i utgangspunktet stenger det meste for tilgang utenfra, så må man spesifikt åpne det man trenger.

Hvis du trenger hjelp med AWS eller Terraform, ta gjerne [kontakt](mailto:cto@novanet.no) :)

### Polly og Simmy

[Hans Arne](https://novanet.no/menneskene/hans-arne-vartdal) fortalte først om [Polly](https://github.com/App-vNext/Polly), som er et .NET-rammeverk for "resilience and transient-fault-handling". Dvs. at du kan legge inn funksjonalitet i koden som gjør den mer robust når eksterne avhengigheter (som et API fra en 3. part) går ned eller svarer tregt. "Startsiden" til RiksTV har tv-programmer, filmer, anbefalinger, programmer man har sett tidligere, programmer man ønsker å fortsette på osv. Hans Arne vist hvordan de har brukt Polly for å kunne levere en begrenset utgave av "startsiden", selv om noen av tjenestene den avhenger av går ned eller svarer tregt.

RiksTV bruker følgende funksjonalitet i Polly:

- Circuit breakers: Stopper tilgang ved mange feil
- Timeout: Setter grense for hvor lenge man skal vente på en tjeneste
- Retry: Gjør at koden venter litt før den gjør et nytt forsøk

Videre fortalte Hans Arne om Simmy, et .NET-rammeverk for "chaos engineering and fault injection". Dvs. at man kan konfigurere at Simmy skal tigge feil i systemet. Man kan "wrappe" et metodekall med Simmy med en såkalt "monkey policy" og gjør at f.eks. kallet innimellom ikke svarer eller går tregt. I RiksTV er ligger dette i kode, også i produksjon, men de bruker "feature toggeling" (med LaunchDarkly) for å slå "monkey policy"'ene av og på. Ved å slå på Simmy kan man teste at Polly policy'ene fungerer og håndtere feil og treghet slik man forventer.

Ta gjerne [kontakt](mailto:cto@novanet.no) hvis du vil komme igang med med Poly eller Simmy!

### Counterstrike

Etter fagkveld gikk turen videre til House of Nerds, hvor vi spilte Counterstrike. Grattis til Sævar som eide oss andre...

![Counterstrike spilling](https://github.com/novanet/fagkvelder/blob/master/docs/20220324/content/houseofnerds.jpg)