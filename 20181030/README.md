# Fagkveld 30.10.2018

[Lenke til innhold](https://github.com/novanet/fagkvelder/tree/master/20181030/content)

![Vue.js](https://github.com/novanet/fagkvelder/blob/master/20181030/content/vue.png)

<i>Notatene er hentet fra slidene til Anders</i>

Vue.js er et progressivt rammeverk for å bygge rike web UI. Hvis du har en webside med behov for interaktivitet eller databinding, kan du dra inn Vue og ta i bruk toveis databinding mellom javascript-objekter, gjerne fra en json, og dokumentmodellen på siden.

Det at det omtales som progressivt betyr at kjernen i vue gjør veldig lite, men steg for steg kan du dra inn nye komponenter og utvide bruken av vue i takt med kompleksiteten på websiden du lager og nye behov. Vue skalerer helt opp til store, komplekse single page applications, hvor et eksempel er nintendo.com. Alle de interaktive sidene på nintendo.com, som profilsidene, er laget med Vue som en SPA. Andre store brukere av vue er gitlab og baidu (kinesiske google).

Vue minner litt om knockout.js, og er inspirert av Angular og React, men er bygd på nye features som kom med ecmascript 5. Getters/setters i es5 gir kjernen i det reaktive systemet til Vue og det som gjør det ekstremt effektivt og skalerbart (i forhold til feks Angular 1).

### De vanlige greiene

Vue har alle de elementene du forventer å finne i et MVVM-rammeverk:

- Directives – for å gjøre enkel logikk i viewet
- Bindings – binde datamodell til DOMen
- Events – trigge funksjoner fra DOMen som påvirker datamodellen
  (Til sammen er disse to det som utgjør toveis binding)
- Komponenter til å enkapsulere funksjonalitet i gjenbrukbare komponenter
- Komponent-livssyklus som du kan plugge deg på.

Alt i alt, veldig likt det vi har i andre MVVM-rammeverk.

### Bruk

Vue.js omtales i dag som en av de tre store, sammen med Angular og React. Det har hatt en enorm vekst siden versjon 1.0.
Vue har flere antall stjerner på github sammenlignet med Angular og React.

Stjerner kan være et tegn på at det gjør brukeren glad. Det er nesten som en like eller en tommel opp. Anders bruker Angular til veldig mye bra, men ville nok ikke "like"t det. Anders har liket Vue for det gjør han produktiv og glad.

Veksten fortsetter og økosystemet uvider seg. Men litt historikk...

### Bakgrunn

Siden vi snakker om de tre store, hvem står bak Vue?

- Angular ble laget av Google, med første major release i 2010.
- React spant ut av Facebook sitt behov ifbm newsfeeden på facebook.com og forvaltes i dag av Facebook.

Så hvilket konsern står bak vue.js? Han her ->

![Bilde av Evan](https://github.com/novanet/fagkvelder/blob/master/20181030/content/evan.png)

#### Evan You

Evan You er født i Kina men flyttet til USA for å gå på college. Han ble headhuntet til Google Chrome Experience for å jobbe med prototyping i Chrome. Chrome hadde ny javascript-engine og Google ønsket å utforske mulighetene som kom med nye versjoner av javascript, html5 og css3 for å pushe grensene til Chrome og overbevise verden om at det var den beste browseren.

Med andre ord: han prototypet morsomme ting og ble betalt for det. Siden han startet nye prosjekter hver uke, trengte han verktøy for å komme raskt i gang. Teamet brukte Angular JS, men han synes det ble for voldsomt, det var mange nye paradigmer og konsepter å lære, og i de fleste tilfellene trengte han bare enkel data binding og interaktivtet. Mange på teamet hans var først og fremst designere, ikke utviklere, og synes Angular ble for tungt.
Han lagde derfor sitt eget lite binding-bibliotek og brukte det internt.

Han byttet etter hvert jobb til Meteor, som er et applikasjons-rammeverk som ikke er så kjent, men fortsatte å videreutvikle det enkle binding-biblioteket sitt.

Etter hvert bestemte han seg for å release det public, men så at arbeidstittelen «seed» var ugunstig siden navnet var opptatt på npm og bower. Siden verktøyet hans først og fremst omhandlet viewet i klassisk MVC, tenkte han View var et bra navn. Det var selvfølgelig også opptatt. Han skrev inn View i google translate og scrollet nedover språkene. På fransk ble det Vue, det var ledig på npm og dermed ble Vue.js navnet.

Først public release ble gjort i 2014 og det finnes en fin bloggpost som går gjennom hva som skjedde dag for dag etter release. Største sjokket var nok å havne på forsiden på Hackernews og få nesten BARE gode tilbakemeldinger.

### Kjerneverdier

Self om Evan You er diktator på Vue, har han formulert noen kjerneverdier for videre utvikling av vue:

- Alle commits skal ha 100% testdekning.
- Ingen utvidelser blir lagt til vue core om de er med på å gjøre adopsjon av rammeverket vanskeligere.
- Kjernebiblioteket i Vue skal alltid være selvstendig, uanvhengig, lite og raskt.
- Dokumentasjon prioriteres og skal ikke være en ettertanke.
- Økosystemet skal være inkluderende og vennlig.

Friske tanker fra en diktator. Man ser at flere av støttebibliotekene har adoptert Evan Vue sine prinsipper.

### Finansiering

Siden høst 2016 er han fullfinansiert av fans og sponsorer via Patrion og jobber med Vue på heltid. $16161 i måneden blir ca 1,6 mill i året – og det vokser hele tiden.

Han publiserte nettopp roadmap for Vue 3.0 som ser veldig lovende ut.
Økosystemet vokser, etter hvert som deler av økosystemet blir modent og tatt i bruk, adopteres det og blir offisielle deler av Vue-organisasjonen.

### Økosystem

Her vises biblioteker som er skrevet av økosystemet med adoptert til å bli offisielle vue.js-biblioteker.

- Vue-router er rutingmekanisme for å tilby navigering mellom sider (bygge en single-page application).
- VUEX er implementasjon av redux-pattern for å få global state.
- VUE-cli er kommandolinje-interfacet som jeg skal vise senere.
- Vue-loader er det som muliggjør vue-komponenter og kompilering av disse.
- Vue-server-rendererer legger til støtte for server-side rendering for å gjøre sider raskere og mer søkemotor-vennlige.
- Vue-class-component legger til støtte for typescript. En digresjon er at fra og med versjon 3.0 vil vue i seg selv også være skrevet i typescript.
- Vue-rx om du foretrekker observables fremfor promises og async/await-pattern. Implementasjon av reactive-patternet.
- Vue-devtools, en vanvittig bra chrome-plugin som gjør det enkelt å jobbe med state og komponenter.

## Demo

- Startet Liveserver-extension i Code for å få hotreloding
- La til vue.js fra et CDN i en script-tag
- La til script-tag og satt lang-property til javascript
- Opprettet en instans av Vue
  - new Vue( e1: #app, data: { heading: "test" })
- Må ha en f.eks. div (med id=app) i DOM, hvor appen kan injectes
- Viste at man kan legge Vue instansen i en variabel, og bruke variabel i devtools, f.eks. å vise eller endre datamodellen

![Bilde av brettspill](https://github.com/novanet/fagkvelder/blob/master/20181030/content/working.png)

## Oppgave

[Lenke til cheat sheet](https://github.com/novanet/fagkvelder/blob/master/20181030/content/Vue-Essentials-Cheat-Sheet.pdf)

Alle deltok på en oppgave som Anders hadde laget:

```HTML
<!DOCTYPE html>
<html>
<body>
    <div id="app">
        <h1>{{heading}}</h1>
        <ul style="list-style: none">
            <li>
                Et dyr
            </li>
        </ul>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.17/vue.js"></script>
    <script>
        new Vue({
            el: '#app',
            data: {
                heading: 'Dyrehage',
                animals: ['Alpakka', 'Giraff', 'Dovendyr', 'Elg']
            }
        });
    </script>
</body>
</html>
```

Med utgangspunkt i index.html over:

- Vis alle dyr i listen
  - Ta i bruk v-for
- Vis nummerering foran hvert dyr i listen
  - bruke index fra v-for
- Skriv ut hvilket dyr som ble klikket på
  - Bruk av v-on:click evt. @click
- Skrive inn og legg til nytt dyr i listen
  - Bruk av v-model og en funksjon som må ligge på methods-elementet på Vue-instansen
- Vis sum av antall dyr
  - {[animals.length}} er en løsning, men bruk av computed med caching er bedre
- Vis enda en liste, men kun med de dyrene som har mer enn 5 bokstaver. Sortert alfabetisk.
  - bruk av en funksjon under 'computed'-elementet på Vue-instansen.

##### Computed

Cacher resultatet av funksjon frem til state endrer seg. Kjører en gang, selv ved mange kall. Gir god performance.

### Komponenter (.vue)

Et naturlig steg videre når man trenger separation of concerns og gjenbrukbarhet. For mer komplekse prosjekter / SPAs.

- Krever byggesteg
- Støtter flere template engines
- Component-scoped CSS

Langt mer komplekst, men veldig mye abstraheres bort i CLI-verktøyet.

- Må ha < template > tag
- Kan ha < script > tag
- Kan ha < style > tag
- < style scoped > -> scoped til komponenten

Det er mulig å dele i 3 filer, men best practise å holde det i én fil. Hvis filen er for stor må man dele opp i flere komponenter.

### VUE CLI & UI

Verktøy for å sette opp baseline til nytt prosjekt. Når man begynner å tenke på å bruke komponenter, bør man ta i bruk Vue CLI. Gir en rekke valg av blant annet Webpack, Babel, Typescript, Linting, CSS-preprocessors, Routing.

`npm install -g @vue/cli`

`vue create myproject`

`npm run serve`

Mapper:

- public: filer som skal i distribusjons-mappen, f.eks. index.html
- src: applikasjonen, kode
  - main.js: importerer vue, lag instans, render app, i #app
  - app.vue: start komponent

##### Axios

[Axios](https://github.com/axios/axios) brukes ofte som Http-klient

### Fri oppgave

Lage en Vue-applikasjon basert på en del artige API'er som Anders hadde funnet (se slide)
