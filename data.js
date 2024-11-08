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
