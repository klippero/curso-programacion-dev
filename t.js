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

function addLinesNumber() {
    var preElements = document.getElementsByTagName('pre');
    for (var i = 0; i < preElements.length; i++) {
        var ln = preElements[i].getAttribute("data-ln");
        if (ln) {
            addLineNumber(preElements[i]);
        }
    }
}

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

function getCodes() {
    var preElements = document.getElementsByTagName('pre');
    for (var i = 0; i < preElements.length; i++) {
        var code = preElements[i].getAttribute("data-code");
        if (code) {
            getCode(code, preElements[i]);
        }
    }
}

// Función principal que se ejecuta al cargar la página
function go() {
    addLinesNumber();
    getCodes();
}

go(); // Ejecutar la función principal
