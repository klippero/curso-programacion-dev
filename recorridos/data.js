const recorridos =
{
    "POO":
    {
        label: "Programación Orientada a Objetos",
        github: "https://raw.githubusercontent.com/CoderDojoMaj/recorridos/refs/heads/main/"
    }
};

const temas = [
    "Entorno",
    "Clases y objetos",
    "Métodos"
];

const retos =
{
    1:
        {
            label: "Pipo el gato",
            recorrido: "POO",
            tema: "Clases y objetos",
            enunciado: "Mi gato se llama Pipo. Crea la clase Gato e instancia un objeto que represente a mi gato.",
            path: "ruby/retos/an_animales/",
            lenguajes:
            {
                "Ruby": {
                    test: "1an_test.rb",
                    sol: "1an.rb",
                    out: "1an_test.rb.txt"
                },
                "Python": {
                    test: "_1an_test.py",
                    sol: "_1an.py",
                    out: "_1an_test.py.txt"
                }
            }
        }
};

function insert(id,content)
{
    element = document.getElementById(id);
    element.textContent = content;
}

const url = new URL(window.location.href);
const parametros = url.searchParams;
let reto = retos[parametros.get("reto")];
let lenguaje = parametros.get("lenguaje");

insert("title",reto.label);
insert("enunciado",reto.enunciado);

document.getElementById("test").setAttribute("data-code",recorridos[reto.recorrido].github + reto.lenguajes[lenguaje].test);

insert("out",reto.lenguajes[lenguaje].out);
alert("hola")