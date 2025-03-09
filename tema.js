const url = new URL(window.location.href);
const parametros = url.searchParams;
let recorrido = parametros.get("recorrido");
let tema = parseInt(parametros.get("tema"));
let seccion = parseInt(parametros.get("seccion"));
let lenguaje = parametros.get("lenguaje");
let path = root_path + recorrido + '/temas/' + (tema-1) + '/';
if (seccion)
{
    path += seccion + '/';
}

title = tema.toString()
if (seccion)
{
    title += '.' + seccion + '. ' + recorridos[recorrido].temas[tema-1].secciones[seccion-1].label + ' (' + recorridos[recorrido].temas[tema-1].label + ')';
}
else
{
    title += '. ' + recorridos[recorrido].temas[tema-1].label;
}
insert("title",title);

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
    if (retos[retoId].recorrido == recorrido && retos[retoId].tema == tema && ( !seccion && !retos[retoId].seccion || seccion && retos[retoId].seccion == seccion))
    {
        a = document.createElement("a");
        a.href = "reto.html?reto=" + retoId + "&lenguaje=" + lenguaje;
        a.textContent = retoId;
        a.textContent += '. ' + retos[retoId].label;
        if (colecciones[retos[retoId].coleccion])
            a.textContent +=  ' (' + colecciones[retos[retoId].coleccion].label  + ')'
        if (retos[retoId].prev || retos[retoId].next)
        {
            a.textContent += " ⇾"
        }
        li = document.createElement("li");
        li.appendChild(a);
        ul.appendChild(li);
    }
}

if (!seccion && recorridos[recorrido].temas[tema-1].secciones)
{
    seccion = 0;
}


if (seccion && seccion < recorridos[recorrido].temas[tema-1].secciones.length)
{
    insertA("siguiente-tema",tema.toString() + '.' + (seccion+1).toString() + '. ' + recorridos[recorrido].temas[tema-1].secciones[seccion].label,"tema.html?recorrido=" + recorrido + "&lenguaje=" + lenguaje + "&tema=" + tema + "&seccion=" + (seccion+1));
}
else if (!seccion && recorridos[recorrido].temas[tema-1].secciones)
{
    insertA("siguiente-tema",tema.toString() + ".1. " + recorridos[recorrido].temas[tema-1].secciones[0].label,"tema.html?seccion=1&recorrido=" + recorrido + "&lenguaje=" + lenguaje + "&tema=" + (tema));
}
else
{
    insertA("siguiente-tema",(tema+1).toString() + ". " + recorridos[recorrido].temas[tema].label,"tema.html?recorrido=" + recorrido + "&lenguaje=" + lenguaje + "&tema=" + (tema+1));
}

insertA("recorrido",recorridos[recorrido].label,"recorrido.html?recorrido=" + recorrido + "&lenguaje=" + lenguaje);
insert("lenguaje",lenguajes[lenguaje].label);
