# Fagkveld 15.01.2021

Nytt år, nye fagkvelder! Årets fagkvelder starter digitalt, som vi har blitt vant med. På første fagkveld skal Lars Alexander fortelle om hvordan man enkelt kan sette opp en blogg med Nuxt, og så har vi fått inn Tore Myklebust (selvstendig utvikler) til å demoe Blazor!

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

Når dette er gjort kan man kjøre opp løsningen (yarn dev) og gå til routen med navn lik filen som man la i Content-mappen.

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

Disse metadataene blir tilgjengelig, når man laster inn dataene med fetch():

```
const bloggpostData = await $content("", params.slug).fetch();

console.log(bloggpostData.author)
```

### Drift

Videre viste Lars Alexander hvordan man kan drifte Nuxt-løsningen i Azure Static Webpage. Som foreløpig er helt gratis, og støtter eget domene. Static Webpage settes opp slik:

![AzureStaticWebpage](https://github.com/novanet/fagkvelder/blob/master/docs/20210115/content/staticwebpage.png)

Det genereres da en YAML for Github Actions som bygger og releases til Azure Static Webpage når man sjekker inn kode.

Videre viste Lars Alexander hvordan man konfigurerer DNS-innstillinger for nettesiden hos en domeneleverandør, og hvordan man må gjøre en ["work around"](https://burkeholland.github.io/posts/static-app-root-domain/) ved å bruke Cloudflare for å støtte adresse uten www foran (novanet.no i stedet for www.novanet.no).

# About this blog

When I decided to create a blog, I wanted to make it really simple to write and publish a new post and to make it as low-cost as possible.

## Intro til Blazor

![Nuxt](https://github.com/novanet/fagkvelder/blob/master/docs/20210115/content/fagkveld1.png)
