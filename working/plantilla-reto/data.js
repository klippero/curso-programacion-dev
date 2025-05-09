const recorridos = {
    "POO":
    {
        label: "Programación Orientada a Objetos",
        github: "https://raw.githubusercontent.com/klippero/code-snippet-in-web/refs/heads/main/retos/"
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
    'rb': {
        label: 'Ruby',
        extension: 'rb'
    },
    'py': {
        label: 'Python',
        extension: 'py'
    }
};

const retos = {
    '1an': {
        label: "Pipo el gato",
        recorrido: "POO",
        tema: "Clases y objetos",
        coleccion: "animales",
        out_por_lenguaje: true
    },
    '22est-media': {
        label: "Media",
        recorrido: "POO",
        tema: "Listas",
        coleccion: "estadistica"
    },
    '22est-mediana': {
        label: "Mediana",
        recorrido: "POO",
        tema: "Listas",
        coleccion: "estadistica"
    },
    '27est-moda1': {
        label: "Moda1",
        recorrido: "POO",
        tema: "Diccionarios",
        coleccion: "estadistica"
    },
    '27est-moda2': {
        label: "Moda2",
        recorrido: "POO",
        tema: "Diccionarios",
        coleccion: "estadistica"
    }
};

function insert(id,content)
{
    element = document.getElementById(id);
    element.textContent = content;
}
