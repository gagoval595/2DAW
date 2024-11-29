document.getElementById("menuHamburguesa").addEventListener("click", function () {
    const primeraLista = document.querySelector(".primeraLista");
    const segonaLista = document.querySelector(".segonaLista");

    // Alternar la clase 'active' en ambas listas
    primeraLista.classList.toggle("active");
    segonaLista.classList.toggle("active");
});
