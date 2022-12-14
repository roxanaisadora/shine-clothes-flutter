import 'package:sesion_09/screens/product_model.dart';

class Data {
  static List<ProductModel> generateProducts() {
    return [
      ProductModel(1, "assets/varon5.png", "¡OFERTA!",
          "Pantalon recto\n con cremallera", "men shoes", 99.90),
      ProductModel(
          2, "assets/ropa11.png","¡OFERTA!", "Vestido sudadera/cuello redondo", "men shoes", 137.56),
      ProductModel(
          3, "assets/ropa12.png", "¡OFERTA!", "4 piezas Jersey cuello alto", "men shoes", 155.99),
      ProductModel(
          4, "assets/varon4.png", "¡OFERTA!", "Vestido de manga farol con nudo", "men shoes", 70.99),
      ProductModel(
          5, "assets/ropa14.png", "¡OFERTA!", "Cazadora con estampado floral en contraste", "men shoes", 250),
      ProductModel(
          6, "assets/varon3.png","¡OFERTA!", "Vestido con cinturon y estampado geometrico", "men shoes", 99),
      ProductModel(
          7, "assets/varon1.png", "¡OFERTA!","Top tubo corto", "men shoes", 50.99),
      ProductModel(
          8, "assets/ropa17.png","¡OFERTA!", "Top de tirantes cortos", "men shoes", 212.56),
      ProductModel(
          9, "assets/ropa18.png", "¡OFERTA!", "Vestido tirantes, escote corazon", "men shoes", 180),
      ProductModel(
          10, "assets/ropa19.png", "¡OFERTA!","Top corto de cuello scoop unicolor", "men shoes", 60.5),
      ProductModel(
          11, "assets/varon2.png", "¡OFERTA!", "Men's Shoes", "men shoes", 80.5),
      ProductModel(
          12, "assets/ropa15.png","¡OFERTA!", "Men's Shoes", "men shoes", 200.99),
      ProductModel(
          13, "assets/ropa13.png", "¡OFERTA!", "Men's Shoes", "men shoes", 155.6),
      ProductModel(
          14, "assets/ropa10.png", "¡OFERTA!", "Men's Shoes", "men shoes", 99.99),
    ];
  }

  static List<ProductModel> generateCategories() {
    return [
      ProductModel(1, "assets/img1.png", "", "Men's Shoes",
          "men shoes", 99.56),
      ProductModel(2, "assets/top2.png", "", "Men's Shoes",
          "men shoes", 137.56),
      ProductModel(
          3, "assets/top4.png", "", "Men's Shoes", "men shoes", 99.56),
      ProductModel(
          4, "assets/top1.png", "", "Men's Shoes", "men shoes", 212.56),
      ProductModel(
          4, "assets/top5.png", "", "Men's Shoes", "men shoes", 212.56),
      ProductModel(
          4, "assets/img2.png", "", "Men's Shoes", "men shoes", 212.56),
      ProductModel(
          4, "assets/top3.png", "", "Men's Shoes", "men shoes", 212.56),
      ProductModel(
          4, "assets/img4.png", "", "Men's Shoes", "men shoes", 212.56),
    ];
  }
}
