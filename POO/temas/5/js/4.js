class Frigo {
    constructor()
    {
        this._color = "blanco";
        this._puerta = "cerrada";
        this._temperatura = 20;
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
        console.log(this._color);
        console.log(this._puerta);
        console.log(this._temperatura);
    }
}


const miFrigo = new Frigo();
miFrigo.muestraEstado();
