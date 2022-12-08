import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"
import Rails from "@rails/ujs"

export default class extends Controller {
  static values= {
    url: String
  }

  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.end.bind(this)
    })
  }

  end(event) {
    let id = event.item.dataset.id
    let data = new FormData()
    data.append("position", event.newIndex + 1)

    Rails.ajax({
      url: this.urlValue.replace(":id", id),
      type: 'PATCH',
      data: data
    })
  }
}
