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

    // Sobrecarga del operador << para la impresión
    friend ostream &operator<<(ostream &os, const Frigo &f)
    {
        os << "Color: " << f._color << " | Puerta: " << f._puerta << " | " << f._temperatura << "ºC";
        return os;
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

    int para_temperatura_recomendada()
    {
        return _temperatura - 7;
    }

    int temperatura()
    {
        return _temperatura;
    }
};

int main() {
    Frigo mi_frigo("rojo");
    cout << mi_frigo.temperatura() << endl;
}
