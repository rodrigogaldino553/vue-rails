import * as Vue from "vue"
import { FetchRequest } from "@rails/request.js"

const point = "#point"
const element = document.querySelector(point)
if (element !== null) {
  const app = Vue.createApp({
    data() {
      return { count: 1, name: '', car: {name: '', brand: '', price: 0} }
    },
    methods: {
      async saveCar(){
        const request = new FetchRequest('post', '/cars',
        {
          body: JSON.stringify({ car: this.car })
        })

        const response = await request.perform()
      }
    },
    created() {
      console.log("count is: "+ this.count) // => "count is: 1"
    }
  })
  const vm = app.mount(point)
}

