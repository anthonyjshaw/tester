
const footerMarginAdd = () => {

const container = document.getElementById('container')

if (container) {

  if (container.height < window.height) {
    container.classList.add('add_footer_margin')
  }

}
}

export { footerMarginAdd };
