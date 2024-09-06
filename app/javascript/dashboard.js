document.querySelectorAll(".more-info").forEach((button) => {
  button.addEventListener("click", function () {
    var card = button.closest(".card");
    card.classList.toggle("show-detail");
  });
});
