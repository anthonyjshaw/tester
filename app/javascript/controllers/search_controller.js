import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'list', 'tag' ];

  tag(event) {

    const tagName = (event.path || (event.composedPath && event.composedPath())).[0].innerText;
    fetch('/projects', { headers: { 'Accept': 'text/plain' } })
    .then(response => response.json())
    .then((data) => {
      const searchResults = data.projects.filter(el => el.project_tag === tagName)
      const html = []
      const photo = document.querySelectorAll(".phot")

      searchResults.forEach((el) => {

        // console.log(el)
      // const photoKey = document.querySelector('#photo-key').dataset.photoKey
        el = `<div class='card' style="width: auto;">
        <a href="/projects/${el.id}">
          <div class="card-img-top" style='position:relative;width:auto;height: 200px; overflow: hidden; background-size: cover; background-image: url("/project_pics/${el.name}.jpg")' alt="Card image cap">
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
      })
      this.listTarget.innerHTML = html.join('')
    });
  }
}
