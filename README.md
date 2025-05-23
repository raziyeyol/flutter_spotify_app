# Flutterify

**Flutterify** - Spotify API Integration

Flutterify is a Flutter-based application that integrates with the Spotify API to search for albums and artists. It follows clean architecture and uses Dio, Bloc, and Secure Storage for efficient data handling and security.

## 📂 Project Structure

```plaintext
lib/
│── main.dart
│
├── core/
│   ├── di/                # Dependency Injection (GetIt)
│
├── data/
│   ├── models/            # Data Models
│
├── domain/
│   ├── api/
│   │   ├── dio/           # Dio API setup
│   │   ├── models/        # Data Models
│   │   ├── service/       # AuthService
│   ├── repositories/      # Data Repositories
│
├── presentation/
│   ├── cubits/            # Bloc Cubits
│   ├── views/             # UI Screens
│   ├── widgets/           # UI Components
```

## 🚀 Features

- **Spotify API Integration:** Fetch albums and artists from Spotify.
- **Secure Token Storage:** Uses `flutter_secure_storage` for access tokens.
- **State Management:** Uses `flutter_bloc` for efficient app state handling.
- **Dependency Injection:** Uses GetIt for DI.
- **Error Handling:** Implemented in Dio Interceptors.

## 🔧 Run the Application

Run the application using:

```bash
flutter run \
  --dart-define=CLIENT_ID=your_client_id \
  --dart-define=CLIENT_SECRET=your_secret
```

## 🔑 Environment Variables

### iOS

Add API keys in `ios/Config.xcconfig`:

```plaintext
BASE_URL=https://api.spotify.com/v1
CLIENT_ID=your_client_id_here
CLIENT_SECRET=your_client_secret_here
```

### Android

Add them in `android/app/src/main/assets/.env`:

```plaintext
BASE_URL=https://api.spotify.com/v1
CLIENT_ID=your_client_id_here
CLIENT_SECRET=your_client_secret_here
```

## 🛠 Technologies Used

- **Flutter (3.x)**
- **Dio** (Networking & API calls)
- **Bloc** (State Management)
- **GetIt** (Dependency Injection)
- **Flutter Secure Storage** (Token storage)
- **Freezed** (Immutable Data Classes)

---

## Check out more in my Medium article: https://medium.com/@raziyeyol/building-flutterify-a-comprehensive-guide-to-developing-a-spotify-search-app-with-flutter-48e9e6a94d78
