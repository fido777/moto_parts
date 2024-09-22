import 'package:flutter/material.dart';
import 'moto_part.dart';

void main() {
  runApp(const MotoPartsApp());
}

class MotoPartsApp extends StatelessWidget {
  const MotoPartsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moto Parts',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.brown), // Estilo con color marrón
      ),
      home: const MotoPartsPage(),
    );
  }
}

class MotoPartsPage extends StatefulWidget {
  const MotoPartsPage({super.key});

  @override
  State<MotoPartsPage> createState() => _MotoPartsPageState();
}

class _MotoPartsPageState extends State<MotoPartsPage> {
  // Índice actual
  int _currentIndex = 0;

  // Método para ir a la parte anterior
  void _previousPart() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
      }
    });
  }

  // Método para ir a la parte siguiente
  void _nextPart() {
    setState(() {
      if (_currentIndex < motoParts.length - 1) {
        _currentIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final MotoPart currentPart = motoParts[_currentIndex];

    final theme = Theme.of(context);

    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Partes de la Moto', style: TextStyle(color: theme.colorScheme.onPrimary))),
        backgroundColor: theme.colorScheme.onPrimaryContainer,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Nombre de la parte
            Card(
              color: theme.colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  currentPart.name,
                  style: style,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Descripción de la parte
            Text(
              currentPart.description,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            // Imagen de la parte
            Expanded(
              child: Image.asset(
                currentPart.imageUrl,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),

            // Botones para navegar adelante y atrás
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Botón "Atrás"
                ElevatedButton(
                  onPressed: _previousPart,
                  child: const Icon(Icons.arrow_back),
                ),
                // Botón "Adelante"
                ElevatedButton(
                  onPressed: _nextPart,
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
