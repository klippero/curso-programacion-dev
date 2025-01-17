import math

class Elipse:
    def __init__(self,radio1,radio2):
        self.__radio1 = radio1
        self.__radio2 = radio2

    def area(self):
        return math.pi * self.__radio1 * self.__radio2
