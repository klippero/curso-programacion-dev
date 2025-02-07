const url = new URL(window.location.href);
const parametros = url.searchParams;
let id = parametros.get("reto");
let reto = retos[id];
let lenguaje = parametros.get("lenguaje");
let path = root_path  + 'retos/' + reto.coleccion + '/' + id + '/';
let path_code = path + lenguajes[lenguaje].extension + '/';

title = id.toString() + ". " + reto.label
if (colecciones[reto.coleccion])
    title +=  ' (' + colecciones[reto.coleccion].label  + ')'
insert("title",title);

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

document.getElementById("test").setAttribute("data-code", path_code + 'test.' + lenguajes[lenguaje].extension );
insert("test-fileName",'test.' + lenguajes[lenguaje].extension);

if ( reto.out_por_lenguaje && reto.out_por_lenguaje == true )
{
    document.getElementById("out").setAttribute("data-code",path_code + 'test.' + lenguajes[lenguaje].extension + '.txt ');
}
else
{
    document.getElementById("out").setAttribute("data-code",path + 'test.txt ');
}

insert("sol-fileName",'sol.' + lenguajes[lenguaje].extension);

insertA("link-sol",'.',path_code + 'sol.' + lenguajes[lenguaje].extension);
insertA("recorrido",recorridos[reto.recorrido].label,"recorrido.html?recorrido=" + reto.recorrido + "&lenguaje=" + lenguaje);
insert("lenguaje",lenguajes[lenguaje].label);
insert("tema",reto.tema);
insert("coleccion",colecciones[reto.coleccion].label);

if (reto.prev)
{
    prev = retos[reto.prev]

    txt = "← " + reto.prev + ". " + prev.label
    if (prev.tema != reto.tema)
    {
        txt += " (" + prev.tema.toString() + ". " + recorridos["POO"].temas[prev.tema].label + ")"
    }
    lnk = "reto.html?reto=" + reto.prev + "&lenguaje=" + lenguaje
    insertA("reto-previo",txt,lnk);
}

if (reto.next)
{
    next = retos[reto.next]

    txt = "→ " + reto.next + ". " + next.label
    if (next.tema != reto.tema)
    {
        txt += " (" + next.tema.toString() + ". " + recorridos["POO"].temas[next.tema].label + ")"
    }
    lnk = "reto.html?reto=" + reto.next + "&lenguaje=" + lenguaje
    insertA("reto-siguiente",txt,lnk);
}