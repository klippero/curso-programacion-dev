public class Frigo
{
    private String color;
    private String puerta;
    private int temperatura;

    public Frigo()
    {
        this.color = "blanco";
        this.puerta = "cerrada";
        this.temperatura = 20;
    }

    public void abre()
    {
        System.out.println("se está abriendo");
    }

    public void cierra()
    {
        System.out.println("se está cerrando");
    }

    public void fijaTemperatura()
    {
        System.out.println("se cambia la temperatura");
    }

    public void muestraEstado()
    {
        System.out.println(this.color);
        System.out.println(this.puerta);
        System.out.println(this.temperatura);
    }

    public static void main(String[] args)
    {
        Frigo miFrigo = new Frigo();
        miFrigo.muestraEstado();
    }
}
