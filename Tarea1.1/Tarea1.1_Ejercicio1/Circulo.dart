import 'dart:math';

class Circulo{
  double radio;
  String? color;

  Circulo({
    required this.radio,
    this.color,
  });

  double calcularArea()
  {
    double area;
    area = pi * (this.radio*this.radio);
    return area;
  }
  
  double calcularPerimetro()
  {
    double perimetro;
    perimetro = 2 * pi * this.radio;
    return perimetro;
  }

}