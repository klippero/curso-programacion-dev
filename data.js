const root_path = "https://raw.githubusercontent.com/klippero/code-snippet-in-web/refs/heads/main/";

const recorridos = {
    "POO":
    {
        label: "Programación Orientada a Objetos",
        temas: 
        [
            { 
                label: 'Entorno Ruby',
                secciones: [
                    { label: 'Intérprete' },
                    { label: 'IDE Visual Studio Code' },
                    { label: 'Debugger' }
                ]
            },
            { label: 'Clases y objetos' },
            { label: 'Métodos' },
            { label: 'Constructor' },
            { label: 'Atributos' },
            { label: 'Expresión #{}' },
            { label: 'Métodos que modifican el estado' },
            { label: 'Parámetros de un método' },
            { label: 'Parámetros de un constructor' },
            { label: 'Valores por defecto para parámetros' },
            { label: 'Lectura por teclado' },
            { label: 'return' },
            { label: 'to_s' },
            { label: 'Consultar un atributo' },
            { label: 'IRB: interactive Ruby' },
            { label: 'Operadores aritméticos' },
            { label: 'Operadores relacionales' },
            { label: 'if elsif else' },
            { label: 'Operadores lógicos' },
            { label: 'Métodos ? y return de expresiones lógicas' },
            { label: 'while' },
            { label: 'times / each' },
            { label: 'Listas' },
            { label: 'Implementando operadores' },
            { label: 'Asignación abreviada' },
            { label: 'Comentarios' },
            { label: 'Constantes' },
            { label: 'Diccionarios' },
            { label: 'Parámetros requeridos, por defecto y opcionales' },
            { label: 'Keyword arguments' },
            {
                label: 'Excepciones',
                secciones: [
                    { label: 'Qué son' },
                    { label: 'Cómo se pueden controlar' },
                    { label: 'Excepciones comunes' },
                    { label: 'Cómo se lanzan' },
                ]
            },
            {
                label: 'Visibilidad de atributos (accessors)',
                secciones: [
                    { label: 'Lectura (getter)' },
                    { label: 'Escritura (setter)' },
                ]
            },
            {
                label: 'Visibilidad de métodos',
                secciones: [
                    { label: 'Públicos' },
                    { label: 'Privados' },
                    { label: 'Protegidos' },
                    { label: 'Visibilidad al final de la clase' },
                ]
            },
            { 
                label: 'Herencia',
                secciones: [
                    { label: 'Qué es la herencia' },
                    { label: 'Sobreescritura ó overriding (cambiar el comportamiento)' },
                    { label: 'Sobreescritura ó overriding (extender el comportamiento con super)' },
                    { label: 'Especialización en la construcción (comportamiento)' },
                    { label: 'Especialización en la construcción (atributos)' },
                ]
            },
            { label: 'return implícito' }
        ]
    }
};

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

/*
const retos = {
    '1an': {
        label: "Pipo el gato",
        recorrido: "POO",
        tema: 1,
        coleccion: "animales",
        out_por_lenguaje: true
    },
    '22est-media': {
        label: "Media",
        recorrido: "POO",
        tema: 22,
        coleccion: "estadistica"
    },
    '22est-mediana': {
        label: "Mediana",
        recorrido: "POO",
        tema: 22,
        coleccion: "estadistica"
    },
    '27est-moda1': {
        label: "Moda1",
        recorrido: "POO",
        tema: 27,
        coleccion: "estadistica"
    },
    '27est-moda2': {
        label: "Moda2",
        recorrido: "POO",
        tema: 27,
        coleccion: "estadistica"
    }
};
*/

function insert(id,content)
{
    element = document.getElementById(id);
    element.textContent = content;
}

function insertA(id,content,link)
{
    element = document.getElementById(id);

    a = document.createElement("a");
    a.href = link;
    a.textContent = content;

    element.appendChild(a);
}
