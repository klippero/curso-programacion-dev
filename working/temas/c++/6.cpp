#include <iostream>
using namespace std;

class Frigo
{
    public:

    string _color;
    string _puerta;
    int _temperatura;

    Frigo()
    {
        _color = "blanco";
        _puerta = "cerrada";
        _temperatura = 20;
    }

    void abre()
    {
        _puerta = "abierta";
    }

    void cierra()
    {
        _puerta = "cerrada";
    }

    void fija_temperatura()
    {
        cout << "se cambia la temperatura" << endl;
    }

    void muestra_estado()
    {
        cout << "Color: " << _color << " | Puerta " << _puerta << " | " << _temperatura << "ºC" << endl;
    }
};

int main() {
    Frigo mi_frigo;
    mi_frigo.muestra_estado();
    mi_frigo.abre();
    mi_frigo.muestra_estado();
    mi_frigo.cierra();
    mi_frigo.muestra_estado();
}
