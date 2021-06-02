const sidebarToggle = () => {
  document.getElementById("mySidebar").classList.toggle("sidebartoggle")
  document.getElementById("menu-icon").classList.toggle("bxs-chevrons-right")
  document.getElementById("menu-icon").classList.toggle("bxs-chevrons-left")
}

export { sidebarToggle };
