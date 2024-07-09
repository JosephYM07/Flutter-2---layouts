# Flutter Tourist Places App

Esta aplicación Flutter muestra 5 lugares turísticos de Ecuador. Cada lugar incluye un nombre, ubicación, descripción e imagen representativa.

## Contenidos

- [Descripción del Proyecto](#descripción-del-proyecto)
- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Uso](#uso)
- [Lugares Turísticos](#lugares-turísticos)
- [Capturas de Pantalla](#capturas-de-pantalla)
- [Licencia](#licencia)

## Descripción del Proyecto

Esta aplicación Flutter está diseñada para demostrar el uso de diferentes widgets y la estructuración de una interfaz de usuario que presenta información detallada sobre lugares turísticos. Se utiliza `SingleChildScrollView` para permitir el desplazamiento vertical y se combinan varios widgets personalizados para mostrar los detalles de cada lugar.

## Requisitos

- Flutter SDK: [Instalación de Flutter](https://flutter.dev/docs/get-started/install)
- Un editor de texto como Visual Studio Code o Android Studio.

## Instalación

1. Clona el repositorio:
    ```bash
    git clone https://github.com/JosephYM07/Flutter-2---layouts.git
    
    ```

2. Asegúrate de tener Flutter instalado y configurado en tu sistema:
    ```bash
    flutter doctor
    ```

3. Instala las dependencias:
    ```bash
    flutter pub get
    ```

4. Asegúrate de que las imágenes están en la carpeta `assets` y configura el `pubspec.yaml` correctamente:
    ```yaml
    flutter:
      assets:
        - assets/mitad_del_mundo.jpg
        - assets/islas_galapagos.jpg
        - assets/banos_agua_santa.jpg
        - assets/parque_nacional_cotopaxi.jpg
        - assets/cuenca.jpg
    ```

5. Corre la aplicación en un emulador o dispositivo físico:
    ```bash
    flutter run
    ```

## Estructura del Proyecto

El proyecto está organizado de la siguiente manera:
flutter-tourist-places/
├── assets/
│ ├── mitad_del_mundo.jpg
│ ├── islas_galapagos.jpg
│ ├── banos_agua_santa.jpg
│ ├── parque_nacional_cotopaxi.jpg
│ └── cuenca.jpg
├── lib/
│ ├── main.dart
├── pubspec.yaml
└── README.md

