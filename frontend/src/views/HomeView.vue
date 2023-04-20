<template>
  <div>
    <p style="text-align: center; color: darkgrey;">Created By: Boros Tamás©</p>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">

      <div class="col" v-for="(product, index) in products" :key="`product${index}`">
        <div class="card">
          <div class="card-body ">
            <h5 class="card-title">{{ product.name }}</h5>
            <img class="card-img-top" :src="'../../public/' + product.name + '.jpg'" alt="">
            <a href="#" class="btn btn-success">${{ product.price }}</a>
            <a href="#" class="btn btn-dark" style="margin: 5px;">🛒</a>
          </div>
        </div>
      </div>
    </div> 
  </div>
</template>

<script>
import { useUrlStore } from "@/stores/url";
import { useLoginStore } from "@/stores/login";
const storeUrl = useUrlStore();
const storeLogin = useLoginStore();
export default {
  data() {
    return {
      storeUrl,
      storeLogin,
      basket: [],
      products: [],
    };
  },
  mounted() {

    this.getProductsList();
    // this.getImagesList();
  },
  methods: {
    async getProductsList() {
      let url = this.storeUrl.urlProducts;

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
    }
  },

  async getBasket() {
    let url = this.storeUrl.urlBasket;
    const config = {
      method: "GET",
      headers: {
        Authorization: `Bearer ${this.storeLogin.accessToken}`,
      },
    };
    const response = await fetch(url, config);
    const data = await response.json();
    this.basket = data.data;
  },
};

</script>

<style></style>
