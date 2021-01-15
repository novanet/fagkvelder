# Fagkveld 15.01.2021

Nytt år, nye fagkvelder! Årets fagkvelder starter digitalt, som vi har blitt vant med. På første fagkveld skal Lars Alexander fortelle om hvordan man enkelt kan sette opp en blogg med Nuxt, og så har vi fått inn Tore Myklebust (selvstendig utvikler) til å demoe Blazor! Vi avsluttet kvelden med Geoguesser!

![Fagkveld](https://github.com/novanet/fagkvelder/blob/master/docs/20210115/content/fagkveld3.png)

## Blogg med Nuxt

![Nuxt](https://github.com/novanet/fagkvelder/blob/master/docs/20210115/content/fagkveld4.png)

Lars Alexander gav en liten intro til Nuxt. Nuxt er bygget på Vue, og man kan utvikle komponenter slik som i Vue og bruke Vue syntaks når man kjører Nuxt. Nuxt er i sitt ess når man trenger Server Side Rendring eller Static Site Generation. Dvs. at sidene på en nettside bygges opp på serveren før de leveres til brukeren. Dette gir bedre performance på sidene og er fordelaktig ifft. SEO (søkemotoroptimalisering).

### Getting started

Å komme i gang med Nuxt er enkelt:

```
yarn create nuxt-app <project-name>
```

Så kan man starte løsningen:

```
yarn dev
```

Nuxt er modulært, som vil si at man kan legge til moduler for å utvide funksjonaliteten til Nuxt. En av disse er Content-modulen, som gjør det svært enkelt å begynne å skrive en blogg. Content-modulen hevder å være en "Git-based Headless CMS".

Man legger inn modulen:

```
yarn add @nuxt/content
```

Og registerer denne i filen nuxt.config.json:

```
  // Modules (https://go.nuxtjs.dev/config-modules)
  modules: [
    // https://go.nuxtjs.dev/bootstrap
    "bootstrap-vue/nuxt",
    "@nuxt/content"
  ],

```

Så oppretter man en Content-mappe på root i løsningen. I denne kan man legge til Markdown-filer, hvor man kan skrive [Markdown-syntaks](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) for å skrive en bloggpost. Hver av disse filene vil få sin egen route og bli en egen side på nettsiden.

Markdown-filen kan regnes som data'ene til side. Dataene må lastes til på en egen side, denne opprettes under Pages-mappen og kalles \_slug.vue. I denne kan man legge:

```
<template>
  <article>
    <nuxt-content :document="bloggpostData" />
  </article>
</template>

<script>
export default {
  async asyncData({ $content, params }) {
    const bloggpostData = await $content("", params.slug).fetch();

    return { bloggpostData };
  }
};
</script>

```

Her ser man en funksjon som heter asyncData. Denne brukes til å laste data til siden, før den serveres til brukeren (“Blocks route navigation until it is resolved”). Over ser man at den bruker Content-modulens fetch-funksjon til å hente dataene som ligger i filen med navn som tilsvarer slug-parameteret, som sendes inn via routen (dvs. på https://blog.novanet.no/min-bloggpost, så er min-bloggpost slug'en). Dataene sendes til "nuxt-content"-komponenten til Content-modulen, som viser/"rendrer" dataene på siden

Når dette er gjort kan man kjøre opp løsningen (yarn dev) og gå til routen med navn lik filen som man la i Content-mappen. Da vil man se siden med det man har skrevet i Markdown-filene. Wow!

En fin feature i Content-modulen er at Markdown-filene kan inneholde metadata, dette gjøres slik:

```
---
title: Blogg med Nuxt
author: Lars Jakobsen
createdAt: 2021-01-15 20:00
---

# Blogg med Nuxt

Her er en bloggpost om Nuxt
```

Disse metadataene blir tilgjengelig når man laster inn dataene med fetch(), og kan brukes f.eks. når man skal bygge en forside med liste over bloggpostene (pages/index.vue):

```
<template>
  <div class="container">
    <div>
      <Logo />
      <h1 class="title">
        nuxt-demo
      </h1>
    </div>
    <div v-if="content">
      <div v-for="post in contentArray" v-bind:key="post.slug">
        <NuxtLink :to="post.slug">{{ post.title }}</NuxtLink>
        <span>{{ post.author }}</span>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  async asyncData({ $content, params }) {
    var contentArray = await $content("").fetch();
    return { contentArray };
  }
};
</script>
```

### Drift

Videre viste Lars Alexander hvordan man kan drifte Nuxt-løsningen i Azure Static Webpage. Som foreløpig er helt gratis, og støtter eget domene. Static Webpage settes opp slik:

![AzureStaticWebpage](https://github.com/novanet/fagkvelder/blob/master/docs/20210115/content/staticwebpage.png)

Det genereres da en YAML for Github Actions som bygger og releases til Azure Static Webpage når man sjekker inn kode.

Videre viste Lars Alexander hvordan man konfigurerer DNS-innstillinger for nettsiden hos en domeneleverandør, og hvordan man må gjøre en ["work around"](https://burkeholland.github.io/posts/static-app-root-domain/) ved å bruke Cloudflare for å støtte adresse uten www foran (cloudwith.net i stedet for www.cloudwith.net).

## Intro til Blazor

![Blazor](https://github.com/novanet/fagkvelder/blob/master/docs/20210115/content/fagkveld1.png)

På denne fagkvelden var vi så heldige å få [Tore Myklebust](https://www.linkedin.com/in/tore-myklebust-10975726/) på besøk. Han er en selvstendig konsulent, som vi samarbeider med i et av prosjektene. Tore har brukt Blazor i noen av sine prosjekter og gav oss en intro til Blazor, i tillegg til å fortelle litt om erfaring fra prosjektene.

Tore fortalte og viste oss at det er en del oppsett (som del av et .NET Core WebAPI) som må på plass før man får Blazor til å kjøre. Så viste han oss hvordan man lager en side som viser en liste med personer, som ble hentet fra en SQL Database, og laget en side for å opprette personer.

Tore viste oss og skrøt av komponentbiblioteket [MudBlazor](https://mudblazor.com/), og fortalte litt om hvordan Blazor fungerer teknisk. F.eks. at det opprettes en connection mot servern for webapplikasjonen som holdes gjennom applikasjonens levetid, og at det brukes websockets og SignalR for å kommunisere mellom klient og server.

Tores erfaring med Blazor, er at det gjør det veldig raskt å utvikle funksjonalitet, da man har færre komponenter å forholde seg til (f.eks. at man ikke trenger både API og frontend). Han synes også at det har fungert godt med Blazor i de prosjektene som er produksjonsatt.
