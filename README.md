
# TrolleyPro

TrolleyPro is a Flutter-based shopping cart application designed for a seamless shopping experience. It integrates with the Fake Store API to fetch products and provides robust state management using the Provider package. Users can browse products, view details, add items to their cart, and manage their purchases effortlessly.


## Features

1. Product Browsing
- Fetch and display products from the Fake Store API.
- Each product includes an image, title, price, and description.
2. Product Details
- View detailed information about a selected product.
- Add the product to the cart directly from the details screen.
3. Shopping Cart
- Add products to the cart.
- Remove products individually or clear the entire cart.
- View the total price of items in the cart.
- Simulate checkout functionality.
4. State Management
- Uses the Provider package for managing cart state across the app.


## Installation

1. Clone the Repository:

```bash
  git clone <repository_url>
  cd trolleypro
```
2. Install Dependencies
```bash
  flutter pub get
```
3. Run the App
```bash
  flutter run
```
## Technologies Used
- Framework: Flutter
- State Management: Provider
- API: Fake Store API
- Persistence: Shared Preferences (optional for state saving)
## How It Works
1. Home Screen:
- Displays a list of products fetched from the Fake Store API.
- Allows navigation to the Cart Screen and Product Details Screen.

2. Product Details Screen:
- Displays detailed information about a selected product.
- Users can add the product to their cart.

3. Cart Screen:
- Displays items added to the cart.
- Users can remove items, clear the cart, and view the total price.
- Includes a simulated "Checkout" functionality.

## Future Enhancements
- Add a persistent storage layer to save cart state across sessions.
- Implement user authentication for a personalized experience.
- Enhance the UI with animations and custom themes.
## Known Limitations
- No backend authentication or persistent user sessions.
- Total cart value is recalculated every time the cart screen is rendered.
## Contributors
Danidu Pramuditha (Developer)

Feel free to fork and contribute to this project! 😊
