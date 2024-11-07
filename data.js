const recorridos = {
    "POO":
    {
        label: "Programación Orientada a Objetos",
        github: "https://raw.githubusercontent.com/klippero/code-snippet-in-web/refs/heads/main/POO/retos/"
    }
};

const temas = [
    "Entorno",
    "Clases y objetos",
    "Métodos"
];

const colecciones = {
    'animales': {
        label: 'Animales'
    },
    'estadistica': {
        label: 'Estadística'
    }
};

const lenguajes = {
    'Ruby': {
        extension: 'rb'
    },
    'Python': {
        extension: 'py'
    }
};

const retos = {
    'r1an': {
        label: "Pipo el gato",
        recorrido: "POO",
        tema: "Clases y objetos",
        coleccion: "animales"
    },
    'r22est-media': {
        label: "Media",
        recorrido: "POO",
        tema: "Listas",
        coleccion: "estadistica"
    }
};

function insert(id,content)
{
    element = document.getElementById(id);
    element.textContent = content;
}

function test(id,lenguaje)
{
    return id + '_test.' + lenguajes[lenguaje].extension;
}

function out(id,lenguaje)
{
    return test(id,lenguaje) + '.txt';
}

function sol(id,lenguaje)
{
    return id + '.' + lenguajes[lenguaje].extension;
}

const url = new URL(window.location.href);
const parametros = url.searchParams;
let id = parametros.get("reto");
let reto = retos[id];
let lenguaje = parametros.get("lenguaje");
let path = recorridos[reto.recorrido].github + reto.coleccion + '/';

insert("title",reto.label);

let resource = path + id + '.html';
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

document.getElementById("test").setAttribute("data-code",path + test(id,lenguaje));
insert("test-fileName",test(id,lenguaje));
document.getElementById("out").setAttribute("data-code",path + out(id,lenguaje));

insert("sol-fileName",sol(id,lenguaje));
document.getElementById("sol").setAttribute("data-code",path + sol(id,lenguaje));

insert("recorrido",recorridos[reto.recorrido].label);
insert("lenguaje",lenguaje);
insert("tema",reto.tema);
