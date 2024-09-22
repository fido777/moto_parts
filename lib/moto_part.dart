// Modelo de la parte de la moto
class MotoPart {
  final String name;
  final String description;
  final String imageUrl;

  MotoPart({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

// Lista de partes de la moto
final List<MotoPart> motoParts = [
  MotoPart(
    name: 'Rueda',
    description:
    'La rueda de la moto es esencial para proporcionar tracción y permitir el movimiento del vehículo. También ayuda a mantener la estabilidad y el control mientras se conduce.',
    imageUrl: 'assets/images/rueda.png', // Imagen de prueba
  ),
  MotoPart(
    name: 'Motor',
    description:
    'El motor es el corazón de la moto y es responsable de generar la potencia necesaria para mover el vehículo.',
    imageUrl: 'assets/images/motor.png',
  ),
  MotoPart(
    name: 'Dirección',
    description:
    'La dirección permite controlar la trayectoria de la moto, haciendo posible que el conductor gire y mantenga el control.',
    imageUrl: 'assets/images/direccion.png',
  ),
  MotoPart(
    name: 'Kit de Arrastre',
    description:
    'El kit de arrastre transmite la potencia del motor a la rueda trasera, permitiendo el movimiento de la moto.',
    imageUrl: 'assets/images/kit_de_arrastre.png',
  ),
  MotoPart(
    name: 'Farolas',
    description:
    'Las farolas proporcionan iluminación para poder ver en la oscuridad y ser visto por otros conductores.',
    imageUrl: 'assets/images/farola.png',
  ),
  MotoPart(
    name: 'Exosto (Tubo de escape)',
    description:
    'El tubo de escape expulsa los gases resultantes de la combustión y ayuda a reducir el ruido del motor.',
    imageUrl: 'assets/images/exosto.png',
  ),
];
