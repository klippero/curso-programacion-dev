const url = new URL(window.location.href);
const parametros = url.searchParams;
let recorrido = parametros.get("recorrido");
let tema = parametros.get("tema");
let lenguaje = parametros.get("lenguaje");

insert("title",recorridos[recorrido].temas[tema].label);

let resource = path + 'index.html';
fetch(resource)
    .then(response => response.text())
    .then(data => {
        let cleanData = data.trimEnd();
        element = document.getElementById("enunciado");
        element.innerHTML = cleanData;
    })
    .catch(error => {
        console.error('Error al cargar el archivo:', error);
    });

ul = document.getElementById("retos");
for (const retoId in retos)
{
    if (retos[retoId].recorrido == recorrido && retos[retoId].tema == tema)
    {
        a = document.createElement("a");
        a.href = "reto.html?reto=" + retoId + "&lenguaje=" + lenguaje;
        a.textContent = retos[retoId].label;
        li = document.createElement("li");
        li.appendChild(a);
        ul.appendChild(li);
    }
}

insertA("recorrido",recorridos[recorrido].label,"recorrido.html?recorrido=" + recorrido + "&lenguaje=" + lenguaje);
insert("lenguaje",lenguajes[lenguaje].label);
