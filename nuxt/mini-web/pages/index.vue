<template>
  <div class="gallery-container">
    <h1>Nuestra Colección de Penguinos</h1>
    <div class="gallery">
      <div class="gallery-item" v-for="(image, index) in images" :key="index">
        <img :src="image.filename" :alt="image.name">
        <div class="overlay">
          <h3>{{ image.name }}</h3>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
    import kingpen from '@/assets/images/kingpen.jpg'
    import linepen from '@/assets/images/linepen.jpg'
    import babypen from '@/assets/images/babypen.jpg'

    export default {
        data() {
            return {
                images: [
                    { filename: kingpen, name: 'King Penguino' },
                    { filename: linepen, name: 'Line Penguino' },
                    { filename: babypen, name: 'Baby Penguino' }
                ]
            }
        }
    }
</script>

<style scoped>
    .gallery-container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
        text-align: center;
    }

    h1 {
        color: #333;
        margin-bottom: 30px;
        font-family: 'Arial', sans-serif;
    }

    .gallery {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
        gap: 20px;
        padding: 20px;
    }

    .gallery-item {
        position: relative;
        overflow: hidden;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }

    .gallery-item:hover {
        transform: scale(1.03);
    }

    .gallery-item img {
        width: 100%;
        height: 300px;
        object-fit: cover;
        display: block;
        transition: transform 0.5s ease;
    }

    .overlay {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        background: rgba(0, 0, 0, 0.6);
        color: white;
        padding: 15px;
        transform: translateY(100%);
        transition: transform 0.3s ease;
    }

    .gallery-item:hover .overlay {
        transform: translateY(0);
    }

    @media (max-width: 768px) {
        .gallery {
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
        }
    }
</style>