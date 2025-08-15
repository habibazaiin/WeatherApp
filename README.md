# 🌤 Weather App (Flutter + BLoC)

A simple and clean weather application built with **Flutter** using **BLoC** state management and the **WeatherAPI** to fetch real-time weather data.

---

## 🚀 Features
- Search for any city and view current weather data.
- Display:
  - City name
  - Last updated time
  - Temperature (current, max, min)
  - Weather condition
  - Weather icon
- Dynamic background gradient that changes based on the weather condition.
- Error handling for failed API calls.
- Clean architecture using Cubit and BLoC pattern.

---

## 🛠 Tech Stack
- **Flutter** (UI Framework)
- **BLoC / Cubit** (State Management)
- **Dio** (HTTP Client)
- **WeatherAPI** (Weather Data Provider)

---

## 📂 Project Structure
lib/
│
├── cubits/
│ └── get_weather_cubit/ # Cubit + States for weather fetching
│
├── models/
│ └── weather_model.dart # Weather data model
│
├── services/
│ └── weather_service.dart # API service
│
├── views/
│ ├── home_view.dart # Main home screen
│ └── search_view.dart # Search city screen
│
├── widgets/
│ ├── no_weather_body.dart # UI for initial state
│ └── weather_info_body.dart # UI for loaded weather state
│
└── main.dart # App entry point + Theme

---

🎨 Theming

Background gradient changes from top color (based on weather condition) to white at the bottom.

AppBar color adapts to current weather.

Default color is blue if no weather is loaded.

📸 Screenshots
<img width="576" height="1280" alt="image" src="https://github.com/user-attachments/assets/42395780-5697-4c29-b1ac-fbc85a49955c" />

<img width="576" height="1280" alt="image" src="https://github.com/user-attachments/assets/7dba1fc4-d4f8-400f-9c20-d17f3aed618b" />

<img width="576" height="1280" alt="image" src="https://github.com/user-attachments/assets/4a72bfce-2ca1-4deb-b921-fff601c1e483" />

<img width="576" height="1280" alt="image" src="https://github.com/user-attachments/assets/95e3c581-daad-4e0b-a485-171f4dd277ba" />

