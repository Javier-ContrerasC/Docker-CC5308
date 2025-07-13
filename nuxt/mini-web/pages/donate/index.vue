<template>
  <div class="donaciones-page">
    <!-- Hero Section -->
    <section class="hero-section">
      <h1>¡Salva a los Pingüinos! ❄️🐧</h1>
      <p>Los pingüinos están en peligro debido al cambio climático. <strong>¡Tu ayuda puede marcar la diferencia!</strong></p>
      <button @click="scrollToDonate" class="donate-button">Donar Ahora</button>
    </section>

    <!-- Why Donate Section -->
    <section class="section">
      <h2>¿Por qué donar?</h2>
      <ul class="benefits-list">
        <li>🔹 Cada donación compra <strong>10 kg de pescado fresco</strong> para un pingüino.</li>
        <li>🔹 Ayudas a <strong>conservar su hábitat glacial</strong>.</li>
        <li>🔹 Recibirás <strong>actualizaciones mensuales</strong> con fotos de los pingüinos.</li>
      </ul>
    </section>

    <!-- Donation Options -->
    <section class="section" ref="donateSection">
      <h2>Opciones de Donación</h2>
      <div class="donation-cards">
        <div v-for="option in donationOptions" :key="option.id" class="donation-card">
          <h3>{{ option.title }}</h3>
          <p class="price">{{ option.price }}</p>
          <p>{{ option.description }}</p>
          <button @click="selectDonation(option)" class="select-button">Seleccionar</button>
        </div>
      </div>
    </section>

    <!-- Success Stories -->
    <section class="section">
      <h2>Historias de Éxito 📖</h2>
      <blockquote>
        "Gracias a su ayuda, <strong>Pingu</strong>, un pingüino, pudo recuperarse y ahora nada feliz en el Glaciar Azul."
      </blockquote>
    </section>

    <!-- FAQ -->
    <section class="section">
      <h2>Preguntas Frecuentes ❓</h2>
      <div class="faq-item" v-for="(faq, index) in faqs" :key="index">
        <h3 @click="toggleFaq(index)" class="faq-question">
          {{ faq.question }} <span>{{ activeFaq === index ? '−' : '+' }}</span>
        </h3>
        <p v-if="activeFaq === index" class="faq-answer">{{ faq.answer }}</p>
      </div>
    </section>

    <!-- Contact -->
    <section class="section contact-section">
      <h2>Contacto 📧</h2>
      <p>¿Tienes dudas? Escríbenos a:</p>
      <a href="mailto:ayuda@pinguinos.org" class="contact-email">ayuda@pinguinos.org</a>
    </section>
  </div>
</template>

<script setup>
import { ref } from 'vue';

// Donation Options Data
const donationOptions = ref([
  {
    id: 1,
    title: "Donación Pequeña",
    price: "$5",
    description: "Alimenta a un pingüino por un día."
  },
  {
    id: 2,
    title: "Donación Mediana",
    price: "$20",
    description: "Protege un nido de huevos."
  },
  {
    id: 3,
    title: "Donación Grande",
    price: "$100",
    description: "Adopta simbólicamente un pingüino."
  }
]);

// FAQ Data
const faqs = ref([
  {
    question: "¿Cómo se usan las donaciones?",
    answer: "El 90% va directamente a la compra de alimento y conservación; el 10% a logística."
  },
  {
    question: "¿Recibiré un certificado?",
    answer: "¡Sí! Al donar más de $50, te enviaremos un certificado de adopción digital."
  }
]);

const activeFaq = ref(null);

// Methods
const toggleFaq = (index) => {
  activeFaq.value = activeFaq.value === index ? null : index;
};

const selectDonation = (option) => {
  alert(`¡Gracias por seleccionar: ${option.title}! (Simulación)`);
};

const donateSection = ref(null);

const scrollToDonate = () => {
  donateSection.value.scrollIntoView({ behavior: 'smooth' });
};
</script>

<style scoped>
.donaciones-page {
  max-width: 800px;
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

.donate-button {
  background: #2b82d8;
  color: white;
  border: none;
  padding: 0.8rem 1.5rem;
  border-radius: 5px;
  cursor: pointer;
  font-weight: bold;
  margin-top: 1rem;
}

.section {
  margin-bottom: 3rem;
}

.benefits-list {
  list-style: none;
  padding: 0;
}

.benefits-list li {
  margin-bottom: 0.5rem;
}

.donation-cards {
  display: flex;
  gap: 1rem;
  flex-wrap: wrap;
  justify-content: center;
}

.donation-card {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1.5rem;
  width: 250px;
  text-align: center;
}

.price {
  font-size: 1.5rem;
  font-weight: bold;
  color: #2b82d8;
}

.select-button {
  background: #2b82d8;
  color: white;
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 5px;
  cursor: pointer;
  margin-top: 1rem;
}

.faq-item {
  margin-bottom: 1rem;
}

.faq-question {
  cursor: pointer;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.contact-section {
  text-align: center;
}

.contact-email {
  color: #2b82d8;
  font-weight: bold;
  text-decoration: none;
}

blockquote {
  background: #f9f9f9;
  border-left: 4px solid #2b82d8;
  padding: 1rem;
  margin: 1rem 0;
  font-style: italic;
}
</style>