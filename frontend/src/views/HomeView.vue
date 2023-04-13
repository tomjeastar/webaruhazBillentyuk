<template>
  <div>
    <p style="text-align: center;">Created By: Boros Tamás©</p>
        <div class="card" >
          <!-- <a href="#" class="btn btn-warning me-2" >★	</a> -->
          <img class="card-img-top" src="https://www.howtogeek.com/wp-content/uploads/2022/04/rgb-lit-gaming-mechanical-keyboard.jpg?height=200p&trim=2,2,2,2" alt="Card img">
          <div class="card-body" v-for="(product, index) in products" :key="`product${index}`">
            <h5 class="card-title">{{product.name}}</h5>
            <p class="card-text">Switch</p>
            <a href="#" class="btn btn-dark">$149.99</a>
          </div>
        </div>
  </div>
</template>

<script>
// import { useUrlStore } from "@/stores/url";
// import { useLoginStore } from "@/stores/login";
// const storeUrl = useUrlStore();
// const storeLogin = useLoginStore();
// export default {
//   data() {
//     return {
//       storeUrl,
//       storeLogin,
//       products: [],
//     };
//   },
//   mounted() {
//     this.getProductsList();
//   },
//   methods: {
//     async getProductsList() {
//       console.log(url);
//       let url = this.storeUrl.urProducts;
//       const config = {
//         method: "GET",
//         headers: {
//           Authorization: `Bearer ${this.storeLogin.accessToken}`,
//         },
//       };
//       const response = await fetch(url, config);
//       const data = await response.json();
//       this.products = data.data;
//     },
//   },
// };

</script>

<style>


.card{
  width: 18rem; 
  margin: 30px; 
  border: 3px solid black;
}
</style>
