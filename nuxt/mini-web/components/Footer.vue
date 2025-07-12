<template>
    <div class="rights">
        <p>2025 Penguino&reg; Todos los derechos reservados.</p>
    </div>
</template>

<script setup></script>

<style scoped lang="scss">
    @use "@/styles/_variables.scss" as *;
    
    .rights {
        background-color: $light-blue;
        overflow: hidden;
        z-index: 1000;
        text-align: center;
        position: fixed;
        bottom: 0;
        left: 0;
        width: 100%;
        padding: 1rem;
    }

    @media (min-width: 496px) {
        .rights {
            height: $footer-height;
        }

        p {
            margin-top: 6px;
        }
    }

    @media (max-width: 495px) {
        .rights {
            height: 36px;
        }

        p {
            margin-top: 0px;
        }
    }
</style>