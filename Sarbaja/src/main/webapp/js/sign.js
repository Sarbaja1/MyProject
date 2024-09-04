const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});

function updatePreview(input, target) {
  let file = input.files[0];
  let reader = new FileReader();

  reader.readAsDataURL(file);
  reader.onload = function () {
      let img = document.getElementById(target);
      // can also use "this.result"
      img.src = reader.result;
  }
}
