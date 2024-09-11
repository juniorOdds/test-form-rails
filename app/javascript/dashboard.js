document.querySelectorAll(".more-info").forEach((button) => {
  button.addEventListener("click", function () {
    var card = button.closest(".card");
    card.classList.toggle("show-detail");
  });
});



// setTimeout(() => {
//   const successFlash = document.querySelector(".flash-notice");
//   const errorFlash = document.querySelector(".flash-alert");
//   if (successFlash) {
//     successFlash.remove()
//   }
//   if (errorFlash) {
//     errorFlash.remove()
//   }
// }, 3000);
    
