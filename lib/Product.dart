class Product {
  final String name;
  final String description;
  final int price;

  Product(this.name, this.description, this.price);
}
List<Product> getProducts() {
  List<Product> items = <Product>[];

  items.add(
      Product(
          "Pixel",
          "Pixel is the most feature-full phone ever", 800
      )
  );
  items.add(
      Product(
          "Laptop",
          "Laptop is most productive development tool",
          2000
      )
  );
  items.add(
      Product(
          "Tablet",
          "Tablet is the most useful device ever for meeting",
          1500
      )
  );
  items.add(
      Product(
          "Pendrive",
          "Pendrive is useful storage medium",
          100
      )
  );
  items.add(
      Product(
          "Floppy Drive",
          "Floppy drive is useful rescue storage medium",
          20
      )
  );

  return items;
}