const url = new URL(window.location.href);
const parametros = url.searchParams;
let recorrido = parametros.get("recorrido");
let tema = parseInt(parametros.get("tema"));
let lenguaje = parametros.get("lenguaje");
const path = root_path + recorrido + '/temas/' + tema + '/';

insert("title",tema.toString() + ". " + recorridos[recorrido].temas[tema].label);

let resource = path + 'index.html';
fetch(resource)
    .then(response => response.text())
    .then(data => {
        let cleanData = data.trimEnd();
        cleanData = cleanData.replace(/<lenguaje>/g, lenguaje);
        element = document.getElementById("tema");
        element.innerHTML = cleanData;
        pres();
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
        a.textContent = retoId;
        a.textContent += '. ' + retos[retoId].label;
        if (colecciones[retos[retoId].coleccion])
            a.textContent +=  ' (' + colecciones[retos[retoId].coleccion].label  + ')'
        if (retos[retoId].prev || retos[retoId].next)
        {
            a.textContent += " ⤑"
        }
        li = document.createElement("li");
        li.appendChild(a);
        ul.appendChild(li);
    }
}

insertA("recorrido",recorridos[recorrido].label,"recorrido.html?recorrido=" + recorrido + "&lenguaje=" + lenguaje);
insert("lenguaje",lenguajes[lenguaje].label);
insertA("siguiente-tema",(tema+1).toString() + ". " + recorridos[recorrido].temas[tema+1].label,"tema.html?recorrido=" + recorrido + "&lenguaje=" + lenguaje + "&tema=" + (tema+1));