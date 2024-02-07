document.addEventListener("turbo:load", () => {
  const tagNameInput = document.querySelector("#tag-name");
  if (tagNameInput){
    const inputElement = document.getElementById("tag-name");
    inputElement.addEventListener("input", () => {
      const keyword = document.getElementById("tag-name").value;
    });
    };
  });