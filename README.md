# Hackathon-Janus-Creaithon-2024
---
```markdown
# ⚡ Designing the Future of Energy
A cross-platform solution for energy monitoring, community energy resource (ERC) management, and sustainability analytics — built during the **CRE-AI-THON** Hackathon organized by Janus Srl.
```
---

## 🚀 Project Overview

This project consists of two integrated components:

1. **iOS App (SwiftUI)** — A mobile application for real-time monitoring and management of household energy consumption and generation.
2. **Streamlit Dashboard** — A web-based analytics platform tailored for both consumers and prosumers, featuring AI-powered forecasting, visual analytics, and community energy resource (ERC) management tools.

---

## 🧠 Key Features

### ✅ iOS App (SwiftUI)
- **Consumption Dashboard** – Visualizes energy usage and generation.
- **Statistics & Reports** – Real-time and historical analytics.
- **Profile Management** – Edit and manage user profiles.
- **Custom Visualizations** – Bezier curves, circular meters, and charts.

### ✅ Streamlit Dashboard
- **Login & Role-Based Access** – For consumers and prosumers.
- **Energy Forecasting** – Powered by Facebook Prophet.
- **ERC Management** – Create, update, and manage ERCs.
- **Chatbot Assistant** – Integrated OpenAI-powered support.
- **Interactive Visualizations** – Line, bar, scatter, heatmaps, and histograms.
- **Sustainability Metrics** – CO₂ tracking and emissions reports.

---
```
## 🧩 Tech Stack

| Layer        | Technologies                             |
|--------------|------------------------------------------|
| Frontend App | SwiftUI (iOS)                            |
| Web App      | Streamlit (Python)                       |
| Visualization| Plotly                                   |
| Forecasting  | Prophet (Time Series Prediction)         |
| AI Assistant | OpenAI API                               |
| DB & Logic   | Pandas, Numpy, Session State (Streamlit) |

---

```

### 🌐 Streamlit Dashboard
```

f.py                  # Main dashboard app
utils.py              # Utility functions
data\_generator.py     # Sample data creation
prophet\_forecast.py   # Forecasting logic
erc\_manager.py        # ERC creation and update functions
chatbot.py            # OpenAI and chatbot logic

````

---

## 🔐 Credentials (for testing)
- **Username:** `manager`
- **Password:** `password`

---

## 🧪 How to Run the Project

### 1. Streamlit Dashboard
```bash
# Install dependencies
pip install -r requirements.txt

# Run the Streamlit dashboard
streamlit run f.py
````

* Open your browser at: [http://localhost:8501](http://localhost:8501)

### 2. iOS App (Xcode)

* Open `ERCManagerApp.xcodeproj` or `.xcworkspace`
* Build and run in Xcode using an iOS simulator or physical device.

---

## 🧠 AI & RAG (Retrieval-Augmented Generation)

The chatbot integrates OpenAI's GPT to provide conversational support. It can be enhanced with RAG by:

1. Ingesting documents (ERC policies, energy trends).
2. Creating embeddings using OpenAI Embedding API.
3. Indexing with a vector DB (e.g., FAISS).
4. Query → Embedding → Similarity Search → Answer.

---

## 🧑‍💻 Team Members

* Venkata Tarun Kumar Mavillapalli
* Lokesh Mamidi
* Priya Madhuri Gattem
* Haidara Sulaiman
* Linar Zinatullin
* Madina Malsagova

Mentored by: **Dr. Flavio Lombardi**

---

## 🏆 Hackathon Info

* 🗓️ Date: July 19, 2024
* 🏢 Venue: Apple Developer Academy, Naples
* 🏅 Organizer: Janus Srl
* 🌍 Theme: Renewable Energy Communities
* 📋 SDG Focus:

  * SDG 7 – Affordable and Clean Energy
  * SDG 9 – Industry, Innovation and Infrastructure
  * SDG 11 – Sustainable Cities and Communities
  * SDG 13 – Climate Action

---

> **Note**: This project was developed during the CRE-AI-THON Hackathon as a prototype and proof of concept. It may require further optimization and production-hardening.

```
