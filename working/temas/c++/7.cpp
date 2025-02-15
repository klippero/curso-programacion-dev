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
    Frigo mi_frigo;
    mi_frigo.muestra_estado();
    mi_frigo.fija_temperatura(-10);
    mi_frigo.muestra_estado();
}
