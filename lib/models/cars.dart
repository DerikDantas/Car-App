class Cars {
  final int id;
  final List<String> modelo;
  final String icon, marca;
  final List<Map> config;
  final List<String> fotosCarro;

  Cars(
      {this.config,
      this.id,
      this.marca,
      this.icon,
      this.modelo,
      this.fotosCarro});
}

List<Cars> cars = [
  Cars(
    id: 1,
    marca: 'Tesla',
    icon: "assets/logos/tesla.png",
    modelo: ["Roadster", "Model S"],
    fotosCarro: [
      "assets/cars/interno/roadster-1.png",
      "assets/cars/interno/roadster-2.png",
      "assets/cars/interno/roadster-3.png"
    ],
    config: [
      {
        "modelo": "Roadster",
        "battery": "200 kWh",
        "zeroCem": "4.2 sec",
        "maxSpeed": "250 Km/h",
        "imageCar": "assets/cars/roadster.png",
      },
      {
        "modelo": "Model S",
        "battery": "100 kWh",
        "zeroCem": "4.4 sec",
        "maxSpeed": "250 Km/h",
        "imageCar": "assets/cars/modelS.png",
      },
    ],
  ),
  Cars(
    id: 2,
    marca: 'BMW',
    icon: "assets/logos/bmw.png",
    modelo: ["BMW 420i", "BMW 320i"],
    fotosCarro: [
      "assets/cars/interno/roadster-1.png",
      "assets/cars/interno/roadster-2.png",
      "assets/cars/interno/roadster-3.png"
    ],
    config: [
      {
        "modelo": "BMW 420i",
        "battery": "150 kWh",
        "zeroCem": "4.0 sec",
        "maxSpeed": "235 Km/h",
        "imageCar": "assets/cars/BMW420i.png"
      },
      {
        "modelo": "BMW 320i",
        "battery": "100 kWh",
        "zeroCem": "3.7 sec",
        "maxSpeed": "220 Km/h",
        "imageCar": "assets/cars/BMW320i.png"
      }
    ],
  ),
  Cars(
    id: 3,
    marca: 'Ferrari',
    icon: "assets/logos/ferrari.png",
    modelo: ["Ferrari 488", "Ferrari F8"],
    fotosCarro: [
      "assets/cars/interno/roadster-1.png",
      "assets/cars/interno/roadster-2.png",
      "assets/cars/interno/roadster-3.png"
    ],
    config: [
      {
        "modelo": "Ferrari 488",
        "battery": "150 kWh",
        "zeroCem": "2.8 sec",
        "maxSpeed": "325 Km/h",
        "imageCar": "assets/cars/ferrari488.png"
      },
      {
        "modelo": "Ferrari F8",
        "battery": "150 kWh",
        "zeroCem": "2.9 sec",
        "maxSpeed": "340 Km/h",
        "imageCar": "assets/cars/ferrarif8.png"
      }
    ],
  ),
  Cars(
    id: 4,
    marca: 'Lamborghini',
    icon: "assets/logos/lamborghini.png",
    modelo: ["AVENTADOR", "HURACAN"],
    fotosCarro: [
      "assets/cars/interno/roadster-1.png",
      "assets/cars/interno/roadster-2.png",
      "assets/cars/interno/roadster-3.png"
    ],
    config: [
      {
        "modelo": "AVENTADOR",
        "battery": "150 kWh",
        "zeroCem": "2.8 sec",
        "maxSpeed": "350 Km/h",
        "imageCar": "assets/cars/aventador.png"
      },
      {
        "modelo": "HURACAN",
        "battery": "200 kWh",
        "zeroCem": "2.9 sec",
        "maxSpeed": "319 Km/h",
        "imageCar": "assets/cars/huracan.png"
      }
    ],
  ),
];
