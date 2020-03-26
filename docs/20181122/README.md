# Fagkveld 22.11.2018

[Lenke til innhold](https://github.com/novanet/fagkvelder/tree/master/docs/20181122/content)

![Kubernetes](https://github.com/novanet/fagkvelder/blob/master/20181122/content/kubernetes.png)

## Kubernetes hos RiksTV

[Presentasjon](https://github.com/novanet/fagkvelder/tree/master/docs/20181122/content/KubernetesOgSaantNovanet.pdf)

Trond Hindenes fra RiksTV sier at de har holdt på med Kubernetes i cirka 1.5 år, og skal fortelle om reisen de har hatt med Kubernetes. De begynte med å ta i bruk containers, men så etterhvert behovet for å få til en robust deployment av disse.

Applikasjoner avhenger av masse ting rundt seg. En container avhenger bare av seg selv. Derfor har containers vært populært lenger, men hvordan tar man det i bruk i stor skala?

Container Schedulers bestemmer hvordan ting skal foregå på tvers av maskiner, sørger for effektiv bruk av ressursene og sørger for at det som skal være oppe er oppe.

RiksTV bruker bare Linux-containere, da de synes Windows-containere er for nytt/umodent, men har veldig tro på Windows-containere. Spesielt når man har utviklere på Windows-maskiner.

### Container 101

Trond demonstrerte hvordan man kan bygge en Docker-container:

- Opprettet nytt .NET Core WebAPI prosjekt
  - La til en Controller som returnerer noe data
- La til en Docker-fil
  - Docker-filer er standard for å bygge en container
  - Brukte en Docker-fil hentet rett fra MS-dokumentasjonen
  - EntryPoint = hva som skal kjøres når den starter opp
- Kjørte `docker build`
  - for å bygge et docker image
  - så at docker cacher en del ting, slik at alle byggsteg ikke kjøres på nytt
- Kjørte `docker run`
  - med -p 5000:5000
  - med -e ASPNETCORE_URLS localhost:5000
  - for å teste docker image
- Kjørte `docker push`
  - for å laste opp docker image til et container registry
  - container registry brukes til å dele containers, kan tenkes på som et npm for containers
  - finnes online (som Docker Hub), men man vil sannsynligvis ha et internt/privat regitry

### Container Scheduling

Hvis du har masse containere, må noe styre hvor de skal kjøre. F.eks. Kubernetes.

En container scheduler kan også:

- Health probing
  - Sjekke om en tjeneste er oppe å kjører
- Service Discovery
  - for å finne/koble seg til andre tjenester i clusteret
  - Ikke lurt å bruke hardkodede IP'er, da IP'ene endrer seg i clusteret
- Routing
  - for å gi tjenester i clusteret en ekstern URL

Et problem man har hatt lenge når man deploye applikasjoner er hvilket nivå av abstraksjon man skal ha fra infrastrukturen. Hvor skal utvikleren slutte å gi faen, når skal operations slutte å gi faen. Kubernetes API har et abstraksjonsnivå som fungerer.

### Constructs

![Kubernetes Architecture picture](https://github.com/novanet/fagkvelder/blob/master/20181122/content/achitecture.png)

API/CLI/UI sender til Master, Master sender ordre til noder

- Container
- Pod (scale unit)
  - Basic unit som man bruker Kuberntes - Flere containere i en pod - En pod har en ip adresse - Containers i en pod kan snakke med hverandre (på localhost)
- Deployment - Beskriver en pod, styrer skalering
- Service - styrer trafikk mot en pod - Hvis man er avhengig av en tjeneste i en annen pod, går man via en service
- Ingress - Regeler som sier at hvis url er sånn, så peker den på en gitt pod

### Interaksjon med Kubernetes

- Kubectl = CLI
- Kubernetes Dashboard
- Mange andre, men alle snakker med Kubernetes API

### Definere pod, deployment, service, ingress

- Defineres i YML (manifest-filer) - Assembler språket til Kubernetes, lav nivå
  - Deklarativt, sier hva man må gjøre for å komme til en state - Snakker med Kubernetes API - Kan gjøres med json
  - Finnes prosjekter som forsøker å gjøre enklere

Trond viste oss et eksempel-prosjekt hvor pod, deployment, service, ingress var definert

[Se kildekode](https://github.com/novanet/fagkvelder/tree/master/docs/20181122/content/kubernetes_novanet)

- \_pod.yml
  - Beskrivelse av en Pod
  - Har alltid apiVersion og kind
  - Har som regel metadata
  - Har Spec med navn og Image som peker på image i registry
  - livenessProbe: health check, må svare ellers startes en ny pod
- \_deployment.yml
- \_service.yml
- \_ingress.yml

Trond brukte Minicube for å kjøre Kubernetes lokalt og teste YML-endringene.

`kubectl apply` for å pushe endringer (i yml-filene) til Kubernetes

`kubectl get pods` for å se hvilke pods som ble deployet

Ved å bytte en URL i YML-filene kunne Trond kunne Trond raskt deploye samme containere og konfigurasjons (av deployment, services, ingress) til RiksTVs Kubernetes instans i stedet for Minikube. API'et ble tilgjengelig på internett.

Trond gjorde en enkel kodeendring, endret versjonsnummer i YML-filene og viste at man kunne bruke `kubectl rollout` for å deploye endringen til eksisterende pods. Uten nedetid.

### Når man skal i produksjon

- Bygg mye logikk inn i Health Probe
- Concurrency - Kan ikke garantere at det bare finnes en instans av applikasjonen - Må bygge applikasjoner som må tåle at noe ikke er tilgjengelig - Eventual consistency
- Resource Scheduling - Kan sette berensninger på f.eks. minnebruk for en tjeneste/applikasjon - Viktig å bruke tid på disse begrensningene
  - Utvikler må vite litt om ressursbruk for sin applikasjon - Jo bedre du kan beskrive, bedre vil det funke - Viktig ved elastisk skalering opp og ned
- Autoscaling - Ligger innebygget å skalere opp hvis CPU bruk overgår en terskel
  - Kan bygge auto scaling på en hvilken som helst metrikk (f.eks. respons tid), men disse må eksponeres av utvikler
- Logging
  - Parse standard out til f.eks. Elasticsearch

### Lært hos RTV

- Kubernetes er en "Platform for å bygge platformer"
  - Viktig å behandle det som det - Må bygge en del ting selv
- Et kluster for hvert miljø, ikke alt i ett - Mye forskjellig som skal testes
- Bruk riktig versjon, ikke bruk "LATEST"
- Ingen liker store YML filer. Abstractions er bra. RTV lager et abstrasksjonslag som genererer YML

### Annet

- Bruker ikke HELM, templating løsning
- Zalando: Har lagt ut hvordan de bruker Kubernetes

## Azure DevOps + Kubernetes

Presentasjon og demo holdt av [Petter Karlsrud fra Novacare](https://www.novacare.no/om-oss/)

![Petter Karlsud i aksjon](https://github.com/novanet/fagkvelder/blob/master/20181122/content/AzureDevopsPetter.jpg)

Petter holdt en kort, praktisk demo av hvordan deploye docker-containere i Azure Devops til Kubernetes i tre steg: **autentisering**, **bygg** og **oppdatering av cluster**. Last ned presentasjon [her](https://docs.google.com/presentation/d/1tuerlc0Qu9O_nmiZ479tzdE3rTOlngKe4rT1Hf5tBnQ/edit?usp=sharing).
