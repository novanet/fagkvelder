# AAD Pod Identity og CosmosDB for free 

Ny heldigital fagkveld med Olav og Johan som snakket om AAD Pod Identity og gratisversjonen av CosmosDB.

![Fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20200415/content/fagkveld150420.jpg)

## AAD Pod Identity

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/tree/master/docs/20200415/content/AADPodIdentity.pdf)

Olav fortalte om hvordan man kan sørge for at pods i et Azure Kubernetes Service cluster kan bli autentisert ved hjelp av en Managed Identity. For å få tilgang til f.eks. Azure Key Vault. Dette krever at både en Managed Identity Controller og Node Managed Identity installeres i clusteret, samt at pods som skal bruke Managed Identity får samme label.

## Azure CosmosDB for free

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/tree/master/docs/20200415/content/CosmosDB4Free.pdf)

Johan fortalte om den nye gratis varianten av CosmosDB. Et problem med CosmosDB er at selv ved svært begrenset bruk blir det høye kostnader. Nå får man 400 RUs i sekunded og 5G GB lagring gratis. En RU (Request Unit) kombinerer memory, CPU og IOPS bruk for å beregne kostnader ved bruk av CosmosDB. Den største fordelen med CosmosDB er at den er svært rask med lav latency, men det er viktig å skrive query'ene riktig ellers kan kostnad eller RU-bruken øke veldig raskt.

Videre viste Johan hvordan man kan bruke Jupyter Notebook til å kombinere tekst og C# kode (spørringer mot CosmosDb) som er eksekverbar i dokumentet.
