<template>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <div class="header">
    <div class="header-left">
      <div class="headerLogo">
        <img src="../assets/images/logo.png" alt="Logo" />
      </div>
      <div class="welcome">
        <h4>Bienvenid&#64;!</h4>
      </div>
    </div>
    <div class="header_items">
      <div v-for="item in headerItems" :key="item.id">
        <NuxtLink
          :to="`/${item.path}`"
          class="header_item"
          :class="{ 'active-tab': isActive(item) }"
          :style="{ '--item-color': iconColors[item.id] }"
          exact-active-class="active-tab"
        >
          <i class="material-icons" :style="{ color: iconColors[item.id] }">
            {{ item.icon }}
          </i>
          <span class="header_item_label">{{ item.label }}</span>
        </NuxtLink>
      </div>
    </div>
  </div>
</template>


<script setup>
    import {
        header as headerItems,
    } from '~/assets/contents/header.js';
    import { useRouter, useRoute } from 'vue-router';

    const router = useRouter();
    const route = useRoute();

    const iconColors = {
        home: 'var(--dark-pink)',
        donate: 'var(--dark-purple)',
        us: 'var(--dark-orange)',
    };

    const isActive = item => {
        const currentPath = route.path;

        return `/${item.path}` === currentPath;
    };

</script>

<style scoped lang="scss">
  @use '@/styles/_variables.scss' as *;

    .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #f8f9fa;
        height: $header-height;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        z-index: 1000;

        .header-left {
            display: flex;
            align-items: center;
            gap: 20px;

            .headerLogo img {
                width: 70px;
                height: auto;
                margin-left: 40px;
            }

            .welcome {
                align-self: center;
                left: 0;

                h4 {
                margin: 0;
                color: $light-grey;
                white-space: nowrap;
                }
            }
        }

        .header_items {
            display: flex;
            flex-direction: row;
            justify-content: end;
            height: inherit;

            .header_item {
                display: flex;
                flex-direction: column;
                align-items: center;
                padding: 7px;
                text-decoration: none;
                height: auto;
                cursor: pointer;
                width: 110px;

                .header_item_label {
                    font-size: 16px;
                    font-weight: 400;
                    color: $light-grey;
                    transition: color 0.2s ease;
                }

                .material-icons {
                    font-size: 40px;
                    transition: color 0.2s ease;
                }

                transition: background-color 0.2s ease;

                &:hover {
                    background-color: var(--item-color);

                    .header_item_label {
                        color: white;
                    }

                    .material-icons {
                        color: white !important;
                    }
                }

                &.active-tab {
                    background-color: var(--item-color);

                    .header_item_label,
                    .material-icons {
                        color: white !important;
                    }
                }
            }
        }
    }
</style>