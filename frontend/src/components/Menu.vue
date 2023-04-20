<template>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container-fluid">
      <router-link class="navbar-brand" to="/" @click="onClickMenu(1)"></router-link>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item" style="font-size: 20px;">
            <router-link class="nav-link active" aria-current="page" to="/" :class="{ active: menuState === 2 }"
              @click="onClickMenu(2)">HOME</router-link>
          </li>
          <li class="nav-item" style="font-size: 20px;">
            <router-link class="nav-link" to="/about" :class="{ active: menuState === 3 }"
              @click="onClickMenu(3)">About</router-link>
          </li>

          <li class="nav-item" style="font-size: 20px;" v-if="!storeLogin.loginSuccess">
            <router-link class="nav-link" to="/login">Login</router-link>
          </li>
          <li class="nav-item" v-if="storeLogin.loginSuccess" @click="logout()">
            <router-link class="nav-link" to="/login">Logout ({{ storeLogin.userName }})</router-link>
          </li>
        </ul>
        <form class="d-flex" role="search">



          <button type="button" class="btn btn-outline-success me-2" v-if="storeLogin.loginSuccess"
            @click="onClickCart()"><router-link to="/basket"> <i class="bi bi-cart"></i></router-link>

          </button>

          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>

      <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basketModal">
        Launch demo modal
      </button>

      <!-- Modal -->
      <div class="modal fade" id="basketModal" tabindex="-1" aria-labelledby="basketModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              ...
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
        </div>
      </div>
    </div>

  </nav>
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
    const myModal = new bootstrap.Modal('#basketModal', {
    keyboard: false
})
  },
  methods: {
    
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

const msg = "helo";
let menuState = null;
async function logout() {
  console.log("logout");
  const urlLogout = storeUrl.urlLogout;
  const body = {
    token: storeLogin.refreshToken,
  };
  const config = {
    method: "DELETE",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify(body),
  };
  const response = await fetch(urlLogout, config);
  storeLogin.clearLogin();
}

function onClickMenu(number) {
  this.menuState = number
}

function onClickCart() {
this.modal.show();
}
</script>

<style>
/* .router-link-active {
  color: white !important
}

.navbar-nav > li > .dropdown-menu a:link,
.navbar-nav > li > .dropdown-menu a:hover { background-color: black} */
</style>