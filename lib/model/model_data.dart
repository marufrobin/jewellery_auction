class ModelData {
  String productName;
  String productImageName;
  String productCategories;
  double price;
  bool isSlected;
  ModelData(this.productName, this.productImageName, this.productCategories,
      this.price, this.isSlected);
  static List<ModelData> modelData() {
    return [
      ModelData("Rigns", "images/1.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/2.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/3.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/4.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/5.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/6.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/7.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/1.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/2.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/3.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/4.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/5.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/6.jpg", "Jewelry", 200, false),
      ModelData("Rigns", "images/7.jpg", "Jewelry", 200, false),
    ];
  }
}
