<template>
  <div class="about-page">
    <!-- Hero Section -->
    <section class="hero-section">
      <h1>¡Conoce al <span class="nuxxt-text">Equipo</span>! ❄️🐧</h1>
      <p>Somos un grupo apasionado por salvar a los pingüinos y su hábitat en las frías tierras.</p>
    </section>

    <!-- Misión y Visión -->
    <section class="section mission-section">
      <h2>Misión y Visión</h2>
      <div class="mission-cards">
        <div class="mission-card">
          <h3>🛡️ Misión</h3>
          <p>Proteger a los pingüinos mediante la conservación de su hábitat, la investigación científica y la educación ambiental.</p>
        </div>
        <div class="mission-card">
          <h3>🔭 Visión</h3>
          <p>Ser la organización líder en la preservación de pingüinos para 2030, logrando que sea un santuario glacial seguro.</p>
        </div>
      </div>
    </section>

    <!-- Datos Curiosos -->
    <section class="section fun-facts">
      <h2>¿Sabías que...? 🧐</h2>
      <ul class="facts-list">
        <li v-for="(fact, index) in funFacts" :key="index">{{ fact }}</li>
      </ul>
    </section>

    <!-- Call to Action -->
    <section class="section cta-section">
      <h2>¡Únete a la causa!</h2>
      <p>Ayúdanos a salvar a los pingüinos. Cada granito de hielo cuenta.</p>
      <NuxtLink to="/donaciones" class="cta-button">Donar Ahora</NuxtLink>
    </section>
  </div>
</template>

<script setup>

// Datos curiosos
const funFacts = ref([
  "Los pingüinos pueden bucear hasta 200 metros de profundidad.",
  "Su plumaje es tan denso que ni el agua más fría los penetra.",
  "Forman parejas de por vida y comparten la crianza de sus polluelos.",
  "¡Pueden tomar agua salada gracias a una glándula especial en sus ojos!"
]);
</script>

<style scoped>
.about-page {
  max-width: 1000px;
  margin: 0 auto;
  padding: 2rem;
  font-family: Arial, sans-serif;
}

.hero-section {
  text-align: center;
  padding: 3rem 0;
  background: #f0f8ff;
  border-radius: 10px;
  margin-bottom: 2rem;
}

.section {
  margin-bottom: 3rem;
}

.history-content {
  display: flex;
  gap: 2rem;
  align-items: center;
  margin-top: 1.5rem;
}

.history-image {
  width: 300px;
  border-radius: 10px;
  border: 3px solid #2b82d8;
}

.history-text {
  flex: 1;
}

.mission-section {
  background: #f9f9f9;
  padding: 2rem;
  border-radius: 10px;
}

.mission-cards {
  display: flex;
  gap: 1.5rem;
  margin-top: 1.5rem;
}

.mission-card {
  flex: 1;
  padding: 1.5rem;
  background: white;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.team-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
  margin-top: 1.5rem;
}

.team-card {
  text-align: center;
  padding: 1.5rem;
  background: white;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.team-avatar {
  width: 120px;
  height: 120px;
  border-radius: 50%;
  object-fit: cover;
  margin: 0 auto 1rem;
  border: 3px solid #2b82d8;
}

.role {
  color: #2b82d8;
  font-weight: bold;
  margin-bottom: 0.5rem;
}

.fun-facts {
  background: #e6f2ff;
  padding: 2rem;
  border-radius: 10px;
}

.facts-list {
  list-style-type: "🐧 ";
  padding-left: 1.5rem;
}

.facts-list li {
  margin-bottom: 0.5rem;
}

.cta-section {
  text-align: center;
  background: #2b82d8;
  color: white;
  padding: 2rem;
  border-radius: 10px;
}

.cta-button {
  display: inline-block;
  background: white;
  color: #2b82d8;
  padding: 0.8rem 1.5rem;
  border-radius: 5px;
  text-decoration: none;
  font-weight: bold;
  margin-top: 1rem;
}

@media (max-width: 768px) {
  .history-content {
    flex-direction: column;
  }
  
  .mission-cards {
    flex-direction: column;
  }
}
</style>