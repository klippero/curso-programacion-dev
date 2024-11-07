const recorridos =
{
    "POO":
    {
        label: "Programación Orientada a Objetos",
        github: "https://raw.githubusercontent.com/klippero/code-snippet-in-web/refs/heads/main/POO/"
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
            enunciado: "1an.html",
            path: "retos/animales/",
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

let resource = recorridos[reto.recorrido].github + reto.path + reto.enunciado;
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

document.getElementById("test").setAttribute("data-code",recorridos[reto.recorrido].github + reto.path + reto.lenguajes[lenguaje].test);
insert("test-fileName",reto.lenguajes[lenguaje].test);
document.getElementById("out").setAttribute("data-code",recorridos[reto.recorrido].github + reto.path + reto.lenguajes[lenguaje].out);

insert("sol-fileName",reto.lenguajes[lenguaje].sol);
document.getElementById("sol").setAttribute("data-code",recorridos[reto.recorrido].github + reto.path + reto.lenguajes[lenguaje].sol);

insert("recorrido",recorridos[reto.recorrido].label);
insert("lenguaje",lenguaje);
insert("tema",reto.tema);
