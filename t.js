// Función para generar un ID único
function generarIdUnico(preElement, index) {
    return 'pre-' + index; // Crear un ID único basado en un índice
}

// Función para agregar números de línea
function addLineNumber(preElement) {
    var numLines = preElement.textContent.split(/\n/).length;
    var lineNumberHtml = '<span class="line-number"></span>' + preElement.innerHTML + '<span class="cl"></span>';

    // Agregar la estructura de números de línea
    preElement.innerHTML = lineNumberHtml;

    // Añadir los números de línea
    var lineNum = preElement.getElementsByTagName('span')[0];
    for (var j = 0; j < numLines; j++) {
        lineNum.innerHTML += '<span>' + (j + 1) + '</span>';
    }
}

// Función para cargar código desde una URL
function getCode(resource, preElement) {
    fetch(resource)
        .then(response => response.text())
        .then(data => {
            // Eliminar líneas en blanco al principio y al final
            let cleanData = data.trim();

            // Insertar el código limpio en el <pre>
            preElement.textContent = cleanData;

            // Añadir números de línea después de cargar el código
            if ( preElement.getAttribute("data-ln") )
            {
                addLineNumber(preElement);
            }
        })
        .catch(error => {
            console.error('Error al cargar el archivo:', error);
            preElement.textContent = 'Error al cargar el código.';
        });
}

// Función para agregar números de línea a los elementos <pre> con atributo "data-ln"
function addLinesNumber() {
    var preElements = document.getElementsByTagName('pre');
    for (var i = 0; i < preElements.length; i++) {
        var ln = preElements[i].getAttribute("data-ln");
        if (ln) {
            // Asignar un id dinámico si no tiene uno
            if (!preElements[i].id) {
                preElements[i].id = generarIdUnico(preElements[i], i);
            }
            // Añadir números de línea
            addLineNumber(preElements[i]);
        }
    }
}

// Función para cargar códigos desde URLs en los elementos <pre> con atributo "data-code"
function getCodes() {
    var preElements = document.getElementsByTagName('pre');
    for (var i = 0; i < preElements.length; i++) {
        var code = preElements[i].getAttribute("data-code");
        if (code) {
            // Asignar un id dinámico si no tiene uno
            if (!preElements[i].id) {
                preElements[i].id = generarIdUnico(preElements[i], i);
            }
            // Cargar el código desde la URL
            getCode(code, preElements[i]);
        }
    }
}

// Función principal que se ejecuta al cargar la página
function go() {
    // Añadir números de línea a los elementos locales con data-ln
    addLinesNumber();
    // Cargar códigos remotos en los elementos con data-code
    getCodes();
}

go(); // Ejecutar la función principal
