const initEmptySearch = () => {
  console.log('hello')
  const feedWrapper = document.querySelector(".feed-wrapper") ;
  if (feedWrapper.innerHTML.trim().length == 0) {
    feedWrapper.style.display ='block';
    feedWrapper.innerHTML = `<div class="d-flex justify-content-center mt-5"><h5>Oops... We couldn't find any results matching your query</h5></div>`;
 };
};

export { initEmptySearch }