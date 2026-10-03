# Flutter Design Patterns & Clean Architecture — Mini Project

A production-grade Flutter and Dart project implementing essential software design patterns, SOLID principles, and Clean Architecture with Dependency Injection (GetIt) and Reactive State Management (BLoC/Cubit).

---

## 🚀 Technologies Used
- **Flutter SDK & Dart** (OOP, Abstract classes, Interfaces)
- **GetIt** (Dependency Injection container)
- **flutter_bloc / Cubit** (State management)
- **Clean Architecture** (Data, Domain, and Presentation layers separation)

---

## 📂 Project Phases & Architecture

### Phase 1 — Builder Design Pattern (User Class)
- **`User`**: Data class representing user attributes (First Name, Last Name, Age, Phone).
- **`UserBuilder`**: Builder class providing setter methods and enforcing required fields (`firstName`, `lastName`) during `build()`.

### Phase 2 — Factory Design Pattern (Shape Factory)
- **`Shape`**: Abstract class with abstract method `revealMe()`.
- **`Circle`, `Rectangle`, `Square`**: Concrete shape implementations with custom print messages.
- **`ShapeFactory`**: Factory class returning the correct shape instance based on type string.

### Phase 3 — Singleton Design Pattern (Database Class)
- **`Database`**: Ensures only a single instance is created across the application using a private constructor and a static `createDatabase()` method.

### Phase 4 — SOLID Principles (Simple Payment System)
- **Single Responsibility Principle (SRP)**: Separated receipt generation (`ReceiptGenerator`) from payment execution.
- **Open/Closed Principle (OCP)**: Abstract payment processor interface (`PaymentProcessor`) allowing new payment types without modifying existing code.
- **Liskov Substitution Principle (LSP)**: `CashPayment` and `CreditPayment` can be substituted seamlessly for `PaymentProcessor`.
- **Interface Segregation Principle (ISP)**: Small, focused interfaces.
- **Dependency Inversion Principle (DIP)**: `PaymentService` depends on abstraction (`PaymentProcessor`) rather than concrete classes.

### Phase 5 — Clean Architecture (Presentation Layer with Dependency Injection & BLoC)
- **Domain Layer**: `ItemEntity`, `ItemRepository` (abstract), `GetItemsUseCase`.
- **Data Layer**: `ItemModel`, `ItemRemoteDataSource` (simulated API), `ItemRepositoryImpl`.
- **Presentation Layer**: `ItemCubit`, `ItemState`, `ItemListScreen`, `ItemCardWidget`.
- **Dependency Injection**: Registered via `GetIt` in `injection_container.dart`.

---

## 🛠️ Getting Started & Running the App

1. **Clone repository**:
   ```bash
   git clone https://github.com/your-username/design_patterns_mini_project.git
   ```
2. **Install dependencies**:
   ```bash
   flutter pub get
   ```
3. **Run tests**:
   ```bash
   flutter test
   ```
4. **Run the app**:
   ```bash
   flutter run
   ```
