$(document).ready(function () {
    main();
});

window.onload = async function () {
    getEstats();
    document.getElementById("altaLlistat").addEventListener("click", () => {
        document.location.href = "../alta/alta.html";
    });
};

/**
 * Obté els estats des de la base de dades i els mostra a la taula.
 */
async function getEstats() {
    try {
        const data = await getData(url, "OrderReception_Status");
        console.log(data);
        if (data && Array.isArray(data)) {
            mostrarTaula(data);
        } else {
            console.error("Error al obtenir els estats del servidor");
        }
    } catch (error) {
        console.error("Error al carregar els estats:", error);
    }
}

/**
 * Mostra els estats a la taula HTML.
 * @param {Array} estats - Llista d'estats obtinguts des de la base de dades.
 */
function mostrarTaula(estats) {
    const tablaContenido = document.getElementById("tablaContenido");
    tablaContenido.innerHTML = "";

    estats.forEach((estat) => {
        // Crear una nova fila
        const fila = document.createElement("tr");
        fila.setAttribute("id", estat.id);

        // Columna Checkbox (opcional)
        const tdCheckbox = document.createElement("td");
        const checkbox = document.createElement("input");
        tdCheckbox.setAttribute("data-no-colon","true");
        checkbox.type = "checkbox";
        tdCheckbox.appendChild(checkbox);
        fila.appendChild(tdCheckbox);

        // Columna ID
        const tdId = document.createElement("td");
        tdId.textContent = estat.id;
        tdId.setAttribute("data-cell", "ID");
        fila.appendChild(tdId);

        // Columna Nom
        const tdName = document.createElement("td");
        tdName.textContent = estat.name;
        tdName.setAttribute("data-cell", "Name");
        fila.appendChild(tdName);

        // Columna Accions
        const tdAccions = document.createElement("td");
        const divAccions = document.createElement('div');
        tdAccions.setAttribute("data-no-colon", "true");
        divAccions.className = 'divAccions';

        // Botó Visualitzar
        const btnVisualitzar = document.createElement("i");
        btnVisualitzar.className = "fa-regular fa-eye";
        btnVisualitzar.title = "Visualitzar";
        btnVisualitzar.setAttribute("data-no-colon", "true");
        btnVisualitzar.addEventListener("click", () => visualitzaEstat(estat.id));

        // Botó Modificar
        const btnModificar = document.createElement("i");
        btnModificar.className = "fa-regular fa-pen-to-square";
        btnModificar.title = "Modificar";
        btnModificar.setAttribute("data-no-colon", "true");
        btnModificar.addEventListener("click", () => modificaEstat(estat.id));

        // Botó Esborrar
        const btnEsborrar = document.createElement("i");
        btnEsborrar.className = "fa-regular fa-trash-can";
        btnEsborrar.title = "Esborrar";
        btnEsborrar.setAttribute("data-no-colon", "true");
        btnEsborrar.addEventListener("click", async () => await esborrar(estat.id));

        // Afegir botons al div
        divAccions.appendChild(btnVisualitzar);
        divAccions.appendChild(btnModificar);
        divAccions.appendChild(btnEsborrar);

        // Afegir el div al td
        tdAccions.appendChild(divAccions);
        fila.appendChild(tdAccions);

        // Afegir la fila a la taula
        tablaContenido.appendChild(fila);
    });
}


/**
 * Redirigeix a la pàgina de visualització d'un estat, passant l'ID per la URL.
 * @param {number} id - ID de l'estat a visualitzar.
 */
function visualitzaEstat(id) {
    window.location.href = `../visualitzar/ver.html?id=${id}`;
}

/**
 * Redirigeix a la pàgina de modificació d'un estat, passant l'ID per la URL.
 * @param {number} id - ID de l'estat a modificar.
 */
function modificaEstat(id) {
    window.location.href = `../modificar/modificar.html?id=${id}`;
}

/**
 * Esborra un estat i elimina la seva fila de la taula.
 * @param {number} id - ID de l'estat a esborrar.
 */
async function esborrar(id){
    await deleteData(url,"OrderReception_Status",id);
    $(`#${id}`).remove();
}