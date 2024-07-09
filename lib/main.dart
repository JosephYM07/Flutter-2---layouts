import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Lugares Turísticos de Ecuador';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              TouristPlace(
                name: 'Mitad del Mundo',
                location: 'Quito, Ecuador',
                description: 'El monumento a la Mitad del Mundo es una atracción turística ubicada en la parroquia de San Antonio, al norte de Quito, donde se marca la línea ecuatorial.',
                image: '../assets/mitad_del_mundo.jpg',
              ),
              TouristPlace(
                name: 'Islas Galápagos',
                location: 'Galápagos, Ecuador',
                description: 'Las Islas Galápagos son un archipiélago volcánico en el océano Pacífico, conocido por su diversidad de especies animales únicas.',
                image: '../assets/isla_galapagos.jpg',
              ),
              TouristPlace(
                name: 'Baños de Agua Santa',
                location: 'Tungurahua, Ecuador',
                description: 'Baños de Agua Santa es una ciudad en el centro de Ecuador conocida por sus aguas termales, cascadas y actividades de aventura.',
                image:'../assets/Banos.jpeg',
              ),
              TouristPlace(
                name: 'Parque Nacional Cotopaxi',
                location: 'Cotopaxi, Ecuador',
                description: 'El Parque Nacional Cotopaxi es un parque nacional ubicado en Ecuador, famoso por su volcán activo y paisajes impresionantes.',
                image: '../assets/cotopaxi.jpg',
              ),
              TouristPlace(
                name: 'Cuenca',
                location: 'Azuay, Ecuador',
                description: 'Cuenca es una ciudad en el sur de Ecuador conocida por su arquitectura colonial, ríos y cultura vibrante.',
                image: '../assets/Cuenca.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TouristPlace extends StatelessWidget {
  const TouristPlace({
    super.key,
    required this.name,
    required this.location,
    required this.description,
    required this.image,
  });

  final String name;
  final String location;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleSection(
          name: name,
          location: location,
        ),
        ImageSection(image: image),
        ButtonSection(),
        TextSection(description: description),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
