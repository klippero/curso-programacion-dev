#include <iostream>
using namespace std;

class Frigo
{
    public:

    string _color;
    string _puerta;
    int _temperatura;

    Frigo(string color="blanco")
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

    void fija_temperatura(int nueva_temperatura=7)
    {
        _temperatura = nueva_temperatura;
    }

    void muestra_estado()
    {
        cout << "Color: " << _color << " | Puerta " << _puerta << " | " << _temperatura << "ºC" << endl;
    }
};

int main() {
    Frigo frigo1("rojo");
    frigo1.muestra_estado();

    Frigo frigo2;
    frigo2.muestra_estado();

    frigo2.fija_temperatura(5);
    frigo2.muestra_estado();

    frigo2.fija_temperatura();
    frigo2.muestra_estado();
}
