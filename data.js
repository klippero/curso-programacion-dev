const root_path = "https://raw.githubusercontent.com/klippero/curso-programacion-dev/refs/heads/main/";

const recorridos = {
    "POO":
    {
        label: "Programación Orientada a Objetos",
        temas: 
        [
            { 
                label: 'Entorno',
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
            { label: 'String formatting' },
            { label: 'Métodos que modifican el estado' },
            { label: 'Métodos que modifican el estado' },
            { label: 'Parámetros de un método' },
            { label: 'Parámetros de un constructor' },
            { label: 'Valores por defecto para parámetros' },
            { label: 'Lectura por teclado' },
            { label: 'return' },
            { label: 'Convertir a string' },
            { label: 'Consultar un atributo' },
            { label: 'Operadores aritméticos' },
            { label: 'Operadores relacionales' },
            { label: 'if else' },
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
                label: 'Ficheros',
                secciones:
                [
                    { label: 'Lectura' },
                    { label: 'Escritura' },
                    { label: 'Añadir' },
                    { label: 'Comprobar si existe un fichero' },
                    { label: 'Datos separados por comas' },
                    { label: 'Objetos' }
                ]
            },
/*            {
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
              */
        ]
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
    '1an': { label: "Mi gato Pipo", recorrido: "POO", tema: 1, coleccion: "animales", out_por_lenguaje: true},
    '11io-t': { label: "Pregunta nombre y años", recorrido: "POO", tema: 11, coleccion: "entradasalida"},
    '11b': { label: "Pregunta el número de viajes", recorrido: "POO", tema: 11, coleccion: "bonobús",prev:"10b"},
    '13b': { label: "Convertir a texto", recorrido: "POO", tema: 13, coleccion: "bonobús",prev:"12b"},
    '13p': { label: "Convertir a texto", recorrido: "POO", tema: 13, coleccion: "punto",prev:"10p3"},
    '13u': { label: "Convertir a texto", recorrido: "POO", tema: 13, coleccion: "cuadrado",prev:"12u"},
    '13m': { label: "Lotería Primitiva", recorrido: "POO", tema: 13, coleccion: "primitiva"},
    '13d': { label: "Convertir a texto", recorrido: "POO", tema: 13, coleccion: "dado",prev:"7d"},
    '4c': { label: "Atributo saldo", recorrido: "POO", tema: 4, coleccion: "cuenta"},
    '4b': { label: "Atributo viajes", recorrido: "POO", tema: 4, coleccion: "bonobús"},
    '9c': { label: "Apertura de cuenta con aportación", recorrido: "POO", tema: 9, coleccion: "cuenta",prev:"8c"},
    '9c-cuenta': { label: "Cantidad inicial al crear la cuenta", recorrido: "POO", tema: 9, coleccion: "cuenta"},
    '9b': { label: "Número de viajes en el constructor", recorrido: "POO", tema: 9, coleccion: "bonobús",prev:"4b"},
    '10f': { label: "Temperaturas para creación y fijar temperatura por defecto", recorrido: "POO", tema: 10, coleccion: "combi",prev:"9f"},
    '10c': { label: "Por defecto 0€", recorrido: "POO", tema: 10, coleccion: "cuenta",prev:"9c"},
    '10p1': { label: "Por defecto se crea 0,0", recorrido: "POO", tema: 10, coleccion: "punto",prev:"9p4"},
    '10p2': { label: "Por defecto se mueve a 0,0", recorrido: "POO", tema: 10, coleccion: "punto",prev:"10p1"},
    '10p3': { label: "Por defecto lo deja donde está", recorrido: "POO", tema: 10, coleccion: "punto",prev:"10p2"},
    '10b': { label: "Por defecto 10 viajes", recorrido: "POO", tema: 10, coleccion: "bonobús",prev:"9b"},
    '5c': { label: "Mostrar saldo bonito", recorrido: "POO", tema: 5, coleccion: "cuenta",prev:"4c"},
    '7c1': { label: "Intereses", recorrido: "POO", tema: 7, coleccion: "cuenta",prev:"5c"},
    '7c2': { label: "Retirar fondos", recorrido: "POO", tema: 7, coleccion: "cuenta",prev:"7c1"},
    '7f': { label: "Abrir y cerrar puertas", recorrido: "POO", tema: 7, coleccion: "combi"},
    '8c': { label: "Ingreso y reintegro", recorrido: "POO", tema: 8, coleccion: "cuenta",prev:"7c2"},
    '7d': { label: "Tirar", recorrido: "POO", tema: 7, coleccion: "dado"},
    '8f': { label: "Cambiar temperatura", recorrido: "POO", tema: 8, coleccion: "combi",prev:"7f"},
    '9p1': { label: "Construir punto con x,y", recorrido: "POO", tema: 9, coleccion: "punto"},
    '9p2': { label: "Mover a nueva posición", recorrido: "POO", tema: 9, coleccion: "punto",prev:"9p1"},
    '9p3': { label: "Mover a origen", recorrido: "POO", tema: 9, coleccion: "punto",prev:"9p2"},
    '9p4': { label: "Volver al punto anterior", recorrido: "POO", tema: 9, coleccion: "punto",prev:"9p3"},
    '9f': { label: "Temperatura inicial", recorrido: "POO", tema: 9, coleccion: "combi",prev:"8f"},
    '12u': { label: "Área", recorrido: "POO", tema: 12, coleccion: "cuadrado"},
    '12i': { label: "Calcula área y perímetro", recorrido: "POO", tema: 12, coleccion: "círculo"},
    '12g': { label: "Pasar Celsius a Fahrenheit", recorrido: "POO", tema: 12, coleccion: "grados"},
    '12b': { label: "Uso de return en info", recorrido: "POO", tema: 12, coleccion: "bonobús",prev:"11b"},
    '14u': { label: "getter lado", recorrido: "POO", tema: 14, coleccion: "cuadrado",prev:"13u"},
    '14m': { label: "getter reintegro", recorrido: "POO", tema: 14, coleccion: "primitiva",prev:"13m"},
    '14d': { label: "Tirada de 2 dados", recorrido: "POO", tema: 14, coleccion: "dado",prev:"13d"},
    '14j': { label: "Juego con posición y vidas", recorrido: "POO", tema: 14, coleccion: "juego"},
    '14f': { label: "Dos máquinas de frío", recorrido: "POO", tema: 14, coleccion: "combi",prev:"10f"},
    '20n': { label: "Pedir números hasta par", recorrido: "POO", tema: 20, coleccion: "números"},
    '20a1': { label: "10 asteriscos", recorrido: "POO", tema: 20, coleccion: "linea"},
    '20a2': { label: "Clase Línea", recorrido: "POO", tema: 20, coleccion: "linea",prev:"20a1"},
    '20t1': { label: "Acertar un número", recorrido: "POO", tema: 20, coleccion: "aleatorio"},
    '20t2': { label: "Te has pasado o te has quedado corto", recorrido: "POO", tema: 20, coleccion: "aleatorio",prev:"20t1"},
    '20t3': { label: "Número de intentos", recorrido: "POO", tema: 20, coleccion: "aleatorio",prev:"20t2"},
    '20u': { label: "Dibujar con asteriscos", recorrido: "POO", tema: 20, coleccion: "cuadrado",prev:"15u"},
    '20np1': { label: "Mostrar previos", recorrido: "POO", tema: 20, coleccion: "números"},
    '20np2': { label: "Suma de previos", recorrido: "POO", tema: 20, coleccion: "números"},
    '20np3': { label: "Suma de previos que sean divisores", recorrido: "POO", tema: 20, coleccion: "números"},
    '20np4': { label: "¿Es perfecto?", recorrido: "POO", tema: 20, coleccion: "números"},
    '20np5': { label: "Mostrar los perfectos menores", recorrido: "POO", tema: 20, coleccion: "números"},
    '20np6': { label: "Potencia", recorrido: "POO", tema: 20, coleccion: "números"},
    '20np7': { label: "¿Cuadrado perfecto?", recorrido: "POO", tema: 20, coleccion: "números"},
    '20np7-2': { label: "¿Cuadrado perfecto? con while", recorrido: "POO", tema: 20, coleccion: "números"},
    '20np8': { label: "Cuadrados perfectos menores", recorrido: "POO", tema: 20, coleccion: "números"},
    '20n-factorial': { label: "Factorial (iterando por condición)", recorrido: "POO", tema: 20, coleccion: "números"},
    '20n-primo1': { label: "Primo. Mostrar los menores", recorrido: "POO", tema: 20, coleccion: "primos"},
    '20n-primo2': { label: "Primo. Mostrar hasta un divisor", recorrido: "POO", tema: 20, coleccion: "primos",prev:"20n-primo1"},
    '20n-primo3': { label: "Primo. Devuelve true o false", recorrido: "POO", tema: 20, coleccion: "primos",prev:"20n-primo2"},
    '20n-primo4': { label: "Primos menores", recorrido: "POO", tema: 20, coleccion: "primos",prev:"20n-primo3"},
    '20n.siguientePrimo': { label: "Siguiente primo", recorrido: "POO", tema: 20, coleccion: "primos",prev:"20n-primo4"},
    '21a': { label: "Bucle", recorrido: "POO", tema: 21, coleccion: "linea",prev:"20a2"},
    '21u': { label: "Asteríscos con bucles iterativos", recorrido: "POO", tema: 21, coleccion: "cuadrado",prev:"20u"},
    '21r': { label: "Rectángulo con asteriscos", recorrido: "POO", tema: 21, coleccion: "rectángulo",prev:"15r"},
    '21o': { label: "Triángulo equilátero con asteriscos", recorrido: "POO", tema: 21, coleccion: "triángulo",prev:"15o2"},
    '21n-factorial1': { label: "Factorial (iterando desde 0)", recorrido: "POO", tema: 21, coleccion: "números"},
    '21n-factorial2': { label: "Otro bucle (iterando desde 1)", recorrido: "POO", tema: 21, coleccion: "números"},
    '21n-factorial3': { label: "Otro bucle (no multiplicando por 1)", recorrido: "POO", tema: 21, coleccion: "números"},
    '21np1': { label: "Mostrar previos", recorrido: "POO", tema: 21, coleccion: "números"},
    '21np2': { label: "Suma de previos", recorrido: "POO", tema: 21, coleccion: "números"},
    '21np3': { label: "Suma de previos que sean divisores", recorrido: "POO", tema: 21, coleccion: "números"},
    '21np4': { label: "¿Es perfecto?", recorrido: "POO", tema: 21, coleccion: "números"},
    '21np5': { label: "Mostrar los perfectos menores", recorrido: "POO", tema: 21, coleccion: "números"},
    '21np6': { label: "Potencia", recorrido: "POO", tema: 21, coleccion: "números"},
    '23u0': { label: "Operador ==", recorrido: "POO", tema: 23, coleccion: "cuadrado",prev:"21u"},
    '23u1': { label: "Operadores relacionales", recorrido: "POO", tema: 23, coleccion: "cuadrado",prev:"23u0"},
    '23u2': { label: "Operador +", recorrido: "POO", tema: 23, coleccion: "cuadrado",prev:"23u1"},
    '23u3': { label: "Operador << (suma destructiva)", recorrido: "POO", tema: 23, coleccion: "cuadrado",prev:"23u2"},
    '23a': { label: "Operador +", recorrido: "POO", tema: 23, coleccion: "linea",prev:"23a-relacionales"},
    '23r': { label: "Operadores del rectángulo", recorrido: "POO", tema: 23, coleccion: "rectángulo",prev:"21r"},
    '23t': { label: "Operador ==", recorrido: "POO", tema: 23, coleccion: "aleatorio",prev:"22t"},
    '23le-sumaListas': { label: "Operador +", recorrido: "POO", tema: 23, coleccion: "listaenteros"},
    '23le-sumaListas2': { label: "Permitiendo un array o una Lista como parámetro", recorrido: "POO", tema: 23, coleccion: "listaenteros"},
    '23fr': { label: "Producto de fracciones", recorrido: "POO", tema: 23, coleccion: "fracción"},
    '23p': { label: "Operador suma", recorrido: "POO", tema: 23, coleccion: "punto",prev:"110p3"},
    '23le-restaListas': { label: "Operador -", recorrido: "POO", tema: 23, coleccion: "listaenteros"},
    '23a-relacionales': { label: "Operadores relacionales", recorrido: "POO", tema: 23, coleccion: "linea",prev:"21a"},
    '29a1': { label: "Gráfico con key arguments", recorrido: "POO", tema: 29, coleccion: "linea",prev:"28a3"},
    '29a2': { label: "Gráfico con key arguments con valores por defecto", recorrido: "POO", tema: 29, coleccion: "linea",prev:"29a1"},
    '17b': { label: "Número de viajes mayor que 0", recorrido: "POO", tema: 17, coleccion: "bonobús",prev:"15b"},
    '18c': { label: "Saldo positivo", recorrido: "POO", tema: 17, coleccion: "cuenta",prev:"15c-f"},
    '17d1': { label: "Dobles", recorrido: "POO", tema: 17, coleccion: "dado",prev:"14d"},
    '17d2': { label: "Mejor tirada", recorrido: "POO", tema: 17, coleccion: "dado",prev:"17d1"},
    '18f': { label: "Alerta temperatura alta", recorrido: "POO", tema: 17, coleccion: "combi",prev:"14f"},
    '17n1': { label: "¿Es un número divisor de otro?", recorrido: "POO", tema: 17, coleccion: "números"},
    '17n2': { label: "es_multiplo_de", recorrido: "POO", tema: 17, coleccion: "números",prev:"17n1"},
    '17edades': { label: "Cuando nació cada uno", recorrido: "POO", tema: 17, coleccion: "edades"},
    '19b': { label: "No usar más de los disponibles", recorrido: "POO", tema: 18, coleccion: "bonobús",prev:"17b"},
    '15c-a': { label: "Pedir nombre y aportación", recorrido: "POO", tema: 15, coleccion: "cuenta",prev:"10c"},
    '15c-b': { label: "Crear objeto y convertir a texto", recorrido: "POO", tema: 15, coleccion: "cuenta",prev:"15c-a"},
    '15c-c': { label: "Ingresar", recorrido: "POO", tema: 15, coleccion: "cuenta",prev:"15c-b"},
    '15c-d': { label: "Cálculo de intereses", recorrido: "POO", tema: 15, coleccion: "cuenta",prev:"15c-d"},
    '15c-e': { label: "Liquidar intereses", recorrido: "POO", tema: 15, coleccion: "cuenta",prev:"15c-d"},
    '15c-f': { label: "Retirar", recorrido: "POO", tema: 15, coleccion: "cuenta",prev:"15c-e"},
    '15p1': { label: "Distancia al origen", recorrido: "POO", tema: 15, coleccion: "punto",prev:"13p"},
    '15p2': { label: "Distancia a otro punto", recorrido: "POO", tema: 15, coleccion: "punto",prev:"15p1"},
    '15p3': { label: "Distancia con parámetro por defecto al origen", recorrido: "POO", tema: 15, coleccion: "punto",prev:"15p2"},
    '15g': { label: "Celsius, Fahrenheit y Kelvin", recorrido: "POO", tema: 15, coleccion: "grados",prev:"12g"},
    '15t-dedos': { label: "Saca dedos", recorrido: "POO", tema: 15, coleccion: "aleatorio"},
    '15o1': { label: "Pide datos y calcula área", recorrido: "POO", tema: 15, coleccion: "triángulo"},
    '15o2': { label: "Clase Triángulo", recorrido: "POO", tema: 15, coleccion: "triángulo",prev:"15o1"},
    '15l1': { label: "Pide datos y calcula área", recorrido: "POO", tema: 15, coleccion: "elipse"},
    '15l2': { label: "Clase Elipse", recorrido: "POO", tema: 15, coleccion: "elipse",prev:"15l1"},
    '15u': { label: "Agrandar", recorrido: "POO", tema: 15, coleccion: "cuadrado",prev:"14u"},
    '15b': { label: "Métodos para recarga y usar", recorrido: "POO", tema: 15, coleccion: "bonobús",prev:"13b"},
    '15r': { label: "Área, perímetro y agrandar", recorrido: "POO", tema: 15, coleccion: "rectángulo"},
    '19c': { label: "No reintegrar más del saldo", recorrido: "POO", tema: 18, coleccion: "cuenta",prev:"18c"},
    '18p': { label: "¿En qué cuadrante?", recorrido: "POO", tema: 18, coleccion: "punto",prev:"15p3"},
    '26cr1': { label: "CajaRegistradora add", recorrido: "POO", tema: 26, coleccion: "registradora"},
    '26cr2': { label: "Convertir a float", recorrido: "POO", tema: 26, coleccion: "registradora",prev:"26cr1"},
    '26cr3': { label: "take", recorrido: "POO", tema: 26, coleccion: "registradora",prev:"26cr2"},
    '26cr4': { label: "Operador <<", recorrido: "POO", tema: 26, coleccion: "registradora",prev:"26cr3"},
    '28cr': { label: "Caja registradora", recorrido: "POO", tema: 27, coleccion: "registradora",prev:"26cr4"},
    '18e1': { label: "Una condición para bisiestos", recorrido: "POO", tema: 18, coleccion: "fechas"},
    '18e2': { label: "Dos condiciones para bisiestos", recorrido: "POO", tema: 18, coleccion: "fechas",prev:"18e1"},
    '18e3': { label: "Tres condiciones para bisiestos", recorrido: "POO", tema: 18, coleccion: "fechas",prev:"18e2"},
    '27ed1': { label: "Mostrar claves", recorrido: "POO", tema: 27, coleccion: "edades",prev:"17edades"},
    '27ed2': { label: "Mostrar claves ordenadas", recorrido: "POO", tema: 27, coleccion: "edades",prev:"27ed1"},
    '27ed3': { label: "Mostrar valores", recorrido: "POO", tema: 27, coleccion: "edades",prev:"27ed2"},
    '27ed4': { label: "Contar", recorrido: "POO", tema: 27, coleccion: "edades",prev:"27ed3"},
    '27ed5': { label: "Mayor", recorrido: "POO", tema: 27, coleccion: "edades",prev:"27ed4"},
    '27ed6': { label: "Reverse", recorrido: "POO", tema: 27, coleccion: "edades",prev:"27ed5"},
    '22le-suma': { label: "Sumar los elementos de una lista", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-mayor': { label: "Buscar el mayor elemento", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-contar': { label: "Contar apariciones", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-remove': { label: "Nueva lista sin un elemento", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-pos-mayor': { label: "Posición del mayor elemento", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-esta': { label: "¿Está en la lista?", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-removeDuplicates': { label: "Elimina duplicados", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-hayPar': { label: "¿Hay algún par?", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-pos-item': { label: "Posición de un elemento", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22mp1': { label: "Primitiva usando lista", recorrido: "POO", tema: 22, coleccion: "primitiva",prev:"14m"},
    '22mp2': { label: "Evitando repetidos", recorrido: "POO", tema: 22, coleccion: "primitiva",prev:"22mp1"},
    '22mbp1': { label: "Bombo de primitiva", recorrido: "POO", tema: 22, coleccion: "primitiva",prev:"22mp2"},
    '22mbp2': { label: "Extraer bola", recorrido: "POO", tema: 22, coleccion: "primitiva",prev:"22mbp1"},
    '22mbp3': { label: "Mover el bombo", recorrido: "POO", tema: 22, coleccion: "primitiva",prev:"22mbp2"},
    '22mbp4': { label: "Primitiva con bombo", recorrido: "POO", tema: 22, coleccion: "primitiva",prev:"22mbp3"},
    '22lp-firstandlast': { label: "Contar palabras con primera y última letras iguales", recorrido: "POO", tema: 22, coleccion: "listapalabras"},
    '22le-contarPares': { label: "Contar pares", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-smallest': { label: "El más pequeño", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22n-divisores': { label: "Obtener los divisores", recorrido: "POO", tema: 22, coleccion: "números"},
    '22le-sumaListas': { label: "Sumar listas", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-sumaListasDestruct': { label: "Sumar listas destructiva", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-restaListas': { label: "Resta listas", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-restaListasDestr': { label: "Resta listas destructivo", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22t': { label: "Adivinar número sin repetir", recorrido: "POO", tema: 22, coleccion: "aleatorio",prev:"20t3"},
    '22est-media': { label: "Media", recorrido: "POO", tema: 22, coleccion: "estadistica"},
    '22est-mediana': { label: "Mediana", recorrido: "POO", tema: 22, coleccion: "estadistica",prev:"22est-media"},
    '22le-shufleDest': { label: "Barajar (destructivo)", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '22le-shufle': { label: "Barajar (no destructivo)", recorrido: "POO", tema: 22, coleccion: "listaenteros"},
    '27est-moda1': { label: "Moda", recorrido: "POO", tema: 27, coleccion: "estadistica",prev:"22est-mediana"},
    '27est-moda2': { label: "Moda múltiple", recorrido: "POO", tema: 27, coleccion: "estadistica",prev:"27est-moda1"},
    '0hw': { label: "Hello world", recorrido: "POO", tema: 0, coleccion: "hw"},
    '26mp': { label: "Constantes", recorrido: "POO", tema: 26, coleccion: "primitiva",prev:"22mbp4"},
    '27md-claves': { label: "Claves", recorrido: "POO", tema: 27, coleccion: "midiccionario"},
    '27md-valores': { label: "Valores", recorrido: "POO", tema: 27, coleccion: "midiccionario",prev:"27md-claves"},
    '27md-inverso': { label: "Inverso", recorrido: "POO", tema: 27, coleccion: "midiccionario",prev:"27md-valores"},
    '27md-randomkey': { label: "Random key", recorrido: "POO", tema: 27, coleccion: "midiccionario",prev:"27md-inverso"},
    '21n-a1': { label: "Números amigos. Método amigo", recorrido: "POO", tema: 21, coleccion: "números"},
    '21n-a2': { label: "Números amigos. Método amigo?", recorrido: "POO", tema: 21, coleccion: "números"},
    '21n-a3': { label: "Números amigos. Método muestra_amigos_previos", recorrido: "POO", tema: 21, coleccion: "números"},
    '110p1': { label: "¿En la diagonal?", recorrido: "POO", tema: 19, coleccion: "punto",prev:"18p"},
    '110p2': { label: "¿En el origen?", recorrido: "POO", tema: 19, coleccion: "punto",prev:"110p1"},
    '110p3': { label: "¿En este cuadrante?", recorrido: "POO", tema: 19, coleccion: "punto",prev:"110p2"},
    '19n': { label: "¿Es par?", recorrido: "POO", tema: 19, coleccion: "números"},
    '110f': { label: "¿Temperaturas recomendadas?", recorrido: "POO", tema: 19, coleccion: "combi",prev:"18f"},
    '110b': { label: "¿Último viaje?", recorrido: "POO", tema: 19, coleccion: "bonobús",prev:"19b"},
    '20.4.1.factores': { label: "Descomponer en factores primos (primero para un único factor)", recorrido: "POO", tema: 20, coleccion: "primos",prev:"20n.siguientePrimo"},
    '20.4.2.factores': { label: "Descomponer en factores primos (múltiples factores)", recorrido: "POO", tema: 20, coleccion: "primos",prev:"20.4.1.factores"},
    '27.4.3.factores': { label: "Factores", recorrido: "POO", tema: 27, coleccion: "primos",prev:"20.4.2.factores"},
    '27.5.factores-negativos': { label: "Factores negativos", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.4.3.factores"},
    '27.6.desfactoriza': { label: "Desfactoriza", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.5.factores-negativos"},
    '27.7.mcm': { label: "mcm", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.6.desfactoriza"},
    '27.s.1.MCD': { label: "MCD", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.7.mcm"},
    '27.s.2.a.fraccion': { label: "Fracción", recorrido: "POO", tema: 13, coleccion: "primos"},
    '27.s.2.b.canonica': { label: "Canónica", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.2.a.fraccion"},
    '27.s.2.c.propia': { label: "¿Es propia?", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.2.b.canonica"},
    '27.s.2.d.getPropia': { label: "Obtener fracción propia", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.2.c.propia"},
    '27.s.2.e.unidades': { label: "Unidades", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.2.d.getPropia"},
    '27.s.2.f.sumar': { label: "Sumar fracciones", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.2.e.unidades"},
    '27.s.2.g.restar': { label: "Restar fracciones", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.2.f.sumar"},
    '27.s.2.h.multiplicar': { label: "Multiplicar fracciones", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.2.g.restar"},
    '27.s.2.i.dividir': { label: "Dividir fracciones", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.2.h.multiplicar"},
    '27.s.3.a.mixtos': { label: "Números mixtos", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.2.i.dividir"},
    '27.s.3.b.simplificar': { label: "Simplificar mixto", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.3.a.mixtos"},
    '27.s.3.c.canonica': { label: "Simplificar a fracción canónica", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.3.b.simplificar"},
    '27.s.3.d.to_fraccion': { label: "Convertir a fracción", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.3.c.canonica"},
    '27.s.3.e.to_mixto': { label: "Convertir a mixto", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.3.d.to_fraccion"},
    '27.s.3.f.sumar': { label: "Sumar números mixtos", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.3.e.to_mixto"},
    '27.s.3.g.restar': { label: "Restar números", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.s.3.f.sumar"},
    '24tm1': { label: "Clase Tiempo", recorrido: "POO", tema: 24, coleccion: "tiempo"},
    '24tm2': { label: "Segundos", recorrido: "POO", tema: 24, coleccion: "tiempo",prev:"24tm1"},
    '24tm3': { label: "Suma +", recorrido: "POO", tema: 24, coleccion: "tiempo",prev:"24tm2"},
    '24tm4': { label: "Suma destructiva <<", recorrido: "POO", tema: 24, coleccion: "tiempo",prev:"24tm3"},
    '24tm5': { label: "Operador mayor >", recorrido: "POO", tema: 24, coleccion: "tiempo",prev:"24tm4"},
    '24tm6': { label: "Operador *", recorrido: "POO", tema: 24, coleccion: "tiempo",prev:"24tm5"},
    '24r': { label: "Resize", recorrido: "POO", tema: 24, coleccion: "rectángulo",prev:"23r"},
    '24a': { label: "Resize", recorrido: "POO", tema: 24, coleccion: "linea",prev:"23a"},
    '29cr1': { label: "Parámetros por defecto", recorrido: "POO", tema: 28, coleccion: "registradora",prev:"28cr"},
    '29cr2': { label: "Parámetro esponja add", recorrido: "POO", tema: 28, coleccion: "registradora",prev:"29cr1"},
    '29cr3': { label: "Parámetro esponja take", recorrido: "POO", tema: 28, coleccion: "registradora",prev:"29cr2"},
    '28le-suma': { label: "Suma lista", recorrido: "POO", tema: 28, coleccion: "listaenteros"},
    '29c': { label: "Ingreso y reintegro con esponja", recorrido: "POO", tema: 28, coleccion: "cuenta",prev:"19c",prev:"19c"},
    '28a1': { label: "Gráfico con esponja", recorrido: "POO", tema: 28, coleccion: "linea",prev:"24a"},
    '28a2': { label: "Gráfico con números", recorrido: "POO", tema: 28, coleccion: "linea",prev:"28a1"},
    '28a3': { label: "Gráfico con chars diferentes", recorrido: "POO", tema: 28, coleccion: "linea",prev:"28a2"},
    '28est': { label: "Media, mediana y moda con esponja", recorrido: "POO", tema: 28, coleccion: "estadistica",prev:"27est-moda2"},
    '30c1': { label: "Leer saldo de fichero", recorrido: "POO", tema: 30, seccion: 1, coleccion: "cuenta",prev:"29c"},
    '30c2': { label: "Escribir el saldo", recorrido: "POO", tema: 30, seccion: 2, coleccion: "cuenta",prev:"30c1"},
    '30c3': { label: "Añadir movimientos a un fichero", recorrido: "POO", tema: 30, seccion: 3, coleccion: "cuenta",prev:"30c2"},
    '30c4': { label: "Comprobar si existe el fichero de saldo", recorrido: "POO", tema: 30, seccion: 4, coleccion: "cuenta",prev:"30c3"},
    '306cr': { label: "Guardar la caja en un fichero", recorrido: "POO", tema: 30, seccion: 6, coleccion: "registradora",prev:"29cr3"},
};

for(let retoId in retos)
{
    if (retos[retoId].prev)
    {
        retos[retos[retoId].prev].next = retoId
    }
}

const colecciones = {
    'animales': { label: 'animales' },
    'bonobús': { label: 'bonobús' },
    'cuenta': { label: 'cuenta' },
    'dado': { label: 'dado' },
    'combi': { label: 'frigorífico combi' },
    'estadistica': { label: 'estadística' },
    'grados': { label: 'grados' },
    'círculo': { label: 'círculo' },
    'entradasalida': { label: 'entradasalida' },
    'juego': { label: 'juego' },
    'primitiva': { label: 'primitiva' },
    'punto': { label: 'punto' },
    'cuadrado': { label: 'cuadrado' },
    'registradora':{label:'caja registradora'},
    'listaenteros':{label:'lista enteros'},
    'edades':{label:'edades'},
    'midiccionario':{label:'midiccionario'},
    'elipse':{label:'elipse'},
    'triángulo':{label:'triángulo'},
    'rectángulo':{label:'rectángulo'},
    'aleatorio':{label:'aleatorio'},
    'números':{label:'números'},
    'fechas':{label:'fechas'},
    'primos':{label:'primos'},
    'fracción':{label:'fracciones'},
    'tiempo':{label:'tiempo'},
    'linea':{label:'línea'}
    };

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
