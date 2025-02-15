#include <iostream>
using namespace std;

class Frigo
{
    public:

    string _color;
    string _puerta;
    int _temperatura;

    Frigo(string color)
    {
        _color = color;
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

    void fija_temperatura(int nueva_temperatura)
    {
        _temperatura = nueva_temperatura;
    }

    void muestra_estado()
    {
        cout << "Color: " << _color << " | Puerta " << _puerta << " | " << _temperatura << "ºC" << endl;
    }
};

int main() {
    Frigo mi_frigo("rojo");
    mi_frigo.muestra_estado();

    Frigo otro("blanco");
    otro.muestra_estado();
}
