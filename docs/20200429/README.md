# AKS Keyvault Flexvol integrasjon og Kahoot

Enda en heldigital fagkveld med Olav som snakker om AKS Keyvault Flexvol integrasjon og Kahoot i etterkant

![Fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20200429/content/IMG_7832.jpg)

## AKS Keyvault Flexvol integrasjon

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/tree/master/docs/20200429/content/KeyvaultFlexvol.pdf)

Olav fulgte opp siste fagkvelds presentasjon om AAD Pod Idenity med å snakke om Azure Kubernetes Service FlexVolume. FlexVol gjør det mulig å hente konfigurasjon i Kubernetes uten å knytte seg til en spesifikk skyleverandør. F.eks. hvis man bruke Azure Keyvault må man bruke egne Azure Keyvault biblioteker i koden man skriver, dvs. Microsoft.Extensions.Configuration.AzureKeyVault. Hvis man vil bytte til fra Kubernetes i Azure til Kubernetes i AWS, må man skrive om koden.

FlexVol løser dette ved å legge konfigurasjonen i filsystemet i en Pod i Kubernetes. FlexVol har en driver for Azure Keyvault ([kubernetes-keyvault-flexvol](https://github.com/Azure/kubernetes-keyvault-flexvol)) som legger hver av verdiene (f.eks. en secret) i hver sin fil på disk i pod'en. Oppsett av dette skjer i YAML-filene for Kubernetes.

For at .NET applikasjonen skal få tilgang til konfigurajonsverdiene bruker man pakken [Microsoft.Extentions.Configuration.KeyPerFile](https://www.nuget.org/packages/Microsoft.Extensions.Configuration.KeyPerFile/). I oppstarten av applikasjonen definerer man at konfigurasjonen ligger i filer og peker på mappen med AddKeyPerFile-metoden.

På denne måten trenger applikasjonen bare å forholde seg til at konfigurasjonen ligger på filsystemet, og ikke hvordan den har havnet der. Hvis man ønsker å hente konfigurasjonen fra et annet sted (enn Azure Keyvault i dette tilfelle), kan man bruke en FlexVol-driver for den nye kilden, og applikasjonen kan fortsette å kjøre uten endringer i koden.

