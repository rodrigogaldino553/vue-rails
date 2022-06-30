# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "vue", to: "https://ga.jspm.io/npm:vue@3.2.26/dist/vue.esm-browser.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "application", preload: true