class Frigo {
    #color;
    #puerta;
    #temperatura;

    constructor()
    {
        this.#color = "blanco";
        this.#puerta = "cerrada";
        this.#temperatura = 20;
    }

    abre()
    {
        console.log("se está abriendo");
    }

    cierra()
    {
        console.log("se está cerrando");
    }

    fijaTemperatura()
    {
        console.log("se cambia la temperatura");
    }

    muestraEstado()
    {
        console.log(this.#color);
        console.log(this.#puerta);
        console.log(this.#temperatura);
    }
}


const miFrigo = new Frigo();
miFrigo.muestraEstado();
