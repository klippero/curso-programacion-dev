const url = new URL(window.location.href);
const parametros = url.searchParams;
let id = parametros.get("reto");
let reto = retos[id];
let lenguaje = parametros.get("lenguaje");
let path = recorridos[reto.recorrido].github + reto.coleccion + '/' + id + '/';
let path_code = path + lenguajes[lenguaje].extension + '/';

insert("title",reto.label);

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
document.getElementById("sol").setAttribute("data-code",path_code + 'sol.' + lenguajes[lenguaje].extension );

insert("recorrido",recorridos[reto.recorrido].label);
insert("lenguaje",lenguaje);
insert("tema",reto.tema);
