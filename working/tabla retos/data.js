const temas =
[
    { label: 'Entorno' },
    { label: 'Clases y objetos' },
    { label: 'Métodos' },
    { label: 'Constructor' },
    { label: 'Atributos' },
    { label: 'String Formatting' },
    { label: 'Métodos que modifican el estado' },
    { label: 'Parámetros de un método' },
    { label: 'Parámetros de un constructor' },
    { label: 'Valores por defecto para parámetros' },
    { label: 'Lectura por teclado' },
    { label: 'return' },
    { label: 'Convertir a string' },
    { label: 'Consultar un atributo' },
    { label: 'IRB: interactive Ruby' },
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
];

const retos = {
    '1an': { label: "Mi gato Pipo", recorrido: "POO", tema: 1, coleccion: "animales", out_por_lenguaje: true},
    '10io-t': { label: "Pregunta nombre y años", recorrido: "POO", tema: 10, coleccion: "entradasalida"},
    '10b': { label: "Pregunta el número de viajes", recorrido: "POO", tema: 10, coleccion: "bonobús",prev:"9b"},
    '12b': { label: "Convertir a texto", recorrido: "POO", tema: 12, coleccion: "bonobús",prev:"11b"},
    '12p': { label: "Convertir a texto", recorrido: "POO", tema: 12, coleccion: "punto",prev:"9p3"},
    '12u': { label: "Convertir a texto", recorrido: "POO", tema: 12, coleccion: "cuadrado",prev:"11u"},
    '12m': { label: "Lotería Primitiva", recorrido: "POO", tema: 12, coleccion: "primitiva"},
    '12d': { label: "Convertir a texto", recorrido: "POO", tema: 12, coleccion: "dado",prev:"6d"},
    '4c': { label: "Atributo saldo", recorrido: "POO", tema: 4, coleccion: "cuenta"},
    '4b': { label: "Atributo viajes", recorrido: "POO", tema: 4, coleccion: "bonobús"},
    '8c': { label: "Apertura de cuenta con aportación", recorrido: "POO", tema: 8, coleccion: "cuenta",prev:"7c"},
    '8c-cuenta': { label: "Cantidad inicial al crear la cuenta", recorrido: "POO", tema: 8, coleccion: "cuenta"},
    '8b': { label: "Número de viajes en el constructor", recorrido: "POO", tema: 8, coleccion: "bonobús",prev:"4b"},
    '9f': { label: "Temperaturas para creación y fijar temperatura por defecto", recorrido: "POO", tema: 9, coleccion: "combi",prev:"8f"},
    '9c': { label: "Por defecto 0€", recorrido: "POO", tema: 9, coleccion: "cuenta",prev:"8c"},
    '9p1': { label: "Por defecto se crea 0,0", recorrido: "POO", tema: 9, coleccion: "punto",prev:"8p4"},
    '9p2': { label: "Por defecto se mueve a 0,0", recorrido: "POO", tema: 9, coleccion: "punto",prev:"9p1"},
    '9p3': { label: "Por defecto lo deja donde está", recorrido: "POO", tema: 9, coleccion: "punto",prev:"9p2"},
    '9b': { label: "Por defecto 10 viajes", recorrido: "POO", tema: 9, coleccion: "bonobús",prev:"8b"},
    '5c': { label: "Mostrar saldo bonito", recorrido: "POO", tema: 5, coleccion: "cuenta",prev:"4c"},
    '6c1': { label: "Intereses", recorrido: "POO", tema: 6, coleccion: "cuenta",prev:"5c"},
    '6c2': { label: "Retirar fondos", recorrido: "POO", tema: 6, coleccion: "cuenta",prev:"6c1"},
    '6f': { label: "Abrir y cerrar puertas", recorrido: "POO", tema: 6, coleccion: "combi"},
    '7c': { label: "Ingreso y reintegro", recorrido: "POO", tema: 7, coleccion: "cuenta",prev:"6c2"},
    '6d': { label: "Tirar", recorrido: "POO", tema: 6, coleccion: "dado"},
    '7f': { label: "Cambiar temperatura", recorrido: "POO", tema: 7, coleccion: "combi",prev:"6f"},
    '8p1': { label: "Construir punto con x,y", recorrido: "POO", tema: 8, coleccion: "punto"},
    '8p2': { label: "Mover a nueva posición", recorrido: "POO", tema: 8, coleccion: "punto",prev:"8p1"},
    '8p3': { label: "Mover a origen", recorrido: "POO", tema: 8, coleccion: "punto",prev:"8p2"},
    '8p4': { label: "Volver al punto anterior", recorrido: "POO", tema: 8, coleccion: "punto",prev:"8p3"},
    '8f': { label: "Temperatura inicial", recorrido: "POO", tema: 8, coleccion: "combi",prev:"7f"},
    '11u': { label: "Área", recorrido: "POO", tema: 11, coleccion: "cuadrado"},
    '11i': { label: "Calcula área y perímetro", recorrido: "POO", tema: 11, coleccion: "círculo"},
    '11g': { label: "Pasar Celsius a Fahrenheit", recorrido: "POO", tema: 11, coleccion: "grados"},
    '11b': { label: "Uso de return en info", recorrido: "POO", tema: 11, coleccion: "bonobús",prev:"10b"},
    '13u': { label: "getter lado", recorrido: "POO", tema: 13, coleccion: "cuadrado",prev:"12u"},
    '13m': { label: "getter reintegro", recorrido: "POO", tema: 13, coleccion: "primitiva",prev:"12m"},
    '13d': { label: "Tirada de 2 dados", recorrido: "POO", tema: 13, coleccion: "dado",prev:"12d"},
    '13j': { label: "Juevo con posición y vidas", recorrido: "POO", tema: 13, coleccion: "juego"},
    '13f': { label: "Dos máquinas de frío", recorrido: "POO", tema: 13, coleccion: "combi",prev:"9f"},
    '20n': { label: "Pedir números hasta par", recorrido: "POO", tema: 20, coleccion: "números"},
    '20a1': { label: "10 asteriscos", recorrido: "POO", tema: 20, coleccion: "linea"},
    '20a2': { label: "Clase Línea", recorrido: "POO", tema: 20, coleccion: "linea",prev:"20a1"},
    '20t1': { label: "Acertar un número", recorrido: "POO", tema: 20, coleccion: "aleatorio"},
    '20t2': { label: "Te has pasado o te has quedado corto", recorrido: "POO", tema: 20, coleccion: "aleatorio",prev:"20t1"},
    '21o': { label: "Triángulo equilátero con asteriscos", recorrido: "POO", tema: 21, coleccion: "triángulo",prev:"15o2"},
    '21n-factorial1': { label: "Factorial (iterando desde 0)", recorrido: "POO", tema: 21, coleccion: "números"},
    '21n-factorial2': { label: "Otro bucle (iterando desde 1)", recorrido: "POO", tema: 21, coleccion: "números"},
    '21n-factorial3': { label: "Otro bucle (no multiplicando por 1)", recorrido: "POO", tema: 21, coleccion: "números"},
    '21np1': { label: "Mostrar previos", recorrido: "POO", tema: 21, coleccion: "números"},
    '21np2': { label: "Suma de previos", recorrido: "POO", tema: 21, coleccion: "números"},
    '21np3': { label: "Suma de previos que sean divisores", recorrido: "POO", tema: 21, coleccion: "números"},
    '15b': { label: "Métodos para recarga y usar", recorrido: "POO", tema: 15, coleccion: "bonobús",prev:"12b"},
    '15r': { label: "Área, perímetro y agrandar", recorrido: "POO", tema: 15, coleccion: "rectángulo"},
    '18c': { label: "No reintegrar más del saldo", recorrido: "POO", tema: 18, coleccion: "cuenta",prev:"17c"},
    '18p': { label: "¿En qué cuadrante?", recorrido: "POO", tema: 18, coleccion: "punto",prev:"15p3"},
    '26cr1': { label: "CajaRegistradora add", recorrido: "POO", tema: 26, coleccion: "registradora"},
    '26cr2': { label: "Convertir a float", recorrido: "POO", tema: 26, coleccion: "registradora",prev:"26cr1"},
    '26cr3': { label: "take", recorrido: "POO", tema: 26, coleccion: "registradora",prev:"26cr2"},
    '26cr4': { label: "Operador <<", recorrido: "POO", tema: 26, coleccion: "registradora",prev:"26cr3"},
    '27cr': { label: "Caja registradora", recorrido: "POO", tema: 27, coleccion: "registradora",prev:"26cr4"},
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
    '19p2': { label: "¿En el origen?", recorrido: "POO", tema: 19, coleccion: "punto",prev:"19p1"},
    '19p3': { label: "¿En este cuadrante?", recorrido: "POO", tema: 19, coleccion: "punto",prev:"19p2"},
    '19n': { label: "¿Es par?", recorrido: "POO", tema: 19, coleccion: "números"},
    '19f': { label: "¿Temperaturas recomendadas?", recorrido: "POO", tema: 19, coleccion: "combi",prev:"17f"},
    '19b': { label: "¿Último viaje?", recorrido: "POO", tema: 19, coleccion: "bonobús",prev:"18b"},
    '20.4.1.factores': { label: "Descomponer en factores primos (primero para un único factor)", recorrido: "POO", tema: 20, coleccion: "primos",prev:"20n.siguientePrimo"},
    '20.4.2.factores': { label: "Descomponer en factores primos (múltiples factores)", recorrido: "POO", tema: 20, coleccion: "primos",prev:"20.4.1.factores"},
    '27.4.3.factores': { label: "Factores", recorrido: "POO", tema: 27, coleccion: "primos",prev:"20.4.2.factores"},
    '27.5.factores-negativos': { label: "Factores negativos", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.4.3.factores"},
    '27.6.desfactoriza': { label: "Desfactoriza", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.5.factores-negativos"},
    '27.7.mcm': { label: "mcm", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.6.desfactoriza"},
    '27.s.1.MCD': { label: "MCD", recorrido: "POO", tema: 27, coleccion: "primos",prev:"27.7.mcm"},
    '27.s.2.a.fraccion': { label: "27.s.2.a.fraccion", recorrido: "POO", tema: 27, coleccion: "primos"},
    '27.s.2.b.canonica': { label: "27.s.2.b.canonica", recorrido: "POO", tema: 27, coleccion: "primos"},
    '27.s.2.c.propia': { label: "27.s.2.c.propia", recorrido: "POO", tema: 27, coleccion: "primos"},
    '27.s.2.d.getPropia': { label: "27.s.2.d.getPropia", recorrido: "POO", tema: 27, coleccion: "primos"},
    '27.s.2.e.unidades': { label: "27.s.2.e.unidades", recorrido: "POO", tema: 27, coleccion: "primos"},
    '27.s.2.f.sumar': { label: "27.s.2.f.sumar", recorrido: "POO", tema: 27, coleccion: "primos"},
    '27.s.2.f2.sumar': { label: "27.s.2.f2.sumar", recorrido: "POO", tema: 27, coleccion: "primos"},
    '24tm5': { label: "Operador mayor >", recorrido: "POO", tema: 24, coleccion: "tiempo",prev:"24tm4"},
    '24tm6': { label: "Operador *", recorrido: "POO", tema: 24, coleccion: "tiempo",prev:"24tm5"},
    '24r': { label: "Resize", recorrido: "POO", tema: 24, coleccion: "rectángulo",prev:"23r"},
    '24a': { label: "Resize", recorrido: "POO", tema: 24, coleccion: "linea",prev:"23a"},
};

const colecciones =
{
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