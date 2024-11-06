function getCode(resource, preElement) {
    fetch(resource)
        .then(response => response.text())
        .then(data => {
            let cleanData = data.trimEnd();
            preElement.textContent = cleanData;

            var colorize = preElement.getAttribute("data-colorize");
            if (colorize && colorize == "true")
            {
                Prism.highlightElement(preElement);
            }

            var ln = preElement.getAttribute("data-ln");
            if (ln && ln == "true") {
                addLineNumber(preElement);
            }
        })
        .catch(error => {
            console.error('Error al cargar el archivo:', error);
            preElement.textContent = 'Error al cargar el código.';
        });
}

// Función para copiar el contenido del bloque de código sin los números de línea ni HTML
function copiarAlPortapapeles(preElement, buttonElement) {
    // Obtener el contenido del bloque <code> dentro del <pre>
    const codeElement = preElement.querySelector('code') || preElement;
    
    // Extraer el texto visible dentro del <code>
    const codeText = codeElement.innerText;

    navigator.clipboard.writeText(codeText).then(() => {
        // Cambiar el texto del botón para indicar que el código ha sido copiado
        buttonElement.textContent = 'Copiado!';
        buttonElement.classList.add('copied');

        // Restablecer el botón después de 2 segundos
        setTimeout(() => {
            buttonElement.textContent = 'Copiar';
            buttonElement.classList.remove('copied');
        }, 2000); 
    }).catch(err => {
        console.error('Error al copiar el texto: ', err);
    });
}

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

function copy(pre)
{
    result = ""
    lines = pre.innerText.split("\n");
    i = 0
    while ( lines[i] && parseInt(lines[i],10) == i+1 && i<lines.length )
    {
        i = i + 1;
    }

    while ( i<lines.length )
    {
        result += lines[i] + "\n";
        i = i + 1
    }

    navigator.clipboard.writeText(result).then(() => {
    }).catch(err => {
        console.error('Error al copiar el texto: ', err);
    });
    alert("Copiado");
}

function pres()
{
    var preElements = document.getElementsByTagName('pre');
    for (var i = 0; i < preElements.length; i++) 
    {
        const preElement = preElements[i];
        preElements[i].addEventListener("click", () => 
            {
                preElement.addEventListener('click', () => copy(preElement));
            }
        );

        var code = preElement.getAttribute("data-code");
        var ln = preElement.getAttribute("data-ln");
        var colorize = preElement.getAttribute("data-colorize");

        if (code) {
            getCode(code, preElement);
        }

        if (colorize && colorize == "true" && !code) {
            Prism.highlightElement(preElement);
        }

        if (ln && ln == "true" && !code) {
            addLineNumber(preElements[i]);
        }
    }
}

pres();
