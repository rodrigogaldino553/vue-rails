import * as Vue from "vue"
import { FetchRequest } from "@rails/request.js"

const point = "#point"
const element = document.querySelector(point)
if (element !== null) {
  const app = Vue.createApp({
    data() {
      return { count: 1, user: user }
    },
    methods: {
      async saveUser(){
        const request = new FetchRequest('post', '/user',
        {
          body: JSON.stringify({ user: this.user })
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

