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
        cout << "se está abriendo" << endl;
    }

    void cierra()
    {
        cout << "se está cerrando" << endl;
    }

    void fija_temperatura()
    {
        cout << "se cambia la temperatura" << endl;
    }

    void muestra_estado()
    {
        cout << _color << endl;
        cout << _puerta << endl;
        cout << _temperatura << endl;
    }
};

int main() {
    Frigo mi_frigo;
    mi_frigo.muestra_estado();
}
