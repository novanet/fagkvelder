# Meetup om automatisering av infrastruktur og deployment til Azure

Novanet jobber mye med skyløsninger, og da ofte med Azure. I tillegg ser vi at systemene vi utvikler deles opp i stadig mindre komponenter. Når man har masse kompoenter som skal ut i flere miljøer i skyen, må man få på plass automatisering av dette. Å klikke i Azure portalen skalerer dårlig. På denne meetupen hadde vi 5 presentasjoner som alle omhandler hvordan man kan automatisere oppsett av infrastruktur og deployments for løsninger i Azure, og hvordan man kan overvåke disse.

![Meetup](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/meetup.jpg)

[Lenke til innhold](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/)

## Terraform

![Sergey](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/sergey.jpg)

Terraform er "Infrastructure-as-code" (IoC) løsning. Det vil si at man koder/skripter ressurser som skal settes opp i skyen. Sergey fortalte om IoC og hvordan Terraform fungerer.

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/terrraform.pdf)

## Azure CLI

![Johan](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/johan.jpg)

Azure CLI er et kommandolinjespråk som kan brukes til å opprette ressurser i Azure. Johan fortale hvordan dette fungerer i praksis og hvorfor han har blitt så glad i denne løsningen.

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/AzureCLIandme.pdf)

## Azure Managment API

![Olav](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/olav.jpg)

Azure tilby også et REST API for å opprettet ressuser. Både Terraform og Azure CLI benytter dette i bakgrunnen. Olav fortalte oss om hvordan man får tilgang til dette, og hvordan man oppretter ressurser.

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/Azurerestapipresentation.pdf)

## Azure Devops Multistage Deployments

![Kristian](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/kristian.jpg)

I Azure Devops har man mulighet til å kompilere kode og release løsningen rett til Azure. Dette har har man måtte sette opp manuelt gjennom et grensesnitt i Azure-portalen. Men nå har det kommet mulighet til å "skripte" dette i YAML-filer. Kristian viste oss hvordan man kan sette opp både bygg og deploy i YAML. 

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/multistage.pdf)

## Tracing med Open Tracing og Jaeger

![NilsGeorg](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/nils.jpg)

Når man har fått tjenestene opp i Azure, er det viktig å overvåke dette. Dette kan man gjøre med vanlig logging til f.eks. Azure App Insights. Men for å få oversikt over hvordan en forespørsel flyter mellom alle tjenestene man har satt opp, kan man ta i bruk Open Tracing. Nils Georg fortalte oss hvordan man kan spore en forespørsel helt fra brukeren trykker på en knapp, via en eller fler tjenester og helt ned til hvilken spørring som gjøres mot databasen.

[Lenke til presentasjonen](https://github.com/novanet/fagkvelder/blob/master/docs/20190906/content/OpenTracing.pdf)

