// app/javascript/controllers/controllers.js

import { Application } from "@hotwired/stimulus"
import EditformController from "./editform_controller"

const application = Application.start()
application.register("editform", EditformController)
