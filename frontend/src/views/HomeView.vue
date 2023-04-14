<template>
  <div class="row-1">
    <p style="text-align: center; color: darkgrey;">Created By: Boros Tamás©</p>
     <div class="col-sm-4 mb-3 mb-sm-12">
          <div class="card" style="border: 2px solid purple;">
            <div class="card-body " v-for="(product, index) in products" :key="`product${index}`">
              <h5 class="card-title">{{product.name}}</h5>
              <img v-for="image in images" :src="images.url" :alt="images.alt">
              <a href="#" class="btn btn-success">${{product.price}}</a>
              <a href="#" class="btn btn-dark" style="margin: 5px;">🛒</a>
            </div>
          </div>
      </div>
    </div> 
      
</template>

<script>
import { useUrlStore } from "@/stores/url";
import { useLoginStore } from "@/stores/login";
const imgUrl = "";
const storeUrl = "http://localhost:3000/products";
const storeLogin = "http://localhost:4000/login";
export default {
  data() {
    return {
      storeUrl,
      storeLogin,
      products: [],
      return{
        images: [
          { url: '../public/1.jpg', alt: 'I love you nature' },
                { url: '../public/2.jpg', alt: 'Now with dog - Rosé' },
                { url: '../public/3.jpg', alt: 'Jeg er i Danmark' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/4.jpg', alt: 'Badabimbadabum' },
                { url: '../public/5.jpg', alt: 'Goodmorning el mundo' },
                { url: '../public/6.jpg', alt: 'My white and rosé with paella' },
                { url: '../public/7.jpg', alt: 'Hopla' },
                { url: '../public/8.jpg', alt: 'Watering by night' },
                { url: '../public/9.jpg', alt: 'Life aint so bad at all...' },
                { url: '../public/10.jpg', alt: 'My whitewine' },
                { url: '../public/11jpg', alt: 'First time for everything...winefair!' },
                { url: '../public/12.jpg', alt: 'Lost around 20% of this years yield!' }
        ]
      }

    };
  },
  mounted() {
    this.getProductsList();
  },
  methods: {
    async getProductsList() {
      let url = this.storeUrl;
      const config = {
        method: "GET",
        headers: {
          Authorization: `Bearer ${this.storeLogin.accessToken}`,
        },
      };
      const response = await fetch(url, config);
      const data = await response.json();
      this.products = data.data;
      console.log(url);
    },
  },
};

</script>

<style>


.card{
  width: 18rem; 
  margin: 30px; 
  border: 3px solid black;
}
</style>
