<template>
    <div>
      <ClientOnly>
        <header>
          <Header />
        </header>
        <main>
          <NuxtPage />
        </main>
        <footer>
          <Footer />
        </footer>
      </ClientOnly>
    </div>
</template>
  
<script>
  import { NuxtPage } from '#components';
import Header from '../components/Header.vue'
</script>
  
<style scoped lang="scss">
  @use "@/styles/_variables.scss" as *;

  main {
    padding-top: $header-height;
    padding-bottom: $footer-height;
    min-height: 100vh; /* ocupa toda la pantalla */
    box-sizing: border-box;
    overflow-y: auto;
  }

  .page {
    min-height: calc(100vh - ($header-height + $footer-height)); /* resta header + footer */
  }
</style>