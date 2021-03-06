import consumer from "./consumer";
import {changeTextBox } from "../packs/change_text_box"

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;
    console.log(messagesContainer);
    console.log(id);
    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        messagesContainer.insertAdjacentHTML('beforeend', data);
        console.log(data);
        changeTextBox();
      },
    });
  }
}


// consumer.subscriptions.create({ channel: "ChatChannel", room: "1st Room" })
// consumer.subscriptions.create({ channel: "ChatChannel", room: "2nd Room" })

export { initChatroomCable };
