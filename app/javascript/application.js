// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

// Entry point for the build script in your package.json
 
import "@hotwired/turbo-rails"
import "controllers"

import * as bootstrap from "bootstrap"
import { application } from "./application";
import "./components"
 
import "./modules/sidebar"
import "./modules/theme"
import "./modules/feather"
 
// Charts
import "./modules/chartjs"
 
// Forms
import "./modules/flatpickr"
 
// Maps
import "./modules/vector-maps"

let popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))  
let popoverList = popoverTriggerList.map(function (popoverTriggerEl) {  
  return new bootstrap.Popover(popoverTriggerEl)  
})  