import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'list' ];

  tag(event) {
    const tagName = event.path[0].innerText
    fetch('/projects', { headers: { 'Accept': 'text/plain' } })
    .then(response => response.json())
    .then((data) => {
      const searchResults = data.projects.filter(el => el.project_tag === tagName)
      const html = []
      searchResults.forEach((el) => {
        el = `<div class='card' style="width: auto;">
        <a href="/projects/${el.id}">
          <div class="card-img-top" style='position:relative;width:auto;height: 200px; overflow: hidden; background-size: cover; background-image: url("https://picsum.photos/1600/900?${el.name}")' src="" alt="Card image cap">
          </div>
          <div class="card-body">
            <div class="body-header d-flex justify-content-between align-items-center mb-3">
              <div class="col d-flex align-items-center">
                <img src="https://i.pravatar.cc/150?img=${el.id}" class="avatar menu-icon">
                <h5 class='username'>${el.name}</h5>
              </div>
              <p class='stats'><i class="fas fa-clipboard-list"></i>25</p>
              <p class='stats'><i class="fas fa-clipboard-check"></i>345</p>
          </div>
          <p class='card-text desc'>${el.description}</p>
          </div>
        </a>
      </div>`
      html.push(el)
      } )
      console.log(html)
      this.listTarget.innerHTML = html.join('')
    });
  }
}