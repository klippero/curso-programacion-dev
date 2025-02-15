class Frigo {
    constructor(color = "blanco") {
        this.color = color;
        this.puerta = "cerrada";
        this.temperatura = 20;
    }

    abre() {
        this.puerta = "abierta";
    }

    cierra() {
        this.puerta = "cerrada";
    }

    fijaTemperatura(nuevaTemperatura = -18) {
        this.temperatura = nuevaTemperatura;
    }

    toString() {
        return `Color: ${this.color} | Puerta ${this.puerta} | ${this.temperatura}ºC (${this.paraTemperaturaRecomendada()}ºC)`;
    }

    paraTemperaturaRecomendada() {
        return this.temperatura - 7;
    }

    getTemperatura() {
        return this.temperatura;
    }
}

// Creación de un objeto de la clase Frigo
f = new Frigo("rojo");

// Mostrar la temperatura actual
console.log(f.getTemperatura());
