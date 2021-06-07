const testLink = () => {
  const links = document.querySelectorAll(".test-link")

  links.forEach((link) => {
    link.addEventListener('click', () => {
      console.log('hello');
      setTimeout(function() {
        window.location.reload(true)}, 1000);
    });
  });
}

export { testLink };
