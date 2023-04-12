<template>
  <div>
    <h1>Home</h1>

        <transition name="move" appear>
          <div style="margin-right: 20px" @click="openDialog">
            <b-icon-cart-4 v-if="show" class="chart" />
            <b-badge v-if="productCount > 0" variant="light">{{ productCount }}</b-badge>
          </div>
        </transition>

        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus praesentium pariatur modi molestiae quidem recusandae veritatis, distinctio, ea fuga quo ex deserunt similique adipisci officia aliquid animi dolores amet cumque totam. Rem dolores accusantium impedit, quo laborum, corrupti sapiente ad labore cumque odio minus doloribus eligendi. Temporibus cum voluptates doloremque modi eos quos veniam, neque cupiditate eaque molestias minima placeat ut repudiandae quia fuga incidunt. Nulla accusantium dignissimos aliquid atque eaque, nostrum soluta ipsa suscipit. Consequuntur harum, quasi, quis assumenda libero pariatur cum dicta iste asperiores, expedita facilis voluptates? Quam dignissimos nesciunt dolorum deserunt tempore tempora, eveniet corporis nulla quis reiciendis nisi blanditiis excepturi odit illum dolor neque consequuntur iste eos? Corporis incidunt neque ut consectetur ullam sint adipisci vel soluta eligendi saepe provident dolorem quaerat earum amet reprehenderit unde beatae cumque aut, nisi illum. Veritatis, nisi. Illum, illo magni, ipsam, excepturi nesciunt sunt nulla rem minima quam aut a est officiis optio saepe. Provident omnis, alias eius quis totam, ullam quidem voluptatum vero in voluptate ipsam tenetur nobis doloremque veritatis numquam qui, eaque vitae asperiores placeat similique temporibus. Praesentium amet vitae, fuga, delectus dicta ullam id animi sit dolorem hic consectetur asperiores tenetur voluptas accusantium officia voluptatem. Esse, temporibus?</p>
  </div>
</template>

<script setup>
import Counter from "@/components/Counter.vue";
import { useCounterStore } from "@/stores/counter";
const storeCounter = useCounterStore();
</script>

<style>

</style>
