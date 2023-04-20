<template>
  <div class="row-1">
    <p style="text-align: center; color: darkgrey;">Created By: Boros Tamás©</p>
     <div class="col-sm-4 mb-3 mb-sm-12">
          <div class="card" style="border: 2px solid purple;">
            <div class="card-body " v-for="(product, index) in products" :key="`product${index}`">
              <h5 class="card-title">{{product.name}}</h5>
              <img class="kep" :src="'../../public/'+ product.name+ '.jpg'" alt="">
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
      return:{
        images: [
          // { url: products.name`.jpg`, alt: products.name},
                 { url: '../public/Redragon Kumara RGB.jpg', alt: 'Redragon Kumara RGB' },
                 { url: '../public/Logitech G413.jpg', alt: 'Logitech G413' },
                 { url: '../public/Genius Scorpion K215.jpg', alt: 'Genius Scorpion K215' },
                 { url: '../public/Logitech K400 Plus.jpg', alt: 'Logitech K400 Plus' },
                 { url: '../public/SPC Gear GK630K.jpg', alt: 'SPC Gear GK630K' },
                 { url: '../public/Keychron K3.jpg', alt: 'Keychron K3' },
                 { url: '../public/Tesoro Tizona Spectrum.jpg', alt: 'Tesoro Tizona Spectrum' },
                 { url: '../public/White Shark Commandos.jpg', alt: 'White Shark Commandos' },
                 { url: '../public/White Shark GK210.jpg', alt: 'White Shark GK210' },
                 { url: '../public/ASUS ROG Claymore II.jpg', alt: 'ASUS ROG Claymore II' },
                 { url: '../public/Hama uRage Exodus 900.jpg', alt: 'Hama uRage Exodus 900' },
                 { url: '../public/SteelSeries Apex 3 TKL.jpg', alt: 'SteelSeries Apex 3 TKL' },
                 { url: '../public/Razer BlackWidow V3 Tenkeyless.jpg', alt: 'Razer BlackWidow V3 Tenkeyless' },
                 { url: '../public/ASUS TUF Gaming K1.jpg', alt: 'ASUS TUF Gaming K1' },
                 { url: '../public/Razer Huntsman Mini.jpg', alt: 'Razer Huntsman Mini' },
                 { url: '../public/ASUS ROG Strix Scope.jpg', alt: 'ASUS ROG Strix Scope' },
                 { url: '../public/Logitech G PRO GX Clicky.jpg', alt: 'Logitech G PRO GX Clicky' },
                 { url: '../public/Redragon Karura K502.jpg', alt: 'Redragon Karura K502' },
                 { url: '../public/Ducky One 2 SF.jpg', alt: 'Ducky One 2 SF' },
                 { url: '../public/Redragon Mitra K551.jpg', alt: 'Redragon Mitra K551' },
                 { url: '../public/Redragon Kumara 2 k552.jpg', alt: 'Redragon Kumara 2 k552' },
                 { url: '../public/Spirit Of Gamer Pro K5.jpg', alt: 'Spirit Of Gamer Pro K5' },
                 { url: '../public/HyperX Alloy Origins 60.jpg', alt: 'HyperX Alloy Origins 60' },
                 { url: '../public/Razer Cynosa Lite US.jpg', alt: 'Razer Cynosa Lite US' },
                 { url: '../public/Hama uRage Illuminated 2.jpg', alt: 'Hama uRage Illuminated 2' },
                 { url: '../public/HyperX Origins Core.jpg', alt: 'HyperX Origins Core' },
                 { url: '../public/Cooler Master MK730.jpg', alt: 'Cooler Master MK730' },
                 { url: '../public/Corsair K60 RGB.jpg', alt: 'Corsair K60 RGB' },
                 { url: '../public/Razer Pro Type US.jpg', alt: 'Razer Pro Type US' },
                 { url: '../public/SteelSeries Apex 7.jpg', alt: 'SteelSeries Apex 7' }
        ]
      }

    };
  },
  mounted() {
    this.getProductsList();
    // this.getImagesList();
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
    // async getImagesList() {
    //   let url = this.images.url;
    //   const config = {
    //     method: "GET",
    //     headers: {
    //       Authorization: `Bearer ${this.storeLogin.accessToken}`,
    //     },
    //   };
    //   const response = await fetch(url, config);
    //   const data = await response.json();
    //   this.images = data.data;
    //   console.log(url);
    // },
  },
};

</script>

<style>
.kep{
  min-width: 300px;
max-width: 300px;
}

.card{
  width: 18rem; 
  margin: 30px; 
  border: 3px solid black;
}
</style>
