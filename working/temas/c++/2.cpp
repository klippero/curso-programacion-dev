#include <iostream>
using namespace std;

class Frigo
{
    public:

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
};

int main() {
    Frigo mi_frigo;
    mi_frigo.abre();
    mi_frigo.cierra();
    mi_frigo.fija_temperatura();
}
