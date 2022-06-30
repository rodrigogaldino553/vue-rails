import * as Vue from "vue"
const comp = "#comp"
const element = document.querySelector(comp)
if (element !== null) {
  const app = Vue.createApp({
    data() {
      return { count: 1 }
    },
    created() {
      console.log('a') // => "count is: 1"
    }
  })
  const vm = app.mount(comp)
}

