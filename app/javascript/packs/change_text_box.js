

const changeTextBox = () => {
  const messageContainer = document.querySelectorAll('.message-container')
  if (messageContainer) {
  const isCurrentUser = messageContainer.forEach((element) => {
    if (element.dataset.chatroomMessengerId === "true") {
      console.log(element.dataset.chatroomMessengerId)
      element.classList.add('current_user');
    } else {
      element.classList.add('other_user');
    }
  });
  }
}

export { changeTextBox }
