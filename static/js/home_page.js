const toggleButton = document.getElementById('toggle-btn')
const sidebar = document.getElementById('side-nav')

function toggleSidebar(){
    sidebar.classList.toggle('close')
    toggleButton.classList.toggle('rotate')

    closeAllSubmenu()

   
}

function toggleSubMenu(button){

    if(!button.nextElementSibling.classList.contains('show')){
        closeAllSubmenu()
    }
    button.nextElementSibling.classList.toggle('show')
    button.classList.toggle('rotate')

    if(sidebar.classList.contains('close')){
        sidebar.classList.toggle('close')
        toggleButton.classList.toggle('rotate')
    }
}

function closeAllSubmenu(){
    Array.from(sidebar.getElementsByClassName('show')).forEach(ul =>{
        ul.classList.remove('show')
        ul.previousElementSibling.classList.remove('rotate')
    })
}


document.addEventListener("DOMContentLoaded", ()=> {
    const container = document.getElementById("display");

    fetch("/book/api").then((response)=> response.json()).then((data)=>{ data.forEach((item)=>{
        const disp_img = document.createElement("swiper-slide");
        disp_img.className = "book-img";

        disp_img.innerHTML = `<div class="book-img"><img src="${item.image_url}" alt="${item.title}" loading="lazy"></div>
        <div class="bookcontent"><h2 class="book-title">${item.title}</h2><br> <p>${item.summary}</p><a href="${item.book_url}">Read more</a></div>`;
        container.appendChild(disp_img);
     });
    })
    .catch((error)=> console.error("Error loading books", error));
});