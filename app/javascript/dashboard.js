document.querySelectorAll(".more-info").forEach((button) => {
  button.addEventListener("click", function () {
    var card = button.closest(".card");
    card.classList.toggle("show-detail");
  });
});

setTimeout(() => {
  const successFlash = document.querySelector(".flash-notice");
  const errorFlash = document.querySelector(".flash-alert");
  
  if (successFlash) {
    flashNotice.style.transition = "opacity 0.5s ease-out";
    flashNotice.style.opacity = "0";
    setTimeout(() => flashNotice.remove(), 500);  
    }

  if (errorFlash) {
    flashAlert.style.transition = "opacity 0.5s ease-out";
    flashAlert.style.opacity = "0";
    setTimeout(() => flashAlert.remove(), 500);  
    }
}, 1000);
    
