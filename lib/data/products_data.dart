import 'package:gorouter/models/product.dart';

class ProductData {
  List<Product> productsList = [
    Product(
      id: '1',
      title: 'Product 1',
      description:
          'This is a description for Product 1. It has some additional details about the product features and benefits.',
      price: 19.99,
      imageUrl: 'https://picsum.photos/200/300',
    ),
    Product(
      id: '2',
      title: 'Product 2',
      description:
          'This is a description for Product 2. It includes information about its functionality and usage scenarios.',
      price: 29.99,
      imageUrl: 'https://picsum.photos/200/300',
      isFavorite: true,
    ),
    // Add more products as needed
    Product(
      id: '3',
      title: 'Product 3',
      description:
          'This is a description for Product 3. It highlights the unique features of the product.',
      price: 39.99,
      imageUrl: 'https://picsum.photos/200/300',
    ),
    Product(
      id: '4',
      title: 'Product 4',
      description:
          'This is a description for Product 4. It outlines the benefits of using this product.',
      price: 49.99,
      imageUrl: 'https://picsum.photos/200/300',
    ),
    Product(
      id: '5',
      title: 'Product 5',
      description:
          'This is a description for Product 5. It discusses the target audience and market segment for the product.',
      price: 59.99,
      imageUrl: 'https://picsum.photos/200/300',
      isFavorite: true,
    ),
    Product(
      id: '6',
      title: 'Product 6',
      description:
          'This is a description for Product 6. It provides insights into the design and aesthetics of the product.',
      price: 69.99,
      imageUrl: 'https://picsum.photos/200/300',
    ),
    Product(
      id: '7',
      title: 'Product 7',
      description:
          'This is a description for Product 7. It covers the technical specifications and performance metrics.',
      price: 79.99,
      imageUrl: 'https://picsum.photos/200/300',
    ),
    Product(
      id: '8',
      title: 'Product 8',
      description:
          'This is a description for Product 8. It includes customer testimonials and reviews of the product.',
      price: 89.99,
      imageUrl: 'https://picsum.photos/200/300',
      isFavorite: true,
    ),
    Product(
      id: '9',
      title: 'Product 9',
      description:
          'This is a description for Product 9. It discusses the products compatibility and integration options',
      price: 99.99,
      imageUrl: 'https://picsum.photos/200/300',
    ),
    Product(
      id: '10',
      title: 'Product 10',
      description:
          'This is a description for Product 10. It explains the warranty and support services available for the product.',
      price: 109.99,
      imageUrl: 'https://picsum.photos/200/300',
    ),
  ];
}
