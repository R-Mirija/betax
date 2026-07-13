# BETAX

An intuitive mobile application designed to simplify public transit navigation in Antananarivo, featuring integrated mapping, route planning, and real-time geolocation.

---

### Description
A cross-platform mobile application built with Flutter, powered by a FastAPI backend and a PostgreSQL database. It provides comprehensive listings of bus lines and stops, smart A-to-B route optimization, and geolocation services.

---

### Key Features

* **Interactive Mapping & Geolocation:** Track your position in real time and discover nearby transit stops.
* **Transit Directory:** Comprehensive and structured database mapping Antananarivo's bus lines, local cooperatives, and exact stops.
* **Itinerary Planner:** Advanced A-to-B routing algorithm to calculate the most efficient bus journeys, complete with necessary connections.

---

### Tech Stack

* **Frontend:** Flutter / Dart (Cross-platform mobile development)
* **Backend:** FastAPI / Python (Asynchronous REST API)
* **Database:** PostgreSQL (Relational storage optimized for geospatial and transit network data)

> **Deployment Note:** The backend (FastAPI) and the PostgreSQL database are fully configured and hosted in production on the **Railway** cloud platform. Local backend or database installation is not required to run and test the application client.
---

### Screenshots

<p align="center">
  <img src="screenshots/shot1.jpg" width="25%" />
  <img src="screenshots/shot2.jpg" width="25%" />
  <img src="screenshots/shot3.jpg" width="25%" />
</p>
<p align="center">
  <img src="screenshots/shot4.jpg" width="25%" />
  <img src="screenshots/shot5.jpg" width="25%" />
  <img src="screenshots/shot6.jpg" width="25%" />
</p>

---

### Getting Started

#### Prerequisites
* [Flutter SDK](https://docs.flutter.dev/get-started/install) (Stable channel)
* **For Android deployment:** Android Studio or Android SDK Command-line tools
* **For iOS deployment (macOS only):** Xcode 

---

### Frontend Setup

#### 1. Configure Android Secrets
To enable the map integration, you must append your Google Maps API key to your local environment configuration. 

Open or create `frontend/android/local.properties` and add the following entry:

```properties
MAPS_API_KEYS=AIzaSyAOVYRIgupAurZup5y1PRh8Ismb1A3lLao
```

#### 2. Tap the following commands in the root directory of the project
```bash
cd frontend
flutter pub get
flutter run
