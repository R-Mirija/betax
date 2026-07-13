# 🚌 BETAX

**Find the perfect bus itinerary anywhere in Antananarivo, featuring integrated mapping and real-time geolocation.**

---

## 📝 Short Description
A mobile application built with Flutter, FastAPI, and PostgreSQL to navigate Antananarivo's bus network easily. Features comprehensive line/stop listings, geolocation, and smart A-to-B route planning.

---

## 🚀 Overview

Navigating public transport in Antananarivo can be challenging. This project provides a seamless solution for both residents and visitors to plan their journeys across the capital. By combining an intuitive mobile interface with a robust backend, users can map out their trips from Point A to Point B efficiently.

## ✨ Features

* 🗺️ **Integrated Map & Geolocation:** View your real-time location and discover nearby bus stops instantly.
* 🚌 **Bus Lines & Stops Directory:** A complete, organized database of all Antananarivo bus lines, cooperatives, and their exact stops.
* 📍 **A-to-B Route Planner:** Enter your start and end points to get the optimal bus itinerary, including connections if required.

## 🛠️ Tech Stack

* **Frontend:** Flutter (Dart) — For a smooth, cross-platform mobile experience.
* **Backend:** FastAPI (Python) — High-performance, asynchronous REST API.
* **Database:** PostgreSQL — Relational database to store complex geospatial data, routes, and stops efficiently.

> 🌐 **Architectural Note:** The backend (FastAPI) and the PostgreSQL database (`betax`) are already fully configured and deployed in production on the **Railway** platform. No local installation of the server or the database is required to run the application.

## 📸 Screenshots

*(Add screenshots or a GIF of your app here to make your repository stand out!)*

---

## ⚙️ Getting Started

### Prerequisites
* [Flutter SDK](https://docs.flutter.dev/get-started/install)
* **Android Setup:** Android Studio or Android SDK Command-line tools (for Android emulator/devices)
* **iOS Setup (Mac only):** Xcode (for iOS simulator/devices)

---

### Frontend Setup

#### 1. Configure Android Secrets
Before building the app, you need to add the Google Maps API key to your local Android configuration. 

Open the file `frontend/android/local.properties` (create it if it doesn't exist) and add the following line:

```properties
MAPS_API_KEYS=AIzaSyAOVYRIgupAurZup5y1PRh8Ismb1A3lLao
```

#### 2. Tap these commands in the root directory of the project
```bash
cd frontend
flutter pub get
flutter run
