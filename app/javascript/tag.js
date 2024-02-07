document.addEventListener("turbo:load", () => {
  const tagNameInput = document.querySelector("#tag-name");
  if (tagNameInput){
    const inputElement = document.getElementById("tag-name");
    inputElement.addEventListener("input", () => {
      const keyword = document.getElementById("tag-name").value;
      const XHR = new XMLHttpRequest();
      XHR.open("GET", `/reviews/search/?keyword=${keyword}`, true);
      XHR.responseType = "json";
      XHR.send();
      XHR.onload = () => {
        const tagName = XHR.response.keyword;
        const searchResult = document.getElementById("search-result");
        tagName.forEach((tag) => {
          const childElement = document.createElement("div");
          childElement.setAttribute("class", "child");
          childElement.setAttribute("id", tag.id);
          childElement.innerHTML = tag.tag_name;
          searchResult.appendChild(childElement);
        });
      };
    });
    };
  });