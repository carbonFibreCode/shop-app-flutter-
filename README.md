# Shop App - A Simple Flutter E-commerce Demo 🛍️

Hey everyone! 👋 This is my humble attempt at building a basic e-commerce shop app using Flutter. As a 3rd-year engineering student, I've been trying to get my hands dirty with app development, and Flutter seemed like a cool place to start. This project is a pretty standard demo of listing products, viewing details, and managing a cart.

## About the App 🚀

This "Shop App" is designed to showcase fundamental Flutter concepts. Think of it as a barebones online shoe store (because, why not? Everyone needs shoes!). It lets users browse through a catalog, check out product details, add items to a shopping cart, and even remove them. It's built with responsiveness in mind, so it should look decent on various screen sizes.

## Features Implemented ✨

Here’s a quick rundown of what this app can do:

*   **Product Listing**:
    *   Displays a list of products with their names, prices, and images.
    *   Includes a basic search bar (though it doesn't filter, it's there for UI practice!).
    *   **Filtering**: You can filter products by brand (Adidas, Nike, Bata) or view all. Super handy!
    *   **Responsive Layout**: The product list intelligently switches between a single-column layout (for smaller screens/phones) and a two-column grid (for wider screens/tablets).
*   **Product Details Page**:
    *   Clicking on any product takes you to a detailed view.
    *   Shows a larger image, product name, and price.
    *   **Size Selection**: Users can select a specific size for the product before adding it to the cart. If no size is selected, it throws a small `SnackBar` warning.
*   **Shopping Cart Functionality**:
    *   **Add to Cart**: Products, along with their selected size, can be added to the cart from the details page.
    *   **View Cart**: A dedicated cart page displays all the items currently in your cart.
    *   **Remove from Cart**: You can easily remove items from the cart, with a confirmation dialog to prevent accidental removals (safety first!).
*   **Intuitive Navigation**:
    *   A clean bottom navigation bar makes it easy to switch between the product list and the shopping cart.

## Tech Stack 🛠️

This project is purely built on:

*   **Flutter**: The primary framework for cross-platform app development.
*   **Dart**: The programming language for Flutter.
*   **Provider**: For state management throughout the app, especially for handling the cart state. It makes managing the cart super efficient and clean!

## How to Run This Locally (For fellow enthusiasts) 🏃‍♂️

If you want to clone this and play around with it, here's how:

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/carbonFibreCode/shop-app-flutter-.git
    ```
2.  **Navigate into the project directory**:
    ```bash
    cd shop-app-flutter
    ```
3.  **Get Flutter packages**:
    ```bash
    flutter pub get
    ```
4.  **Run the app**:
    ```bash
    flutter run
    ```
    This should launch the app on your connected device or emulator.

## Data Source 💾

For simplicity, all product data is currently hardcoded in `globalvariables.dart` [1]. It's a simple list of `Map` objects, each representing a product. This means you don't need a backend or a database to run this demo.

A quick peek at the dummy data structure:
```dart
final products = [
  {
    'id': '0',
    'title': 'Men\'s Nike Shoes',
    'price': 44.52,
    'imageUrl': 'assets/images/shoes_1.png',
    'company': 'Nike',
    'sizes': [9, 10, 11, 12],
  },
  // ... more products
];
```

## What I Learned (or tried to learn!) 🤔

*   Building responsive UIs in Flutter using `LayoutBuilder` and `MediaQuery`.
*   Effective state management with the `provider` package for a smoother user experience.
*   Handling user interactions and navigation flow.
*   Basic widget composition and creating reusable components (like `ProductCard` [2]).
*   Managing `List` data and displaying it using `ListView.builder` and `GridView.builder`.

## Future Enhancements (Ideas for v2.0) 💡

Definitely planning to add more features as I learn. Some immediate ideas are:

*   Implement actual search filtering functionality.
*   Add a quantity selector for cart items.
*   Persist cart data (maybe using `shared_preferences` or a local database).
*   Add user authentication.
*   Integrate with a real API for product data.
*   Proper error handling and loading states.

