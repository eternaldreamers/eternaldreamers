<template>
  <div class="home">
    <div class="home__background">
      <div
        v-for="(_, index) in Array.from(Array(amount).keys())"
        v-bind:key="index"
        class="home__sparkles"
        :style="generateStar()"
      >
        {{ index }}
      </div>
    </div>
    <div class="home__container">
      <div
        class="home__circle home__circle--float home__circle--right-top"
      ></div>
      <div class="home__dove"><img src="/dove.png" /></div>
      <div class="home__cta-container">
        <div class="home__cta-header"></div>
        <div class="home__circle home__circle--small">
          <div class="home__text"><img src="/text.svg" /></div>
          <div class="home__computer">
            <img src="/computer.png" />
          </div>
          <div class="home__cta-button">Check</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  setup() {},
  data: () => ({
    amount: 30,
  }),
  methods: {
    generateStar() {
      const posX = Math.floor(Math.random() * window.innerWidth - 100);
      const posY = Math.floor(Math.random() * window.innerHeight - 100);
      const rotation = Math.random() * 180;
      const delay = Math.random() * 20;
      const scale = Math.random() * 0.2;

      return {
        left: String(posX).concat("px"),
        top: String(posY).concat("px"),
        transform: `rotate(${rotation}deg) scale(${scale})`,
        animationDelay: String(delay).concat("s"),
      };
    },
  },
});
</script>

<style lang="scss" scoped>
@use "sass:math";
.home {
  $circle-size: 300px;

  position: relative;

  width: 100vw;
  height: 100vh;

  background: linear-gradient(180deg, #121322 0%, #293b36 100%);

  &__background {
    position: absolute;

    width: 100%;
    height: 100%;
  }

  &__container {
    position: absolute;
    z-index: 1;

    overflow: hidden;

    width: 100%;
    height: 100%;
  }

  &__sparkles {
    position: absolute;
    width: 100px;
    height: 100px;
    background-color: #fff;
  }

  &__cta-container {
    position: absolute;

    margin-top: calc(50vh - math.div($circle-size, 2) + 100px);
    margin-left: math.div($circle-size, 2);
  }

  &__circle {
    position: relative;

    display: flex;
    justify-content: center;

    width: $circle-size;
    height: $circle-size;

    border-radius: 100%;

    background: linear-gradient(180deg, #1ac141 0%, rgba(255, 245, 0, 0) 100%);

    &--float {
      position: absolute;
    }

    &--right-top {
      right: -#{math.div($circle-size, 2) - 50px};
      top: -#{math.div($circle-size, 2) - 50px};
    }
  }

  &__computer {
    position: absolute;

    left: 25px;
    top: -130px;

    animation: float 6s ease-in-out infinite;

    img {
      width: 300px;
    }
  }

  &__dove {
    position: absolute;
    z-index: 1;

    right: 0;
    bottom: 0;
  }

  &__text {
    position: absolute;

    top: -410px;
    right: -420px;
  }

  &__cta-button {
    position: absolute;

    cursor: pointer;

    bottom: 40px;

    margin: 0 auto;
    padding: 20px 128px;

    border-radius: 25px;

    background-color: #fff;
  }

  @keyframes float {
    0% {
      transform: translatey(0px);
    }
    50% {
      transform: translatey(-20px);
    }
    100% {
      transform: translatey(0px);
    }
  }
}
</style>
