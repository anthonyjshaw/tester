const sidebarToggle = () => {
  document.getElementById("mySidebar").classList.toggle("sidebartoggle")
  document.querySelector("body").classList.toggle("bodyToggle")
  document.getElementById("menu-icon").classList.toggle("fa-arrow-alt-circle-left")
  document.getElementById("menu-icon").classList.toggle("fa-arrow-alt-circle-right")
}
"fas fa-compress-arrows-alt"
export { sidebarToggle };
