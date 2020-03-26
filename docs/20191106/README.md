# Kubernetes og Pulumi
Fagkveld 6. november 2019

## Olav - kubernetes hos Thon

Hvilke deler brukes hos Thon.

Teminologi: cluster inneholder noder (må ha minst 3)

AKS = Azure sitt Kubernetes opplegg.
Kjøp store VM'er da AKS spiser mye.

Ingress står foran Service når trafikk kommer inn utenifra.
En service er en slags lastbalanserer/round robin foran pod'ene.
Pod er prosesser. 

Management API, CRUD operasjoner mot en konfigurasjonsdatabase.
Get, Describe (mer info), Logs, Apply (idempotent), Create (finnes ikke fra før).

Deployment => (Replikaset) => styrer og oppretter poder.
 
Styrefiler som kjøres med -f (for "file") er typiske: Ingress.yaml, Service.yaml, Deployment.yaml

Olav demonstrerer deploy:
kc apply -f deployment1.yaml

kc get pod olavs-k8s-demo-v1

Bygger et docker image, som er immutable, ved endring av appsettings.json må man igjennom hele ci-pipelinen.
Løses enten vha. konfig-map eller secrets (for hemmelige settings), som igjen lagres i Azure Keyvault.
Secrets lagres inne i kubernetes cluster.

Kan få alle data ut som yaml eller også json, ved bruk av piping inn til verktøyet jq.

Setter opp selectors, som peker på labels for: 
name (navn på tjenesten), component (eks. messaging eller web), part-of (i dette tilfellet, plattformen atlas).

## Alex - pulumi.com 

Infrastructure as code, mest kjent er kanskje Terraform (som bare er YAML).

Pulumi er bare 2 år gammelt.

Støttede språk er Typescript, javascript, python.
Støttede providers er Azure og Amazon. 
Kubernetes er også støttet, er cloud "agnostic" via egne templates for hver cloud-provider/språk-kombinasjon.

Man lager egne klasser, som bearbeides. Siden dette er kode, er det en mulighet for å lage sitt eget agnostiske abstraksjonslag over templates.

cli: "pulumi new" gir template.
pulumi refresh - sjekker endringer.
pulumi destroy - fjerner sky-resurrsser.

"pulumi up" gjør en deploy.
pulumi cli/klienten kommuniserer med pulumi server. 
Man må være pålogget azure cli lokalt, vi *antar* at pulumi generer kommandoer, som din lokale klient faktisk kjører mot skyleverandøren. (I motsetning til om pulumi sin skytjeneste kommuniserer direkte med skyleverandør.) 
