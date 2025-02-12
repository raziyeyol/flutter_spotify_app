# flutterify

Flutterify - Spotify API Integration

Flutterify is a Flutter-based application that integrates with the Spotify API to search for albums and artists. It follows clean architecture and uses Dio, Bloc, and Secure Storage for efficient data handling and security.

📂 Project Structure

lib/
│── main.dart
│
├── core/
│   ├── di/                # Dependency Injection (GetIt)
│   ├── network/           # API and Dio setup
│   ├── storage/           # Secure token storage
│
├── data/
│   ├── models/            # Data Models
│   ├── repositories/      # Data Repositories
│
├── domain/
│   ├── api/
│   │   ├── dio/           # Dio API setup
│   │   ├── service/       # AuthService
│
├── presentation/
│   ├── cubits/            # Bloc Cubits
│   ├── views/             # UI Screens
│   ├── widgets/           # UI Components

🚀 Features

Spotify API Integration: Fetch albums and artists from Spotify

Secure Token Storage: Uses flutter_secure_storage for access tokens

State Management: Uses flutter_bloc for efficient app state handling

Dependency Injection: Uses GetIt for DI

Error Handling: Implemented in Dio Interceptors

🔧 Setup & Installation

1️⃣ Clone the Repository

git clone https://github.com/yourusername/flutterify.git
cd flutterify

2️⃣ Install Dependencies

flutter pub get

4️⃣ Run the Application

flutter run \
  --dart-define=CLIENT_ID=3af8e17840684c5bb3325a5e8b8e808d \
  --dart-define=CLIENT_SECRET=e46b037b7f76416ca7e3ac9676f557f7


🔑 Environment Variables

For iOS, add API keys in ios/Config.xcconfig:

BASE_URL=https://api.spotify.com/v1
CLIENT_ID=your_client_id_here
CLIENT_SECRET=your_client_secret_here

For Android, add them in android/app/src/main/assets/.env:

BASE_URL=https://api.spotify.com/v1
CLIENT_ID=your_client_id_here
CLIENT_SECRET=your_client_secret_here


🛠 Technologies Used

Flutter (3.x)

Dio (Networking & API calls)

Bloc (State Management)

GetIt (Dependency Injection)

Flutter Secure Storage (Token storage)

Freezed (Immutable Data Classes)
