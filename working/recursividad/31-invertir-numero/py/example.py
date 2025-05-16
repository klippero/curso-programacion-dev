class ListaNumeros:
    def __init__(self,*lst):
        self.__lst = lst

    def suma(self):
        return self.sum_rec(self.__lst)

    def sum_rec(self,lista):
        if len(lista) == 1:
            return lista[0]
        else:
            return lista[0] + self.sum_rec(lista[1:])


print(ListaNumeros(1,3,5,17,4).suma())
