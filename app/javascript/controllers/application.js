import { Application } from "@hotwired/stimulus"

const application = Application.start()

const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
